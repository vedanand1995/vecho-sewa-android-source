.class public Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ABHA_ID_SCREEN:Ljava/lang/String; = "abhaIdScreen"

.field private static final AUTH_MODE_SELECTION_SCREEN:Ljava/lang/String; = "authModeSelectionScreen"

.field private static final DEMOGRAPHICS_SCREEN:Ljava/lang/String; = "demographicsScreen"

.field private static final DIRECT_AUTH_SCREEN:Ljava/lang/String; = "directAuthScreen"

.field private static final OTP_VERIFICATION_SCREEN:Ljava/lang/String; = "otpVerificationScreen"

.field private static final TAG:Ljava/lang/String; = "ABDMRecordLink"

.field private static final displaySDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private authModeRG:Landroid/widget/RadioGroup;

.field authModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private contextMaster:Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

.field private final counter:[I

.field private detailsLayout:Landroid/widget/LinearLayout;

.field private dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private dobDP:Landroid/widget/LinearLayout;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private genderRG:Landroid/widget/RadioGroup;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private memberId:Ljava/lang/Integer;

.field private mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nameTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private nextButton:Landroid/widget/Button;

.field options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private otpLayout:Landroid/widget/LinearLayout;

.field private otpTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private requestId:Ljava/lang/String;

.field private resendBtn:Lcom/google/android/material/textview/MaterialTextView;

.field private response:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private screen:Ljava/lang/String;

.field private selectedAuthMode:Ljava/lang/String;

.field private skipBtn:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Lcom/google/android/material/textview/MaterialTextView;

.field private final timerCounter:[Ljava/util/Timer;

.field private verificationBtn:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->options:Ljava/util/List;

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/util/Timer;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 104
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->counter:[I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModes:Ljava/util/List;

    return-void
.end method

.method private abhaIdValidation()Z
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 757
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

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter ABHA ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[Ljava/util/Timer;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->counter:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private authModeValidation()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v1, "Please select auth mose"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private dobValidation()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter birth date"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private genderValidation()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter gender"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private initView()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 140
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 141
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nextButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getCareContextMasterDetails()V

    return-void
.end method

.method private isValidContactNumber(Ljava/lang/String;)Z
    .locals 1

    .line 223
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

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 209
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

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Mobile number must contains 10 digit numbers only"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->isValidContactNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter valid mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private nameValidation()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
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

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter name"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private sendResponse()V
    .locals 3

    .line 765
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 766
    const-string v1, "RequestId"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 767
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setResult(ILandroid/content/Intent;)V

    .line 768
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    return-void
.end method

.method private setComponentForAbhaId()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const/16 v1, 0x63

    const/16 v2, 0x90

    const-string v3, "ABHA ID"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditTextWithSpecialCharacter(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setAbhaIdScreen()V

    return-void
.end method

.method private startTimer()V
    .locals 9

    .line 678
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->counter:[I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 679
    aget v3, v0, v1

    add-int/2addr v3, v1

    aput v3, v0, v1

    .line 680
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, v2

    .line 687
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v3, v0, v2

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x5dc

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 716
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public VerifyOTP()V
    .locals 5

    const/4 v0, 0x1

    .line 721
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue in otp verification for record linking"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    const-string v4, "requestId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtpForRecordLinking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->requestId:Ljava/lang/String;

    .line 724
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 725
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 726
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 743
    const-string v3, "ABDMRecordLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 746
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkForDirectAuth()V
    .locals 5

    .line 348
    const-string v0, "responseId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue with Direct auth mode"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->checkForDirectAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 352
    const-string v4, "DIRECT_AUTH_GRANTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->requestId:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showInformationDialog()V

    return-void

    .line 356
    :cond_0
    const-string v0, "DIRECT_AUTH_DENIED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showAlertDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 361
    const-string v2, "ABDMRecordLink"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 364
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchAuthModes()V
    .locals 6

    .line 426
    const-string v0, "PASSWORD"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue for getting authentication methods"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->fetchAuthModesByHealthId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 431
    const-string v4, "DIRECT"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setAuthModeSelectionScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 439
    const-string v2, "ABDMRecordLink"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 442
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCareContextMasterDetails()V
    .locals 5

    const/4 v0, 0x1

    .line 271
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with care context master details"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getCareContextMasterDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

    .line 276
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;->getPreferred()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->contextMaster:Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

    .line 278
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setComponentForAbhaId()V

    return-void

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 284
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setComponentForAbhaId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 287
    const-string v3, "ABDMRecordLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 290
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showAlertDialog$0$com-argusoft-sewa-android-app-activity-ABDMRecordLinkActivity(Landroid/view/View;)V
    .locals 0

    .line 376
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showInformationDialog$1$com-argusoft-sewa-android-app-activity-ABDMRecordLinkActivity(Landroid/view/View;)V
    .locals 0

    .line 389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 390
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->sendResponse()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 806
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "demographicsScreen"

    const-string v1, "directAuthScreen"

    const-string v2, "abhaIdScreen"

    const-string v3, "authModeSelectionScreen"

    const-string v4, "otpVerificationScreen"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    .line 821
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure you want to close record linking"

    .line 822
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 824
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    .line 826
    :cond_0
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_5

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "authModeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "demographicsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "abhaIdScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "directAuthScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "otpVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showProcessDialog()V

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->options:Ljava/util/List;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->validateAuthMode()V

    goto :goto_1

    .line 171
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showProcessDialog()V

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->validateDemographics()V

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdValidation()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showProcessDialog()V

    .line 155
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->fetchAuthModes()V

    goto :goto_1

    .line 177
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showProcessDialog()V

    .line 178
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->checkForDirectAuth()V

    goto :goto_1

    .line 166
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v1

    if-eqz p1, :cond_5

    .line 167
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f29a70e -> :sswitch_4
        0x48a14fd -> :sswitch_3
        0x320fb861 -> :sswitch_2
        0x52e5777a -> :sswitch_1
        0x5504e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "memberId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->memberId:Ljava/lang/Integer;

    .line 119
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 773
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 775
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 781
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 782
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "authModeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "demographicsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "abhaIdScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "directAuthScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "otpVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 796
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setComponentForAbhaId()V

    goto :goto_1

    .line 784
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setResult(I)V

    .line 785
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    goto :goto_1

    .line 788
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v2

    if-eqz p1, :cond_6

    .line 789
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 793
    :cond_6
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setAuthModeSelectionScreen()V

    :cond_7
    :goto_1
    return v1

    .line 776
    :cond_8
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setResult(I)V

    .line 777
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f29a70e -> :sswitch_4
        0x48a14fd -> :sswitch_3
        0x320fb861 -> :sswitch_2
        0x52e5777a -> :sswitch_1
        0x5504e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setContentView(Landroid/view/View;)V

    .line 128
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    .line 135
    :cond_1
    const-string v0, "Link Record"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public resendOTP()V
    .locals 6

    const/4 v0, 0x1

    .line 453
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending otp again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->memberId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->initLinking(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 457
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 467
    const-string v3, "ABDMRecordLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 470
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAbhaIdScreen()V
    .locals 4

    .line 401
    const-string v0, "abhaIdScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 404
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "healthId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->contextMaster:Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->contextMaster:Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Link Record"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter ABHA ID to link your record"

    .line 415
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA ID"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAuthModeSelectionScreen()V
    .locals 7

    .line 481
    const-string v0, "authModeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    .line 484
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 487
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 488
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/NDHMConstants;->getAuthModeFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->options:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->options:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 491
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->contextMaster:Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HIPCareContextMaster;->getPrefAuthMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->options:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 496
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Select method to link record with ABHA Id"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "Select Authentication Mode"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->authModeRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    return-void
.end method

.method public setDemographicsScreen()V
    .locals 13

    .line 581
    const-string v0, "demographicsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    .line 590
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dob"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "gender"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "nameOfBeneficiary"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mobileNumber"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2734

    const/16 v8, 0x2713

    const/16 v9, 0x2712

    if-eqz v1, :cond_4

    .line 595
    const-string v10, "\\d+(?:\\.\\d+)?"

    invoke-virtual {v1, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    goto :goto_1

    .line 605
    :cond_1
    const-string v4, "M"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    const/16 v1, 0x2712

    goto :goto_2

    .line 607
    :cond_2
    const-string v4, "F"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    const/16 v1, 0x2713

    goto :goto_2

    :cond_3
    const/16 v1, 0x2734

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    .line 615
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const/16 v10, 0xa

    const/4 v11, 0x3

    const-string v12, "Mobile Number"

    invoke-static {v4, v12, v3, v10, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v6, :cond_5

    .line 616
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 617
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_5
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const/16 v6, 0x63

    const-string v10, "Name"

    invoke-static {v4, v10, v3, v6, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v5, :cond_6

    .line 620
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "beneficiary"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 621
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_6
    new-instance v2, Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    .line 624
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v5, "Male"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 625
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v5, "Female"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 626
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v5, "Other"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 627
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v5, "Unknown"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2733

    invoke-static {v4, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 628
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v4, "Date of birth is can\u2019t be in future"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isFutureDate"

    invoke-direct {v2, v5, v4}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v4, "Date of birth can\u2019t be before 110 years"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isDateIn-Sub-110-0-0"

    invoke-direct {v2, v5, v4}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 635
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobDP:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 636
    :goto_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 637
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 638
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    sget-object v4, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->setDateSet(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 642
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 647
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v3, "Link Record"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v3, "Please enter the details in order to link your record"

    .line 650
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 653
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v3, "Birth Date"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobDP:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v3, "Gender"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->detailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setDirectAuthScreen()V
    .locals 3

    .line 671
    const-string v0, "directAuthScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 673
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    const-string v2, "An authorization request will be added in REQUESTS section of ABHA app which can be approved or denied by the user. Once the user approves the request, record will be linked to Health Id."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setOTPVerificationScreen()V
    .locals 4

    .line 507
    const-string v0, "otpVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->screen:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    const-string v0, "Please enter the OTP received on the Aadhaar linked Mobile Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v2, "MOBILE_OTP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const-string v0, "Please enter the OTP received on the Mobile Number linked to ABHA ID"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v2, "EMAIL_OTP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const-string v0, "Please enter the OTP received on the Email Address linked to ABHA ID"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    .line 519
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 520
    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->or:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x4

    .line 522
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 525
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "Enter OTP"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 531
    const-string v2, "Validate"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 537
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 558
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->otpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->counter:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 576
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->startTimer()V

    return-void
.end method

.method public showAlertDialog()V
    .locals 4

    .line 375
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    .line 380
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "User has denied the request. So record will not be linked to ABHA Address."

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 383
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public showInformationDialog()V
    .locals 4

    .line 388
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V

    .line 393
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "The Record will be linked to your abha id once you sync with the server."

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 396
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public validateAuthMode()V
    .locals 6

    const/4 v0, 0x1

    .line 244
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with auth method validation or selected auth mode is not allowed for you"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->abhaIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->memberId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->initLinking(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    .line 247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 248
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v3, "MOBILE_OTP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v3, "AADHAAR_OTP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v3, "EMAIL_OTP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v3, "DEMOGRAPHICS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setDemographicsScreen()V

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setDirectAuthScreen()V

    goto :goto_1

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setOTPVerificationScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .line 257
    const-string v3, "ABDMRecordLink"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 260
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateDemographics()V
    .locals 6

    const-string v0, "+91"

    const/4 v1, 0x1

    .line 302
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue with demographics"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 304
    :try_start_0
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;-><init>()V

    .line 306
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->genderRG:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    const/16 v5, 0x2712

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2713

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2733

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2734

    if-eq v4, v5, :cond_0

    .line 320
    const-string v4, ""

    goto :goto_0

    .line 314
    :cond_0
    const-string v4, "O"

    goto :goto_0

    .line 317
    :cond_1
    const-string v4, "U"

    goto :goto_0

    .line 311
    :cond_2
    const-string v4, "F"

    goto :goto_0

    .line 308
    :cond_3
    const-string v4, "M"

    .line 322
    :goto_0
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->setGender(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->nameTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->setName(Ljava/lang/String;)V

    .line 324
    sget-object v4, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->displaySDF:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->dobChangeListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->setDateOfBirth(Ljava/lang/String;)V

    .line 325
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;-><init>()V

    .line 326
    const-string v5, "MOBILE"

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->setType(Ljava/lang/String;)V

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;->setValue(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;->setIdentifier(Lcom/argusoft/sewa/android/app/databean/HIPPatientIdentifiers;)V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->response:Ljava/util/Map;

    const-string v5, "requestId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyDemography(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/HIPVerifyDemography;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->requestId:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 331
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->showInformationDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 334
    const-string v2, "ABDMRecordLink"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 337
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$3;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
