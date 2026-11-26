.class public Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NDHMOfflineHealthIdCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADD_DETAILS:Ljava/lang/String; = "add_details"

.field private static final CONFIRMATION_MESSAGE:Ljava/lang/String; = "CONFIRMATION_MESSAGE"

.field private static final OFFLINE_MESSAGE:Ljava/lang/String; = "OFFLINE_MESSAGE"

.field private static final SDF:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "NDHMHealthIdCreation"

.field private static final displaySDF:Ljava/text/SimpleDateFormat;


# instance fields
.field aadhaarDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private abhaConsentCheckboxModel:Ljava/lang/String;

.field private accountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private detailsLayout:Landroid/widget/LinearLayout;

.field private dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private dobDP:Landroid/widget/LinearLayout;

.field private genderRG:Landroid/widget/RadioGroup;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberId:Ljava/lang/Integer;

.field private mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nameTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private nextButton:Landroid/widget/Button;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private screen:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field yearOnlyCheckBox:Landroid/widget/CheckBox;

.field yearSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->SDF:Ljava/text/SimpleDateFormat;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private aadhaarValidation()Z
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 474
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/ValidationFormulaUtil;->aadhaarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter aadhaar number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private dobValidation()Z
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-gtz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please select year of birth"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter birth date"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private genderValidation()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter gender"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 137
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 138
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    .line 145
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setComponent()V

    return-void
.end method

.method private isValidContactNumber(Ljava/lang/String;)Z
    .locals 1

    .line 469
    const-string v0, "^[9876]{1}[0-9]{9}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private mobileNumberValidation()Z
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 489
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 493
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Mobile number must contains 10 digit numbers only"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->isValidContactNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter valid mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 490
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private nameValidation()Z
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 527
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 533
    const-string v2, "^[a-zA-Z0-9\\s!@#$%^&*()-_=+{}|;:\'\",.<>/?\\[\\]\\\\]+$"

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter a name using only English characters."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 528
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter name"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private sendResponse()V
    .locals 12

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    .line 544
    const-string v0, "M"

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_1

    .line 547
    const-string v0, "F"

    goto :goto_0

    .line 548
    :cond_1
    const-string v0, "O"

    goto :goto_0

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 554
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->SDF:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 557
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    new-instance v11, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 560
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 561
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 562
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "AUDIO_FILE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    move-object v1, v11

    invoke-direct/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-class v2, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-string v2, "OfflineHealthIdBean"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 567
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setAadhaarQRScanData()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 209
    const-string v1, "uid"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v1, "dob"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setDOB(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setComponent()V
    .locals 16

    move-object/from16 v1, p0

    .line 250
    const-string v2, "add_details"

    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "aadharNumber"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dob"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "gender"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "nameOfBeneficiary"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "aadharScanned"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "mobileNumber"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_3

    .line 260
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 261
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "aadharScannedData"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-class v11, Ljava/util/Map;

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_3

    .line 263
    const-string v10, "name"

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 264
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 266
    :cond_0
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 267
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    :cond_1
    const-string v4, "uid"

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 270
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    :cond_2
    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 277
    :cond_3
    const-string v4, "T"

    const/4 v8, 0x2

    const/16 v11, 0x2713

    const/16 v12, 0x2712

    const/4 v13, 0x1

    const/4 v14, -0x1

    if-eqz v5, :cond_b

    .line 278
    const-string v15, "\\d+(?:\\.\\d+)?"

    invoke-virtual {v5, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_4

    goto :goto_1

    :cond_4
    if-ne v5, v8, :cond_8

    goto :goto_0

    .line 288
    :cond_5
    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "male"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 290
    :cond_6
    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "female"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    .line 292
    :cond_7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "transgender"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    const/16 v5, 0x2733

    goto :goto_2

    :cond_9
    :goto_0
    const/16 v5, 0x2713

    goto :goto_2

    :cond_a
    :goto_1
    const/16 v5, 0x2712

    goto :goto_2

    :cond_b
    const/4 v5, -0x1

    .line 298
    :goto_2
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v15, 0xc

    const-string v10, "Aadhaar Number"

    invoke-static {v6, v10, v14, v15, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    iput-object v6, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_c

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 300
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_c
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v6, 0x3

    const-string v8, "Mobile Number"

    const/16 v15, 0xa

    invoke-static {v0, v8, v14, v15, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v9, :cond_d

    .line 303
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 304
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_d
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v4, 0x63

    const-string v6, "Name"

    invoke-static {v0, v6, v14, v4, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v7, :cond_e

    .line 307
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "beneficiary"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 308
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_e
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    .line 311
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v7, "Male"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v7, "Female"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v7, "Other"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2733

    invoke-static {v4, v7, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    if-eq v5, v14, :cond_10

    const/4 v0, 0x0

    .line 316
    :goto_3
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_f

    .line 317
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 318
    invoke-virtual {v7, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 320
    :cond_f
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    .line 323
    :goto_4
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 324
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 325
    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 329
    :cond_11
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v7, "Date of birth is can\u2019t be in future"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "isFutureDate"

    invoke-direct {v5, v9, v7}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v7, "Date of birth can\u2019t be before 110 years"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "isDateIn-Sub-110-0-0"

    invoke-direct {v5, v9, v7}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v5, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v7, v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 334
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-static {v0, v5, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 335
    :goto_6
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_13

    .line 336
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 337
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :try_start_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    sget-object v7, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->setDateSet(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_12
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 346
    :cond_13
    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 347
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 349
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Create ABHA Number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v14, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 352
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v5, 0x2738

    invoke-static {v3, v5, v13, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 353
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x78

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x14

    .line 354
    invoke-virtual {v5, v4, v4, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v9, 0x11

    .line 355
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 356
    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->ic_qr_scan:I

    invoke-static {v11, v13, v12, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v5

    .line 357
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-virtual {v0, v4, v7, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 360
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v5, "Scan Aadhaar Card"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v0, v5, v14, v7, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x20

    .line 367
    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 369
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v5, "Please enter all details as given in the Aadhaar Card."

    .line 370
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Birth Date"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    .line 379
    const-string v2, "Aadhaar card has only the year of birth"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 381
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 382
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 384
    new-instance v0, Landroid/widget/Spinner;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v3, v2

    :goto_8
    add-int/lit8 v7, v2, -0x6e

    if-lt v3, v7, :cond_14

    .line 388
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 390
    :cond_14
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const v7, 0x1090009

    invoke-direct {v2, v3, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 391
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 393
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearOnlyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Gender"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    const-string v2, "You will get link to download ABHA card on this number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 427
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-static {v5, v2, v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionViewWithTooltip(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private setDOB(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->formatDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->setDateSet(Ljava/util/Date;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onBackPressed$2$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity(Landroid/view/View;)V
    .locals 1

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 606
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setResult(I)V

    .line 608
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->finish()V

    goto :goto_0

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setComponent$0$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity(Ljava/util/ArrayList;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 395
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p3}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 396
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    :try_start_0
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 400
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p3, 0x1

    .line 401
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 403
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    .line 405
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 411
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->yearSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$setMessageConformationScreen$1$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 447
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 177
    const-string v0, "NDHMHealthIdCreation"

    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v1

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to scan QR"

    if-nez p1, :cond_0

    .line 182
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAadharScanDataMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setAadhaarQRScanData()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 196
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const-string p1, "Please scan Aadhaar"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "add_details"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;)V

    .line 614
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close ABHA number creation?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 617
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_1

    .line 602
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne v0, v1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CONFIRMATION_MESSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "OFFLINE_MESSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "add_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->sendResponse()V

    .line 159
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setMessageOfflineScreen()V

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->finish()V

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->aadhaarValidation()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->dobValidation()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->genderValidation()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->mobileNumberValidation()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nameValidation()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setMessageConformationScreen()V

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2738

    if-ne p1, v0, :cond_4

    .line 168
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 169
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54841f5c -> :sswitch_2
        -0x37c4a695 -> :sswitch_1
        0x1efaa1dd -> :sswitch_0
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

    .line 112
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 572
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 580
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 581
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "add_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CONFIRMATION_MESSAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 584
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 585
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->detailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setResult(I)V

    .line 590
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->finish()V

    :cond_3
    :goto_0
    return v1

    .line 575
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setResult(I)V

    .line 576
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->finish()V

    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setContentView(Landroid/view/View;)V

    .line 123
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->finish()V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "abhaConsentCheckboxModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    .line 132
    const-string v0, "Create ABHA Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageConformationScreen()V
    .locals 4

    .line 439
    const-string v0, "CONFIRMATION_MESSAGE"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Register"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v1, "I have verified that the details entered match with the beneficiary AADHAR details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v0

    const/16 v1, 0x30

    .line 444
    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 445
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 446
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMessageOfflineScreen()V
    .locals 2

    .line 459
    const-string v0, "OFFLINE_MESSAGE"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v1, "Offline ABHA number creation will be initiated once the app is synced with the server."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x30

    .line 464
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 465
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
