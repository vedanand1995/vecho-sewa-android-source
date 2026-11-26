.class public Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "HeadToToeScreeningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APGAR_QUESTION_SCREEN:Ljava/lang/String; = "apgarQuestionScreen"

.field private static final CHILD_BODY_MEASUREMENT_SCREEN:Ljava/lang/String; = "childBodyMeasurementScreen"

.field private static final CHILD_NAME:Ljava/lang/String; = "child_name"

.field private static final COMMON_DEFECTS_SCREEN_1:Ljava/lang/String; = "commonDefectsScreen1"

.field private static final COMMON_DEFECTS_SCREEN_2:Ljava/lang/String; = "commonDefectsScreen2"

.field private static final DEFECT_NAME:Ljava/lang/String; = "defect_name"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final DISEASE_SELECTION_SCREEN:Ljava/lang/String; = "diseaseSelectionScreen"

.field private static final FAMILY_ID_KEY:Ljava/lang/String; = "familyId"

.field private static final FATHER_NAME:Ljava/lang/String; = "father_name"

.field private static final HEALTH_INFRASTRUCTURE_SCREEN:Ljava/lang/String; = "healthInfrastructureScreen"

.field private static final MEMBERS_KEY:Ljava/lang/String; = "members"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SEARCH_SCREEN:Ljava/lang/String; = "memberSearchScreen"

.field private static final MOTHER_NAME:Ljava/lang/String; = "mother_name"

.field private static final NULL_QUERY_RESPONSE:Ljava/lang/String; = "##### Query Response is null"

.field private static final RADIOBUTTON_ID_CHILD:I = 0x65

.field private static final RADIOBUTTON_ID_FAMILY:I = 0x66

.field private static final RADIOBUTTON_ID_HEALTH_INFRA:I = 0x68

.field private static final RADIOBUTTON_ID_MOTHER:I = 0x67

.field private static final RADIOBUTTON_ID_NO:I = 0x2

.field private static final RADIOBUTTON_ID_NOT_KNOWN:I = 0x3

.field private static final RADIOBUTTON_ID_YES:I = 0x1

.field private static final REFERRAL_CONFORMATION_SCREEN:Ljava/lang/String; = "referralConformationScreen"

.field private static final SCREENING_COMPLETION_SCREEN:Ljava/lang/String; = "screeningCompletionScreen"

.field private static final SCREENING_CONFIRMATION_SCREEN:Ljava/lang/String; = "screeningConformationScreen"

.field private static final SCREENING_SCREEN:Ljava/lang/String; = "screeningScreen"

.field private static final SELECTED_DEFECT_LIST_SCREEN:Ljava/lang/String; = "selected_defectListScreen"

.field private static final STABILIZATION_INFO_SCREEN:Ljava/lang/String; = "stabilizationInfoScreen"


# instance fields
.field private apgar1MinRadioGroup:Landroid/widget/RadioGroup;

.field private apgar5MinRadioGroup:Landroid/widget/RadioGroup;

.field private asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

.field private backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private bodyPart:Ljava/lang/String;

.field private childBackBodyLayout:Landroid/widget/RelativeLayout;

.field private childBodyLayout:Landroid/widget/LinearLayout;

.field private childEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private childFrontBodyLayout:Landroid/widget/RelativeLayout;

.field private defects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private familyDataBean:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private graspReflexRadioGroup:Landroid/widget/RadioGroup;

.field private headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

.field private healthInfraComponent:Landroid/widget/LinearLayout;

.field private healthInfraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private healthInfraOptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

.field private heightText:Lcom/google/android/material/textfield/TextInputLayout;

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private infraSelectionLayout:Landroid/widget/LinearLayout;

.field private infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

.field private isFromHealthInfra:Ljava/lang/Boolean;

.field private isReferralRequired:Z

.field private isSearchByHealthInfra:Z

.field private memberDataBean:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private memberDetailsLayout:Landroid/widget/LinearLayout;

.field private moroReflexRadioGroup:Landroid/widget/RadioGroup;

.field private motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private plantarReflexRadioGroup:Landroid/widget/RadioGroup;

.field private referralConformationRadioGroup:Landroid/widget/RadioGroup;

.field private rgListener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private rgListener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private rootReflexRadioGroup:Landroid/widget/RadioGroup;

.field private screen:Ljava/lang/String;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private searchButton:Landroid/widget/Button;

.field private searchSelectionRadioGroup:Landroid/widget/RadioGroup;

.field private selectedDefect:I

.field private selectedDefects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMemberIndex:I

.field private selectedRbId:Ljava/lang/Integer;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private stepReflexRadioGroup:Landroid/widget/RadioGroup;

.field private suckingReflexRadioGroup:Landroid/widget/RadioGroup;

.field private tmpRadioButton:Landroid/widget/RadioButton;

.field private toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

.field private visibleDefectsPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 128
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    const/4 v1, -0x1

    .line 183
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedMemberIndex:I

    .line 188
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraOptions:Ljava/util/LinkedHashMap;

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    .line 192
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 193
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method private addRadioButtonsYesAndNoToGroup(Landroid/widget/RadioGroup;)V
    .locals 2

    .line 900
    const-string v0, "Yes"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 901
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 902
    const-string v0, "No"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 903
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V
    .locals 0

    .line 1186
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 1187
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkApgarScreenValidation()Z
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar1MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for APGAR 1 Min"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar5MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for APGAR 5 Min"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkBodyMeasurementScreenValidation()Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x28

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 376
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x46

    if-le v0, v2, :cond_1

    goto :goto_2

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 387
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter head circumference between 20 and 50 cms"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 382
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter head circumference of the child"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 377
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter height between 40 and 70 cms"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 371
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter height of the child"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private checkCommonDefectsScreen1Validation()Z
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Tone of baby"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->moroReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Moro reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->stepReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Step reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->plantarReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Plantar reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkCommonDefectsScreen2Validation()Z
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rootReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Root reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Asymmetrical Tonic"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->suckingReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 440
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Sucking reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->graspReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Please select value for Grasp reflex"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkForReferralRequirement()Z
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar1MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar5MinRadioGroup:Landroid/widget/RadioGroup;

    .line 453
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    .line 454
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->moroReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 455
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->stepReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 456
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->plantarReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 457
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rootReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 458
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

    .line 459
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->suckingReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 460
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->graspReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 461
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private clearMemberDetailsLayout()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 715
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 716
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private createFamilyEditText()V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const/16 v1, 0x16

    const/16 v2, 0x1001

    const-string v3, "Family ID"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v1, 0x8

    .line 632
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/component/listeners/FamilyIdTextWatcher;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private createMemberEditText(Ljava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const/16 v1, 0xc

    const/16 v2, 0x1001

    const/16 v3, 0x67

    invoke-static {v0, p1, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/16 v0, 0x8

    .line 655
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 656
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/component/listeners/MemberIdTextWatcher;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-object p1
.end method

.method private createSearchButton()V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "Search"

    invoke-static {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->searchButton:Landroid/widget/Button;

    .line 664
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createSearchSelectionRadioGroup()V
    .locals 8

    .line 530
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    .line 531
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 532
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 533
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {v4, v2, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 534
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 535
    const-string v5, "Family Id"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x66

    invoke-static {p0, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v5

    .line 536
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 537
    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 538
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    .line 540
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 542
    const-string v5, "Child Id"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-static {p0, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v5

    .line 543
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 546
    new-instance v5, Landroid/widget/RadioGroup;

    invoke-direct {v5, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 547
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {v6, v2, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 549
    const-string v4, "Mother Id"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x67

    invoke-static {p0, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    .line 550
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 552
    const-string v4, "Search by Health Infrastructure"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x68

    invoke-static {p0, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    .line 553
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    .line 554
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setMaxLines(I)V

    .line 555
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 557
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;Landroid/widget/RadioGroup;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 567
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;Landroid/widget/RadioGroup;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 577
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 578
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v5, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 579
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showNotOnlineMessage(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showProcessDialog()V

    .line 238
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 239
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 240
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    .line 244
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addSearchScreen()V

    return-void
.end method

.method private initializeApgarRadioGroup()Landroid/widget/RadioGroup;
    .locals 3

    .line 877
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 879
    const-string v1, "0-3"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 881
    const-string v1, "4-7"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 882
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 883
    const-string v1, "7+"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 884
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private initializeQuestionView()V
    .locals 5

    .line 844
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeApgarRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar1MinRadioGroup:Landroid/widget/RadioGroup;

    .line 845
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeApgarRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar5MinRadioGroup:Landroid/widget/RadioGroup;

    .line 847
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "Child Height"

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 849
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "Head Circumference"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 851
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    .line 852
    const-string v0, "Hypertonia"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 853
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 854
    const-string v0, "Hypotonia"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 855
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 856
    const-string v0, "Normal"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 857
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 859
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->moroReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 860
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->stepReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 861
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->plantarReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 862
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rootReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 863
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

    .line 864
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->suckingReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 865
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->graspReflexRadioGroup:Landroid/widget/RadioGroup;

    .line 867
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    .line 868
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addRadioButtonsYesAndNoToGroup(Landroid/widget/RadioGroup;)V

    .line 870
    new-instance v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 871
    const-string v1, "T"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setIsmandatory(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please search and select Health Infrastructure"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setMemberDetailsView()V

    return-void
.end method

.method private initializeRadioGroup()Landroid/widget/RadioGroup;
    .locals 3

    .line 890
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 892
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addRadioButtonsYesAndNoToGroup(Landroid/widget/RadioGroup;)V

    .line 893
    const-string v1, "Not Known"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->tmpRadioButton:Landroid/widget/RadioButton;

    .line 894
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$addDefectDescriptionPopUp$13(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1371
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic lambda$addDefectDescriptionPopUp$14(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x11

    const/4 v0, 0x0

    .line 1376
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic lambda$addDefectDescriptionPopUp$15(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x11

    const/4 v0, 0x0

    .line 1379
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private setEditTextVisibility()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 586
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    .line 587
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 592
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    .line 593
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    .line 598
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    .line 599
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    .line 605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setGps()V
    .locals 1

    .line 206
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setPrimaryButton(I)V
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->toggle_button_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 1133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->toggle_button_text_color_selector:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 1137
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->frontBody:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_0

    .line 1138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBackBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1139
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childFrontBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 1142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1143
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->backBody:I

    if-ne p1, v0, :cond_1

    .line 1144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBackBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childFrontBodyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 1148
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setScreeningScreen()V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1110
    const-string v0, "screeningScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBodyLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->child_body_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBodyLayout:Landroid/widget/LinearLayout;

    .line 1114
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bodyPartViewSelector:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 1115
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 1116
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->frontBody:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->frontPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    .line 1117
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->backBody:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->backPartSelectionButton:Lcom/google/android/material/button/MaterialButton;

    .line 1119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBodyLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->frontBodyLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childFrontBodyLayout:Landroid/widget/RelativeLayout;

    .line 1120
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 1122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBodyLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->backBodyLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBackBodyLayout:Landroid/widget/RelativeLayout;

    .line 1123
    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 1124
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->frontBody:I

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setPrimaryButton(I)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showNotOnlineMessage(Z)V
    .locals 5

    .line 1615
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;Z)V

    .line 1621
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 1622
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1624
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 1625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1338
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1340
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->defect_pop_window:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1341
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->toolbar_title:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 1342
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$style;->ToolbarTitle:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1343
    const-string v4, "Head To Toe Screening"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v4, "child_name"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1346
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->toolbar_subtitle:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1348
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1349
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$style;->ToolbarSubtitle:I

    invoke-virtual {v4, v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 1352
    invoke-virtual {v4, v3}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1355
    :goto_0
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->defect_title:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1356
    const-string v4, "defect_name"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->defect_description:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1359
    const-string v4, "description"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->defect_image:I

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 1363
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1365
    :cond_1
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->no_image_available:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1368
    :goto_1
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->defect_close_button:I

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 1369
    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1370
    const-string p3, "Back"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    new-instance p3, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1375
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->defect_name:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1376
    new-instance p3, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, v0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1377
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->defect_info:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1378
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1379
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addEventHandler(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 1154
    const-string v0, "GENITALIA"

    if-eqz p1, :cond_0

    .line 1155
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->head:I

    const-string v1, "HEAD"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1156
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->foreHead:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1157
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftEye:I

    const-string v1, "EYES"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1158
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightEye:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1159
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftEar:I

    const-string v1, "EARS"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1160
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightEar:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1161
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftCheek:I

    const-string v1, "CHEEKS"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1162
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightCheek:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1163
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->nose:I

    const-string v1, "NOSE"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1164
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->mouth:I

    const-string v1, "MOUTH"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1165
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->neck:I

    const-string v1, "NECK"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1166
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftHand:I

    const-string v1, "HAND"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1167
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftPalm:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1168
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightHand:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1169
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightPalm:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1170
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->chest:I

    const-string v1, "CHEST"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1171
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->stomach:I

    const-string v1, "STOMACH"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1172
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftThigh:I

    const-string v1, "LEG"

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1173
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftFibula:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1174
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->leftFoot:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1175
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightThigh:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1176
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightFibula:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1177
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->rightFoot:I

    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1178
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->genitaliaFront:I

    invoke-direct {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1180
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->back:I

    const-string v1, "BACK"

    invoke-direct {p0, p2, p1, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    .line 1181
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->genitaliaBack:I

    invoke-direct {p0, p2, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bindEventListenerOnClick(Landroid/widget/RelativeLayout;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addSearchScreen()V
    .locals 4

    .line 484
    const-string v0, "memberSearchScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Search for a Member"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createSearchSelectionRadioGroup()V

    .line 495
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createFamilyEditText()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 500
    const-string v0, "Child Id"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createMemberEditText(Ljava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    .line 504
    const-string v0, "Mother Id"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createMemberEditText(Ljava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 510
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 511
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveAssignedHealthInfra()V

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setEditTextVisibility()V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->searchButton:Landroid/widget/Button;

    if-nez v0, :cond_4

    .line 522
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createSearchButton()V

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->searchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public createHealthInfraSpinner()V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraOptions:Ljava/util/LinkedHashMap;

    .line 642
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 643
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 644
    const-string v3, "healthinfraname"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 645
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 648
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraOptions:Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public generateToaster(Ljava/lang/String;)V
    .locals 0

    .line 1635
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getFamilyDataBeanFromServer(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 757
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isFromHealthInfra:Ljava/lang/Boolean;

    .line 758
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 759
    const-string v3, "family_id"

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v3, "userId"

    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "mob_rbsk_child_search_by_family_id"

    .line 763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v5, v1, v2, v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 762
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 767
    const-string v3, "familyId"

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    const-string v2, "members"

    invoke-virtual {p1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 770
    :cond_0
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showFamilyDetails()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 774
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    .line 775
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getImageFromServer(Ljava/util/Map;Landroid/widget/LinearLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1303
    :try_start_0
    const-string v1, "defect_image"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1305
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    .line 1306
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "getfileById?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1309
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1310
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1312
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1314
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-byte v3, v3

    .line 1315
    invoke-virtual {v1, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 1318
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1319
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    .line 1320
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1321
    invoke-virtual {p0, p2, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setImage(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V

    .line 1322
    invoke-virtual {p0, p2, v1, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    goto :goto_1

    .line 1324
    :cond_1
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefaultImage(Landroid/widget/LinearLayout;)V

    .line 1325
    invoke-virtual {p0, p2, v0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefaultImage(Landroid/widget/LinearLayout;)V

    .line 1332
    invoke-virtual {p0, p2, v0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 722
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isFromHealthInfra:Ljava/lang/Boolean;

    .line 723
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 724
    const-string v2, "userId"

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 727
    const-string v2, "infraId"

    invoke-virtual {v1, v2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x1

    .line 728
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isFromHealthInfra:Ljava/lang/Boolean;

    :cond_0
    if-eqz p1, :cond_1

    .line 732
    const-string p3, "health_id"

    invoke-virtual {v1, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance p3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    .line 736
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p3, p2, v3, v1, v2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 735
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 737
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 738
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p1

    .line 740
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 741
    const-string p3, "familyId"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    const-string v1, "family_health_id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    const-string p3, "members"

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 744
    :cond_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 745
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "##### Query Response is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showFamilyDetails()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 749
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    .line 750
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getStabilizationInfoForDefects()V
    .locals 6

    const-string v0, "("

    .line 1458
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    const-string v2, "defectIds"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_rbsk_defect_stabilization_info"

    const/4 v5, 0x0

    .line 1463
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v3, v1, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 1462
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1466
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    .line 1467
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewStabilizationInfoForDefects(Ljava/util/List;)V

    goto :goto_1

    .line 1469
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "##### Query Response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method synthetic lambda$bindEventListenerOnClick$8$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1188
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showProcessDialog()V

    .line 1189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    .line 1190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefectSelectionScreen()V

    return-void
.end method

.method synthetic lambda$createSearchButton$3$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 3

    .line 665
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 666
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showNotOnlineMessage(Z)V

    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showProcessDialog()V

    .line 671
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->clearMemberDetailsLayout()V

    .line 672
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x65

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 673
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 674
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->childEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 675
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    const-string v0, "mob_rbsk_child_search_by_member_id"

    invoke-virtual {p0, p1, v0, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 676
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter Child Id"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    goto/16 :goto_3

    .line 681
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 682
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 683
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    goto :goto_1

    .line 688
    :cond_4
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getFamilyDataBeanFromServer(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 685
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter Family Id"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    goto/16 :goto_3

    .line 690
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x67

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 691
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 692
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->motherEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_7

    goto :goto_2

    .line 697
    :cond_7
    const-string v0, "mob_rbsk_child_search_by_mother_id"

    invoke-virtual {p0, p1, v0, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 694
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter Mother Id"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    goto :goto_3

    .line 699
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x68

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    if-eqz p1, :cond_b

    .line 701
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->getAnswerString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 702
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->getAnswerString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mob_rbsk_child_search_by_assigned_health_infra"

    invoke-virtual {p0, v2, v0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getMemberDataBeanFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 704
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a health infrastructure"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method synthetic lambda$createSearchSelectionRadioGroup$1$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x0

    .line 559
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 560
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 561
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 562
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    .line 563
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setEditTextVisibility()V

    .line 564
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->clearMemberDetailsLayout()V

    :cond_0
    return-void
.end method

.method synthetic lambda$createSearchSelectionRadioGroup$2$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    const/4 p2, 0x0

    .line 569
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 570
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 571
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rgListener1:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 572
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedRbId:Ljava/lang/Integer;

    .line 573
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setEditTextVisibility()V

    .line 574
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->clearMemberDetailsLayout()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 1

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 468
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 469
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V

    .line 470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->finish()V

    goto :goto_0

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setDefectSelectionScreen$9$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "No defects found for this body part."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setScreeningConfirmationScreen$5$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 1

    .line 1087
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p1, 0x1

    .line 1088
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->visibleDefectsPresent:Z

    .line 1089
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningScreen()V

    return-void
.end method

.method synthetic lambda$setScreeningConfirmationScreen$6$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 1

    .line 1095
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1096
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->visibleDefectsPresent:Z

    .line 1097
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    if-eqz p1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setScreeningScreen$7$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 1115
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setPrimaryButton(I)V

    return-void
.end method

.method synthetic lambda$showFamilyDetails$4$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 794
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedMemberIndex:I

    return-void
.end method

.method synthetic lambda$showNotOnlineMessage$17$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(ZLandroid/view/View;)V
    .locals 0

    .line 1617
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1619
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showNotOnlineMessage$18$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 1626
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1628
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$storeScreeningDetails$16$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity()V
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "Head To Toe Screening form submitted successfully."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$viewDefectSelectionScreen$10$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefect:I

    const/16 p1, 0x3cc3

    .line 1261
    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1263
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please select defect first to capture image."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$viewDefectSelectionScreen$11$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 1280
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1282
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method synthetic lambda$viewDefectSelectionScreen$12$com-argusoft-sewa-android-app-activity-HeadToToeScreeningActivity(Landroid/view/View;)V
    .locals 0

    .line 1291
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->frontBody:I

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setPrimaryButton(I)V

    .line 1292
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningScreen()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1640
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3cc3

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1644
    const-string p1, "Photo captured"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1646
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1648
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_2

    .line 1650
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1651
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    iget p3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefect:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1655
    :cond_0
    const-string p1, "Fail to take photo"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x6f

    if-ne p1, p2, :cond_2

    .line 1658
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setGps()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 466
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    .line 476
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Head To Toe Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 479
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 252
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showNotOnlineMessage(Z)V

    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_18

    .line 261
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v2, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 262
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "stabilizationInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "memberSearchScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "commonDefectsScreen2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "commonDefectsScreen1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "childBodyMeasurementScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "apgarQuestionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "screeningCompletionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "healthInfrastructureScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "screeningScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "diseaseSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "referralConformationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "selected_defectListScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 333
    :pswitch_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    if-eqz p1, :cond_e

    .line 334
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    goto/16 :goto_3

    .line 336
    :cond_e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    goto/16 :goto_3

    .line 264
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_f

    .line 265
    const-string p1, "Please search and select a member for screening."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 266
    :cond_f
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedMemberIndex:I

    if-eq v0, v3, :cond_12

    .line 268
    const-string v0, "members"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedMemberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 270
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v1, "additional_info"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 272
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 274
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIsHeadToScreeningDone()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 276
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 277
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initializeQuestionView()V

    goto/16 :goto_3

    .line 279
    :cond_11
    const-string p1, "Screening for this member is already done"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 282
    :cond_12
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 309
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->checkCommonDefectsScreen2Validation()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 310
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningConfirmationScreen()V

    goto/16 :goto_3

    .line 303
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->checkCommonDefectsScreen1Validation()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 304
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen2()V

    goto/16 :goto_3

    .line 287
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setChildBodyMeasurementScreen()V

    goto/16 :goto_3

    .line 291
    :pswitch_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->checkBodyMeasurementScreenValidation()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 292
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setApgarQuestionView()V

    goto/16 :goto_3

    .line 297
    :pswitch_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->checkApgarScreenValidation()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 298
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen1()V

    goto/16 :goto_3

    .line 359
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showProcessDialog()V

    .line 360
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->storeScreeningDetails()V

    goto/16 :goto_3

    .line 351
    :pswitch_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_2

    .line 355
    :cond_13
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    goto :goto_3

    .line 352
    :cond_14
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getMandatorymessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 315
    :pswitch_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    if-nez p1, :cond_18

    .line 316
    const-string p1, "Please select a body part to add defect."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 321
    :pswitch_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 322
    const-string p1, "Please select a disease"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :cond_15
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveSelectedDefectDetails()V

    goto :goto_3

    .line 341
    :pswitch_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_16

    .line 342
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v0, "Please Select an option"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 343
    :cond_16
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_17

    .line 344
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewHealthInfrastructureScreen()V

    goto :goto_3

    .line 346
    :cond_17
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    goto :goto_3

    .line 329
    :pswitch_c
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getStabilizationInfoForDefects()V

    :cond_18
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb32be1 -> :sswitch_c
        -0x752b5ec8 -> :sswitch_b
        -0xb531c04 -> :sswitch_a
        -0x5b2b3fe -> :sswitch_9
        0x13fd1c6b -> :sswitch_8
        0x1463c37e -> :sswitch_7
        0x1cc95c9b -> :sswitch_6
        0x30d9ee0a -> :sswitch_5
        0x3eb994d4 -> :sswitch_4
        0x44a6948e -> :sswitch_3
        0x44a6948f -> :sswitch_2
        0x591cfbee -> :sswitch_1
        0x6641c5f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 198
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 200
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setGps()V

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1664
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1665
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 1670
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1671
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "memberDetailsScreen"

    const/4 v4, 0x2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "stabilizationInfoScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "memberSearchScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "commonDefectsScreen2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "commonDefectsScreen1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "childBodyMeasurementScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "apgarQuestionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "screeningConformationScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v2, "screeningCompletionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v2, "healthInfrastructureScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v2, "screeningScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "diseaseSelectionScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_c
    const-string v2, "referralConformationScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_d
    const-string v2, "selected_defectListScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_1
    const-string v2, "Next"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1718
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveSelectedDefectDetails()V

    goto/16 :goto_2

    .line 1673
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_2

    .line 1697
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen1()V

    goto/16 :goto_2

    .line 1693
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setApgarQuestionView()V

    goto/16 :goto_2

    :pswitch_4
    const/4 p1, 0x0

    .line 1677
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1678
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedMemberIndex:I

    .line 1679
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 1680
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    .line 1681
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addSearchScreen()V

    goto :goto_2

    .line 1685
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setMemberDetailsView()V

    goto :goto_2

    .line 1689
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setChildBodyMeasurementScreen()V

    goto :goto_2

    .line 1701
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1702
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setCommonDefectsScreen2()V

    goto :goto_2

    .line 1734
    :pswitch_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    if-eqz p1, :cond_10

    .line 1736
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v4, :cond_f

    .line 1737
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    goto :goto_2

    .line 1739
    :cond_f
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewHealthInfrastructureScreen()V

    goto :goto_2

    .line 1742
    :cond_10
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->visibleDefectsPresent:Z

    if-nez p1, :cond_11

    .line 1743
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningConfirmationScreen()V

    goto :goto_2

    .line 1745
    :cond_11
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getStabilizationInfoForDefects()V

    goto :goto_2

    .line 1730
    :pswitch_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    goto :goto_2

    .line 1706
    :pswitch_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1707
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1708
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningConfirmationScreen()V

    goto :goto_2

    .line 1722
    :pswitch_b
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->visibleDefectsPresent:Z

    if-nez p1, :cond_12

    .line 1723
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningConfirmationScreen()V

    goto :goto_2

    .line 1725
    :cond_12
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getStabilizationInfoForDefects()V

    goto :goto_2

    .line 1714
    :pswitch_c
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningScreen()V

    :goto_2
    return v0

    .line 1666
    :cond_13
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb32be1 -> :sswitch_d
        -0x752b5ec8 -> :sswitch_c
        -0xb531c04 -> :sswitch_b
        -0x5b2b3fe -> :sswitch_a
        0x13fd1c6b -> :sswitch_9
        0x1463c37e -> :sswitch_8
        0x1c621151 -> :sswitch_7
        0x1cc95c9b -> :sswitch_6
        0x30d9ee0a -> :sswitch_5
        0x3eb994d4 -> :sswitch_4
        0x44a6948e -> :sswitch_3
        0x44a6948f -> :sswitch_2
        0x591cfbee -> :sswitch_1
        0x6641c5f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    .line 214
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 219
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->finish()V

    .line 226
    :cond_1
    const-string v0, "Head To Toe Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setTitle(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 228
    const-string v1, "child_name"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSubTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public retrieveAssignedHealthInfra()V
    .locals 6

    .line 615
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 616
    const-string v1, "userId"

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v3, "mob_rbsk_search_by_health_infra"

    const/4 v4, 0x0

    .line 619
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v0, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 618
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraList:Ljava/util/List;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 624
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    .line 625
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->createHealthInfraSpinner()V

    return-void
.end method

.method public retrieveSelectedDefectDetails()V
    .locals 6

    const-string v0, "("

    .line 1396
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->showProcessDialog()V

    const/4 v1, 0x0

    .line 1399
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    const-string v3, "ids"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v4, "mob_rbsk_defect_by_id"

    const/4 v5, 0x0

    .line 1403
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 1402
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    .line 1406
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSelectedDefectsScreen(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1408
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    const-string v0, "Some error occurred. Please try again."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->generateToaster(Ljava/lang/String;)V

    goto :goto_1

    .line 1412
    :cond_1
    const-string v0, "Please select some defects"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->generateToaster(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setApgarQuestionView()V
    .locals 5

    .line 1005
    const-string v0, "apgarQuestionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1008
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "APGAR stands for ACTIVITY, PULSE, GRIMACE, APPEARANCE and RESPIRATION. Use the following diagram to score appropriately."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1011
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->apgar_scoring_system:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1012
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1013
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1015
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "APGAR 1 Min"

    .line 1016
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1015
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar1MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1020
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "APGAR 5 Min"

    .line 1021
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1022
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1023
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar5MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setChildBodyMeasurementScreen()V
    .locals 4

    .line 991
    const-string v0, "childBodyMeasurementScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 994
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Child Height/Length(in cms)"

    .line 995
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 994
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 996
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 998
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Head Circumference(in cms)"

    .line 999
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1000
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCommonDefectsScreen1()V
    .locals 4

    .line 1028
    const-string v0, "commonDefectsScreen1"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1031
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Tone of the Baby:"

    .line 1032
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1031
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1035
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Moro Reflex:"

    .line 1036
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->moroReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Step Reflex:"

    .line 1040
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->stepReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1043
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Plantar Reflex:"

    .line 1044
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1045
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->plantarReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCommonDefectsScreen2()V
    .locals 4

    .line 1050
    const-string v0, "commonDefectsScreen2"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1053
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Root Reflex:"

    .line 1054
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1053
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1055
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rootReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1057
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Asymmetrical Tonic:"

    .line 1058
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Sucking Reflex:"

    .line 1062
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->suckingReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Grasp Reflex:"

    .line 1066
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1067
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->graspReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultImage(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 1390
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->defect_image:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1391
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->no_image_available:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setDefectSelectionScreen()V
    .locals 6

    const-string v0, "\',\'SKIN"

    .line 1196
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1198
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1199
    const-string v2, "bodyPart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v3, "mob_rbsk_defect_list_by_body_part"

    const/4 v4, 0x0

    .line 1202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 1201
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->defects:Ljava/util/List;

    .line 1206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewDefectSelectionScreen()V

    goto :goto_0

    .line 1208
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1209
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImage(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1384
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->defect_image:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1385
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setMemberDetailsView()V
    .locals 9

    .line 908
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 910
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v1, "child_name"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setSubTitle(Ljava/lang/String;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "Member Details"

    .line 916
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 915
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 918
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "Child Id"

    .line 919
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 918
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 920
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v5, "unique_health_id"

    .line 921
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 923
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "Child Name"

    .line 924
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 925
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 926
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 928
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Mother Id"

    .line 929
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 930
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "mother_id"

    .line 931
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 933
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Mother Name"

    .line 934
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 935
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "mother_name"

    .line 936
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Mother\'s Mobile No"

    .line 939
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "mobile_number"

    .line 941
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 943
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Date of birth"

    .line 944
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-static {v4, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 946
    const-string v3, "date_of_birth"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 948
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 951
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    .line 953
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v7, "Age"

    .line 954
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 953
    invoke-static {v4, v4, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 955
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    aget v7, v0, v3

    aget v8, v0, v2

    aget v0, v0, v1

    .line 956
    invoke-static {v7, v8, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v6, "Gender"

    .line 963
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 962
    invoke-static {v4, v4, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 965
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v5, "gender"

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 966
    const-string v5, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    .line 967
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_2
    const/4 v1, -0x1

    goto :goto_3

    :sswitch_0
    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :sswitch_1
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_2
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 978
    :cond_5
    :goto_3
    const-string v0, "Not available"

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    goto :goto_4

    .line 976
    :pswitch_0
    const-string v1, "Transgender"

    goto :goto_4

    .line 970
    :pswitch_1
    const-string v1, "Male"

    goto :goto_4

    .line 973
    :pswitch_2
    const-string v1, "Female"

    .line 980
    :goto_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 982
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "Child Birth Weight"

    .line 983
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 984
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    .line 985
    const-string v6, "birth_weight"

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const-string v5, " Kgs"

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_2
        0x4d -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScreeningCompletionScreen()V
    .locals 3

    .line 1603
    const-string v0, "screeningCompletionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1607
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    .line 1608
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1607
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed Head to Toe screening for the child."

    .line 1611
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1610
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setScreeningConfirmationScreen()V
    .locals 4

    .line 1072
    const-string v0, "screeningConformationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1073
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1074
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->checkForReferralRequirement()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    .line 1076
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "Please examine the Baby carefully and make sure that there are no physical abnormalities present. If you are sure that there are no Visual Defects then press \"No Defects\" else Choose \"Enter Visual Defects\""

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    .line 1077
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1078
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Does the child have visible defects?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1083
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    .line 1084
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1085
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "Enter Visual Defects"

    invoke-static {v1, v3, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 1086
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v3, "No Defects"

    invoke-static {v1, v3, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 1094
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setSelectedDefectsScreen(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1418
    const-string v0, "selected_defectListScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Selected defects for the child"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 1424
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->rbsk_selected_defect_list_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1425
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->defect_name:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1426
    const-string v3, "defect_name"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1428
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    :cond_0
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1434
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 1436
    :goto_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1437
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->defect_image:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 1439
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v5, 0x0

    array-length v3, v3

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1440
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1442
    :cond_2
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->no_image_available:I

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1445
    :goto_2
    const-string v2, "referral_required"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1446
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    .line 1450
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1452
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public showFamilyDetails()V
    .locals 11

    .line 781
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x69

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    .line 784
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 785
    const-string v1, "Family ID"

    .line 786
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "familyId"

    .line 788
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    const-string v1, "Member List"

    .line 791
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    .line 795
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    const-string v4, "members"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    .line 802
    const-string v5, "unique_health_id"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 803
    const-string v6, "child_name"

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 804
    const-string v7, "mother_name"

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 805
    const-string v8, "father_name"

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 808
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Mother : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    const-string v10, "Not available"

    if-eqz v7, :cond_1

    .line 810
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 812
    :cond_1
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :goto_1
    const-string v7, "\nFather : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    .line 815
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 816
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 818
    :cond_2
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :goto_2
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v6, v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v5, "additional_info"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 822
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 823
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v6, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 824
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getIsHeadToScreeningDone()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v7, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setVerified(Z)V

    .line 826
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 830
    :cond_4
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    invoke-static {v3, v0, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 834
    :cond_5
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isSearchByHealthInfra:Z

    if-eqz v0, :cond_6

    .line 835
    const-string v0, "No health facility is assigned or no member found in your assigned health facility"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 837
    :cond_6
    const-string v0, "No member found for given Id."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 840
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public storeScreeningDetails()V
    .locals 6

    .line 1528
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;-><init>()V

    .line 1529
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setToken(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v2, "child_id"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setMemberId(Ljava/lang/Integer;)V

    .line 1531
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "family_id"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setFamilyId(Ljava/lang/Integer;)V

    .line 1532
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "location_id"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setLocationId(Ljava/lang/Integer;)V

    .line 1533
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isFromHealthInfra:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->infraSelectionSpinner:Lcom/argusoft/sewa/android/app/SingleSelectComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/SingleSelectComponent;->getAnswerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setDeliveryInfraId(Ljava/lang/Integer;)V

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->familyDataBean:Ljava/util/LinkedHashMap;

    const-string v3, "delivery_infra_id"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1538
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setDeliveryInfraId(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setDeliveryInfraId(Ljava/lang/Integer;)V

    .line 1543
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setScreeningDate(Ljava/util/Date;)V

    .line 1544
    const-string v1, "TECHO"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setDoneFrom(Ljava/lang/String;)V

    .line 1546
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 1547
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1548
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;-><init>()V

    .line 1549
    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->setDefectId(Ljava/lang/Integer;)V

    .line 1550
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->memberDataBean:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->setMemberId(Ljava/lang/Integer;)V

    .line 1552
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1553
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->images:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;->setPhotoData([B)V

    .line 1556
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->getRbskScreeningDefectDto()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1557
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setRbskScreeningDefectDto(Ljava/util/List;)V

    .line 1560
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->getRbskScreeningDefectDto()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1564
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1565
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->heightText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setLength(Ljava/lang/Integer;)V

    .line 1567
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1568
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->headCircumferenceText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setHeadCircumference(Ljava/lang/Integer;)V

    .line 1570
    :cond_6
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->APGARS:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar1MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setApgar1(Ljava/lang/String;)V

    .line 1571
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->APGARS:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->apgar5MinRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setApgar5(Ljava/lang/String;)V

    .line 1572
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->TONE_OF_BODY_DEFECT_VALUE:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->toneOfTheBabyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setBabyTone(Ljava/lang/String;)V

    .line 1573
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->moroReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setMoroReflex(Ljava/lang/String;)V

    .line 1574
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->stepReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setStepReflex(Ljava/lang/String;)V

    .line 1575
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->plantarReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setPlantarReflex(Ljava/lang/String;)V

    .line 1576
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->rootReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setRootReflex(Ljava/lang/String;)V

    .line 1577
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->asymmetricalTonicRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setAssymetricalTonic(Ljava/lang/String;)V

    .line 1578
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->suckingReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setSuckingReflex(Ljava/lang/String;)V

    .line 1579
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->COMMON_DEFECT_SELECTION_VALUES:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->graspReflexRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setGraspReflex(Ljava/lang/String;)V

    .line 1581
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->visibleDefectsPresent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setVisibleDefects(Ljava/lang/Boolean;)V

    .line 1583
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 1584
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setReferralDone(Ljava/lang/Boolean;)V

    .line 1585
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setReferralPlace(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1587
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->setReferralDone(Ljava/lang/Boolean;)V

    .line 1591
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->storeRbskScreeningDetails(Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;)Ljava/lang/String;

    .line 1592
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1593
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->navigateToHomeScreen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1595
    :catch_0
    const-string v0, "Some error occurred. Please retry after sometime."

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->generateToaster(Ljava/lang/String;)V

    .line 1598
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public viewDefectSelectionScreen()V
    .locals 10

    .line 1220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1221
    const-string v0, "diseaseSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x96

    const/16 v4, 0x14

    .line 1224
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1225
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v3, v1, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x1

    .line 1226
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1227
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->BODY_PART_IMAGE_IDS:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1229
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1231
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/RbskConstants;->BODY_PART_FULL_NAME:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyPart:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Defects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 1234
    invoke-virtual {v0, v4, v4, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1235
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->defects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 1239
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->rbsk_defect_list_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1241
    const-string v6, "id"

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1243
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    .line 1245
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->defect_name:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1246
    const-string v9, "defect_name"

    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->defect_desc:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1249
    const-string v9, "description"

    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    const-string v8, "photo_required"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1252
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1253
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->capture_pic:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1254
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1255
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLabelFor(I)V

    .line 1257
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda14;

    invoke-direct {v9, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    :cond_2
    const-string v8, "defect_image"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1269
    invoke-virtual {p0, v3, v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->getImageFromServer(Ljava/util/Map;Landroid/widget/LinearLayout;)V

    goto :goto_1

    .line 1271
    :cond_3
    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setDefaultImage(Landroid/widget/LinearLayout;)V

    .line 1272
    invoke-virtual {p0, v5, v7, v3}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->addDefectDescriptionPopUp(Landroid/widget/LinearLayout;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 1275
    :goto_1
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->defect_checkbox:I

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1276
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setId(I)V

    .line 1277
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->selectedDefects:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1278
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1285
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1289
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v2, "More defects"

    invoke-static {v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 1290
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public viewHealthInfrastructureScreen()V
    .locals 3

    .line 1518
    const-string v0, "healthInfrastructureScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1519
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraComponent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraQueFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v2, "RBSK"

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getHealthInfrastructureComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraComponent:Landroid/widget/LinearLayout;

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->healthInfraComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public viewReferralConformationScreen()V
    .locals 3

    .line 1510
    const-string v0, "referralConformationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1511
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Is beneficiary ready for referral?"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->referralConformationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public viewStabilizationInfoForDefects(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1479
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1480
    const-string v0, "stabilizationInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    .line 1481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1483
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    const-string v2, "Instructions to stabilize defects:"

    .line 1484
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1483
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1487
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 1488
    const-string v2, "description"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1490
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v5

    goto :goto_0

    .line 1495
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    const-string v0, "screeningCompletionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->screen:Ljava/lang/String;

    const-string v0, "referralConformationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1498
    :cond_2
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->isReferralRequired:Z

    if-eqz p1, :cond_3

    .line 1499
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->viewReferralConformationScreen()V

    goto :goto_2

    .line 1501
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->setScreeningCompletionScreen()V

    goto :goto_2

    .line 1496
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->retrieveSelectedDefectDetails()V

    .line 1505
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity;->hideProcessDialog()V

    return-void
.end method
