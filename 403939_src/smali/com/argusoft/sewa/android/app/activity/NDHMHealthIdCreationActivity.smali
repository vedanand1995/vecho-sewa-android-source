.class public Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NDHMHealthIdCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHANGE_MOBILE_OTP_VERIFICATION_SCREEN:Ljava/lang/String; = "changeMobileOtpVarificationScreen"

.field private static final CREATE_HEALTH_ID_VIA_AADHAAR_FINGERPRINT_SCREEN:Ljava/lang/String; = "createHealthIdViaAadhaarFingerPrintScreen"

.field private static final CREATE_HEALTH_ID_VIA_AADHAAR_OTP_SCREEN:Ljava/lang/String; = "createHealthIdViaAadhaarOTPScreen"

.field private static final DISPLAY_HEALTH_ID_SCREEN:Ljava/lang/String; = "displayHealthIdScreen"

.field private static final DISPLAY_HEALTH_ID_UPDATE_MOBILE_SCREEN:Ljava/lang/String; = "displayHealthIdUpdateMobileScreen"

.field private static final FINGER_PRINT_REQUEST_CODE:I = 0x3e9

.field private static final NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE:I = 0x3e8

.field private static final NDHM_HEALTH_ID_SKIP_REQUEST_CODE:I = 0x3ea

.field public static final NETWORK_FAILURE:Ljava/lang/String; = "Network Unavailable"

.field private static final OPTION_SELECTION_FOR_HEALTH_ID_CREATION_SCREEN:Ljava/lang/String; = "optionSelectionForHealthIdCreationScreen"

.field private static final OTP_VERIFICATION_SCREEN:Ljava/lang/String; = "otpVerificationScreen"

.field private static final RADIOBUTTON_ID_NO:I = 0x2

.field private static final RADIOBUTTON_ID_YES:I = 0x1

.field private static final SDF:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "NDHMHealthIdCreation"


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

.field aadharScannerLayout:Landroid/widget/LinearLayout;

.field private abhaCardToken:Ljava/lang/String;

.field private abhaConsentCheckboxModel:Ljava/lang/String;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private bytes:[B

.field private checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field private final counter:[I

.field dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

.field private featureName:Ljava/lang/String;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fileName:Ljava/lang/String;

.field private fingerPrintAuthPid:Ljava/lang/String;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private healthId:Ljava/lang/String;

.field private healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

.field private healthIdNumber:Ljava/lang/String;

.field private isAudioRecording:Z

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memberId:Ljava/lang/Integer;

.field private mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private otpLayout:Landroid/widget/LinearLayout;

.field private otpTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private radioGroupForYesNo:Landroid/widget/RadioGroup;

.field private recorder:Landroid/media/MediaRecorder;

.field private resendBtn:Lcom/google/android/material/textview/MaterialTextView;

.field private resendOtpCounter:I

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;

.field scannerDob:Lcom/google/android/material/textview/MaterialTextView;

.field scannerGender:Lcom/google/android/material/textview/MaterialTextView;

.field private screen:Ljava/lang/String;

.field private skipBtn:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Lcom/google/android/material/textview/MaterialTextView;

.field private final timerCounter:[Ljava/util/Timer;

.field private token:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private verificationBtn:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [Ljava/util/Timer;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 142
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->counter:[I

    .line 143
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOtpCounter:I

    .line 157
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isAudioRecording:Z

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fileName:Ljava/lang/String;

    return-void
.end method

.method private aadhaarValidation()Z
    .locals 3

    .line 1249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1250
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

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 1256
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1251
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter aadhaar number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setComponentForCreateHealthIdViaAadhaarOTP()V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setComponentForCreateHealthIdViaFingerprint()V

    return-void
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)[I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->counter:[I

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->sendResponse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)[Ljava/util/Timer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Ljava/lang/Integer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    return-object p0
.end method

.method private determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_5

    .line 1281
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "Other"

    const-string v1, "Female"

    const-string v2, "Male"

    if-nez p2, :cond_1

    const-string p2, "\\d+(?:\\.\\d+)?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "gender"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    goto :goto_0

    .line 1291
    :cond_1
    const-string p2, "M"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "male"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1293
    :cond_2
    const-string p2, "F"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "female"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    :goto_0
    move-object v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 1280
    :cond_5
    const-string v0, "NA"

    :cond_6
    :goto_2
    return-object v0
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

    .line 294
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->validateToken()V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 201
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 202
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    return-void
.end method

.method private isValidContactNumber(Ljava/lang/String;)Z
    .locals 1

    .line 1245
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

    .line 1264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1265
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

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 1269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Mobile number must contains 10 digit numbers only"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isValidContactNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter valid mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1266
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private sendResponse()V
    .locals 3

    .line 1303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1304
    const-string v1, "healthIdNumber"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v1, "healthId"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1306
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(ILandroid/content/Intent;)V

    .line 1307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    return-void
.end method

.method private setAadhaarQRScanData()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 259
    const-string v1, "uid"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setComponentForCreateHealthIdViaAadhaarOTP()V
    .locals 5

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, "Aadhaar Number"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const-string v3, "Mobile Number"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 345
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setCreateHealthIdViaAadhaarOTPScreen()V

    return-void
.end method

.method private setComponentForCreateHealthIdViaFingerprint()V
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, "Aadhaar Number"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const-string v3, "Mobile Number"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 501
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setCreateHealthIdViaFingerprintScreen()V

    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 5

    .line 652
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->ndhm_record_consent_popup_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 655
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 656
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 658
    new-instance v2, Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/16 v1, 0x11

    const/4 v3, 0x0

    .line 659
    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 661
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 662
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->mic_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 663
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;Landroid/widget/ImageButton;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;Landroid/widget/ImageButton;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startTimer()V
    .locals 9

    .line 890
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->counter:[I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 891
    aget v3, v0, v1

    add-int/2addr v3, v1

    aput v3, v0, v1

    .line 892
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 894
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 895
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, v2

    .line 899
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v3, v0, v2

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x5dc

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 929
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public checkNetworkConnection()V
    .locals 3

    .line 726
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "createHealthIdViaAadhaarFingerPrintScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "createHealthIdViaAadhaarOTPScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 730
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateOTP()V

    goto :goto_0

    .line 734
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aadhaar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v1, "memberId"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 738
    const-string v1, "featureName"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->featureName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const-string v1, "abhaConsentCheckboxModel"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 740
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v1, "Network Unavailable"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createUsingAadhaarBiometricsV3()V
    .locals 11

    const/4 v0, 0x1

    .line 1151
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for verifying biometrics"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1153
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fingerPrintAuthPid:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->featureName:Ljava/lang/String;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1154
    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    .line 1153
    invoke-virtual/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->createUsingAadhaarBiometricsV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    .line 1155
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getTxnId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 1157
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    .line 1158
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    .line 1159
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthId:Ljava/lang/String;

    .line 1160
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaCardToken:Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getMobile()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 1165
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAbhaCard()V

    goto :goto_1

    .line 1162
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setDisplayUpdateMobileNumber()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .line 1170
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1173
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayHealthIdScreen(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1223
    const-string v0, "displayHealthIdScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA number generated successfully"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 1227
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1228
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v1, "Please inform the beneficiary that they will get link to download ABHA card"

    .line 1230
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1232
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1233
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    return-void
.end method

.method public downloadAbhaCard(Ljava/lang/Long;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1183
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getfileById?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 1186
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1187
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1189
    new-instance p1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x32

    invoke-direct {p1, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1191
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    .line 1192
    invoke-virtual {p1, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p1

    .line 1197
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1198
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public generateHealthIdUsingAadhaarOTP()V
    .locals 12

    const/4 v0, 0x1

    .line 934
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for creating Health Id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 936
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 937
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->featureName:Ljava/lang/String;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 936
    invoke-virtual/range {v3 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->createUsingAadhaarOTPV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    .line 938
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getTxnId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 939
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    if-eqz v1, :cond_2

    .line 940
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    .line 941
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    .line 942
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthId:Ljava/lang/String;

    .line 943
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaCardToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getMobile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getMobile()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAbhaCard()V

    goto :goto_1

    .line 947
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setDisplayUpdateMobileNumber()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 952
    :try_start_2
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bytes:[B

    .line 954
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    .line 955
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthId:Ljava/lang/String;

    .line 956
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    .line 972
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 975
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateOTP()V
    .locals 5

    const/4 v0, 0x1

    .line 751
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateAadhaarOTPV3(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v1

    .line 754
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-------------------------first-otp-------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 757
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 758
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOTPVerificationScreen(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 762
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 765
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateUpdateMobileOTP()V
    .locals 6

    const/4 v0, 0x1

    .line 1010
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 1015
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOTPVerificationForUpdateMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 1019
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1022
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAbhaCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->saveHealthIdCardV2(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bytes:[B

    .line 1212
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1213
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1215
    const-string p2, "NDHMHealthIdCreation"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$createUsingAadhaarBiometricsV3$14$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity([Ljava/lang/String;)V
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 1175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateUpdateMobileOTP$6$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity([Ljava/lang/String;)V
    .locals 2

    .line 1023
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 1024
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendUpdateMobileOtp$7$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity()V
    .locals 2

    .line 1038
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1040
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$resendUpdateMobileOtp$8$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity()V
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1045
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendUpdateMobileOtp$9$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity([Ljava/lang/String;)V
    .locals 2

    .line 1055
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 1056
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setCreateHealthIdViaAadhaarOTPScreen$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 490
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setCreateHealthIdViaFingerprintScreen$2$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 643
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 644
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setDisplayUpdateMobileNumber$5$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1002
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$setOTPVerificationForUpdateMobile$10$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/view/View;)V
    .locals 0

    .line 1110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 1111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verifyUpdateMobileOTP()V

    return-void
.end method

.method synthetic lambda$setOTPVerificationForUpdateMobile$11$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/view/View;)V
    .locals 0

    .line 1115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 1116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendUpdateMobileOtp()V

    return-void
.end method

.method synthetic lambda$showAbhaCard$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity([Ljava/lang/String;)V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showPopUpWindow$3$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/widget/ImageButton;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 664
    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isAudioRecording:Z

    if-eqz p3, :cond_0

    .line 665
    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    .line 666
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 667
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-class p3, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity_;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    const-string p2, "memberId"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "nameOfBeneficiary"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "aadharScanned"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "gender"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "mobileNumber"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "dob"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string p2, "abhaConsentCheckboxModel"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3e8

    .line 675
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$showPopUpWindow$4$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 3

    .line 0
    const-string p3, "Record_ABHA_CONSENT_"

    .line 679
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isAudioRecording:Z

    if-nez v0, :cond_1

    const/4 p2, 0x1

    .line 681
    :try_start_0
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isAudioRecording:Z

    .line 682
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    .line 685
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd.HH.mm.ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".amr"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fileName:Ljava/lang/String;

    .line 687
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 688
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 689
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 690
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_AUDIO:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 691
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    .line 692
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    .line 693
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->stop_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 694
    const-string p1, "Recording started"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 699
    :cond_1
    sget p3, Lcom/argusoft/sewa/android/app/R$string;->next:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 700
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V

    .line 701
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->reset()V

    .line 702
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    const/4 p2, 0x0

    .line 703
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->recorder:Landroid/media/MediaRecorder;

    .line 704
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->record_audio:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 705
    const-string p1, "Audio Recorded successfully"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 706
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->isAudioRecording:Z

    :goto_0
    return-void
.end method

.method synthetic lambda$verifyUpdateMobileOTP$12$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity(Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;)V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyUpdateMobileOTP$13$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity([Ljava/lang/String;)V
    .locals 2

    .line 1144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 1145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1347
    const-string v0, "NDHMHealthIdCreation"

    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    .line 1348
    const-string v3, "isFromOffline"

    const/4 v4, -0x1

    const-string v5, "OfflineHealthIdBean"

    const-string v6, "healthIdNumber"

    if-ne p1, v1, :cond_1

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_b

    .line 1351
    const-class p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1352
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1353
    const-class p2, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1355
    invoke-virtual {p0, v4, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(ILandroid/content/Intent;)V

    .line 1356
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_2

    .line 1359
    invoke-virtual {p3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1360
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->token:Ljava/lang/String;

    .line 1361
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    .line 1362
    const-string p1, "healthId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthId:Ljava/lang/String;

    .line 1363
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->token:Ljava/lang/String;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->healthIdNumber:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAbhaCard(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_b

    .line 1365
    const-string p1, "pid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1366
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fingerPrintAuthPid:Ljava/lang/String;

    .line 1367
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 1368
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->createUsingAadhaarBiometricsV3()V

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_b

    .line 1371
    const-class p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1372
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1373
    const-class p2, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0, v4, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(ILandroid/content/Intent;)V

    .line 1376
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    goto/16 :goto_2

    .line 1380
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v1

    .line 1381
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz v1, :cond_b

    .line 1384
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to scan QR"

    if-nez p1, :cond_5

    .line 1385
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1388
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 1390
    :try_start_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/AadharScanUtil;->getAadharScanDataMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 1392
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setAadhaarQRScanData()V

    .line 1394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v1, "dob"

    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1395
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v2, "yob"

    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1396
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v3, "name"

    invoke-direct {p0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_6

    .line 1401
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    const-string v5, "Year of birth"

    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1405
    :cond_6
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "N/A"

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerDob:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    move-object p1, v1

    goto :goto_1

    :cond_9
    move-object p1, v4

    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerGender:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarDetailsMap:Ljava/util/Map;

    const-string v2, "gender"

    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getAadhaarValueFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1413
    :cond_a
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1421
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "In exception"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1422
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1423
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1417
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    const-string p1, "Please scan Aadhaar"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    const-string v1, "displayHealthIdScreen"

    if-eqz v0, :cond_0

    const-string v0, "createHealthIdViaAadhaarFingerPrintScreen"

    const-string v2, "otpVerificationScreen"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$14;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    .line 1447
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close ABHA number creation?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1450
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->sendResponse()V

    goto :goto_0

    .line 1454
    :cond_1
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne v0, v1, :cond_5

    .line 225
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "displayHealthIdUpdateMobileScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "createHealthIdViaAadhaarOTPScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "createHealthIdViaAadhaarFingerPrintScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 233
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 234
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 236
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->generateUpdateMobileOTP()V

    goto :goto_2

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showProcessDialog()V

    .line 240
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAbhaCard()V

    goto :goto_2

    .line 243
    :cond_4
    const-string p1, "Please Select an option"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarValidation()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberValidation()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 229
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkNetworkConnection()V

    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x2738

    if-ne p1, v0, :cond_6

    .line 250
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 251
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 252
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1c1e0cc3 -> :sswitch_2
        -0x129fc69c -> :sswitch_1
        0x77e1270 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1312
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1320
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 1321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "displayHealthIdScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "createHealthIdViaAadhaarOTPScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "createHealthIdViaAadhaarFingerPrintScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "optionSelectionForHealthIdCreationScreen"

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

    .line 1327
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->sendResponse()V

    goto :goto_1

    .line 1331
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setOptionSelectionForHealthIdCreationScreen()V

    goto :goto_1

    .line 1323
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(I)V

    .line 1324
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    goto :goto_1

    .line 1334
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v2

    if-eqz p1, :cond_6

    .line 1335
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1337
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setCreateHealthIdViaAadhaarOTPScreen()V

    :cond_7
    :goto_1
    return v1

    .line 1315
    :cond_8
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setResult(I)V

    .line 1316
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f29a70e -> :sswitch_4
        -0x470cb40c -> :sswitch_3
        -0x1c1e0cc3 -> :sswitch_2
        -0x129fc69c -> :sswitch_1
        0x6d82ed45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 181
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setContentView(Landroid/view/View;)V

    .line 185
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->finish()V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "featureName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->featureName:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "abhaConsentCheckboxModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    .line 195
    const-string v0, "Create ABHA Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public resendOTP()V
    .locals 5

    const/4 v0, 0x1

    .line 776
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending otp again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateAadhaarOTP(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 780
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 781
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 791
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 794
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendUpdateMobileOtp()V
    .locals 7

    const/4 v0, 0x1

    .line 1030
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Issue for sending otp"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1032
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1034
    const-string v4, "txnId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 1035
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOtpCounter:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOtpCounter:I

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 1037
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1043
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1051
    const-string v2, "NDHMHealthIdCreation"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1054
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setComponentForCreateHealthIdViaDemographics()V
    .locals 3

    .line 713
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/NDHMOfflineHealthIdCreationActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    const-string v1, "memberId"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "nameOfBeneficiary"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "aadharScanned"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mobileNumber"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dob"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v1, "abhaConsentCheckboxModel"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setCreateHealthIdViaAadhaarOTPScreen()V
    .locals 17

    move-object/from16 v0, p0

    .line 355
    const-string v1, "createHealthIdViaAadhaarOTPScreen"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 356
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Create ABHA Number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Aadhaar OTP Authentication"

    .line 360
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "(%s)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v2, 0x4

    .line 361
    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 362
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 365
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    .line 366
    const-string v9, "Scanned Aadhar Details"

    const-string v10, "Gender"

    const-string v11, "Date of birth"

    const-string v12, "Member Name"

    const-string v13, "Not available"

    if-eqz v1, :cond_0

    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v7, :cond_0

    .line 367
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "dd/MM/yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 370
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v8, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v8, v5, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v5, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v8, v5, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Member Id"

    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v16, "Family ID"

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v8, v5, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 385
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v7, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    .line 387
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 388
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v2, 0x4

    .line 389
    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 391
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;

    .line 395
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 398
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerDob:Lcom/google/android/material/textview/MaterialTextView;

    .line 400
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerGender:Lcom/google/android/material/textview/MaterialTextView;

    .line 404
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 411
    :cond_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "firstName"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "lastName"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "dob"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gender"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v7, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    .line 424
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 425
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v2, 0x4

    .line 426
    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 428
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;

    .line 432
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 435
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerDob:Lcom/google/android/material/textview/MaterialTextView;

    .line 437
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerGender:Lcom/google/android/material/textview/MaterialTextView;

    .line 441
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 449
    const-string v2, "Scan Aadhaar Card"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v4, 0x4

    .line 450
    invoke-virtual {v1, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 451
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v5, 0x2738

    invoke-static {v4, v5, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 455
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x78

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x14

    const/4 v9, 0x0

    .line 456
    invoke-virtual {v5, v9, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v10, 0x11

    .line 457
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 458
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->ic_qr_scan:I

    invoke-static {v11, v3, v12, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v5

    .line 459
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    invoke-virtual {v1, v9, v8, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 461
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 462
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v1, v2, v7, v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "An OTP will be sent to the mobile phone number linked to this Aadhaar number."

    .line 468
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Aadhaar Number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "You will get link to download ABHA card on this number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v5, "Mobile Number"

    .line 474
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-static {v4, v2, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionViewWithTooltip(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x28

    const/4 v3, 0x0

    .line 478
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v4, "I have verified that the details entered match with the beneficiary AADHAR details"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v7, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/16 v3, 0x30

    .line 480
    invoke-virtual {v2, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 481
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v2, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 483
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Send OTP"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setCreateHealthIdViaFingerprintScreen()V
    .locals 17

    move-object/from16 v0, p0

    .line 510
    const-string v1, "createHealthIdViaAadhaarFingerPrintScreen"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 511
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 513
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Create ABHA Number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Aadhaar Fingerprint Authentication"

    aput-object v5, v3, v4

    .line 515
    const-string v5, "(%s)"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v3, 0x4

    .line 516
    invoke-virtual {v1, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 517
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    .line 521
    const-string v5, "Scanned Aadhar Details"

    const-string v7, "Gender"

    const-string v8, "Date of birth"

    const-string v9, "Member Name"

    const/4 v10, -0x2

    const-string v11, "Not available"

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v12, :cond_0

    .line 522
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "dd/MM/yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 525
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v13, v4, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v13, v6, v15}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v6, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v13, v6, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Member Id"

    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v16, "Family ID"

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v13, v6, v14}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v3, v12, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    .line 540
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 541
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v3, 0x4

    .line 542
    invoke-virtual {v1, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 544
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;

    .line 548
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 551
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerDob:Lcom/google/android/material/textview/MaterialTextView;

    .line 553
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerGender:Lcom/google/android/material/textview/MaterialTextView;

    .line 557
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 563
    :cond_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6, v6, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v13, "firstName"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v13, "lastName"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6, v6, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "dob"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6, v6, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "gender"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v0, v4, v13}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->determineGender(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 574
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v3, v12, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    .line 576
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 577
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v3, 0x4

    .line 578
    invoke-virtual {v1, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 580
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerAadharName:Lcom/google/android/material/textview/MaterialTextView;

    .line 584
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->dateOfBirthTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 587
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerDob:Lcom/google/android/material/textview/MaterialTextView;

    .line 589
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->scannerGender:Lcom/google/android/material/textview/MaterialTextView;

    .line 593
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 595
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadharScannerLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    :goto_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    .line 600
    const-string v3, "Scan Aadhaar Card"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-static {v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/4 v4, 0x4

    .line 601
    invoke-virtual {v1, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 602
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/16 v5, 0x2738

    invoke-static {v4, v5, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 606
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x78

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 607
    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v8, 0x11

    .line 608
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 609
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->ic_qr_scan:I

    invoke-static {v9, v2, v11, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v5

    .line 610
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {v1, v7, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 612
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 613
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {v1, v3, v12, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Please enter all details as given in the Aadhaar Card."

    .line 620
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v3, "Aadhaar Number"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "You will get link to download ABHA card on this number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v5, "Mobile Number"

    .line 626
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 625
    invoke-static {v4, v2, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionViewWithTooltip(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 627
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x28

    const/4 v3, 0x0

    .line 630
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 631
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v4, "I have verified that the details entered match with the beneficiary AADHAR details"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v12, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/16 v3, 0x30

    .line 632
    invoke-virtual {v2, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 633
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v2, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 635
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 638
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Register"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setDisplayUpdateMobileNumber()V
    .locals 5

    .line 986
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 987
    const-string v0, "displayHealthIdUpdateMobileScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 990
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Mobile number you have entered %s is different from the one registered with ABHA. Do you want to change the mobile number?"

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 996
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v4, v4, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 997
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    .line 998
    const-string v0, "Yes"

    invoke-static {p0, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 999
    const-string v1, "No"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    .line 1000
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1001
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1002
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1003
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->radioGroupForYesNo:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1004
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setOTPVerificationForUpdateMobile(Ljava/lang/String;)V
    .locals 6

    .line 1062
    const-string v0, "changeMobileOtpVarificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 1063
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1064
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1065
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendOtpCounter:I

    .line 1067
    const-string v1, "We just sent an OTP on the Mobile Number %s. Enter the OTP below to proceed with ABHA creation"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "******"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1072
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_without_skip_otp_layout:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    .line 1075
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 1076
    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1079
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1080
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v1, "Enter OTP"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1084
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 1085
    const-string v1, "Validate"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1088
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 1089
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 1090
    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 1092
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1109
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->counter:[I

    aput v0, p1, v3

    .line 1121
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startTimer()V

    .line 1122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setOTPVerificationScreen(Ljava/lang/String;)V
    .locals 3

    .line 805
    const-string v0, "otpVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 807
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    .line 810
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    const-string p1, "Please enter the OTP received on the Aadhaar linked Mobile Number"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 814
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 815
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter OTP"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 816
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 819
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 820
    const-string v0, "Validate"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 823
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 824
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 825
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 826
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 827
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 829
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 846
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->skipBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->otpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 885
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->counter:[I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 886
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startTimer()V

    return-void
.end method

.method public setOptionSelectionForHealthIdCreationScreen()V
    .locals 4

    .line 303
    const-string v0, "optionSelectionForHealthIdCreationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->screen:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    const-string v2, "Select method for ABHA id creation"

    .line 308
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 307
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const-string v1, "Aadhaar OTP Authentication"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v1, "Aadhaar Fingerprint Authentication"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v1, "Aadhaar Demographic Authentication (offline)"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V

    .line 338
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showAbhaCard()V
    .locals 5

    const/4 v0, 0x1

    .line 269
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue while retrieving the ABHA Card"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getJwtResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->sendSMSandGetHealthIdCard(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->bytes:[B

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 276
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->displayHealthIdScreen(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v1

    .line 283
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 286
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateToken()V
    .locals 3

    .line 212
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->revalidateUserTokenForUser()V

    .line 213
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/SewaService;->doAfterSuccessfulLogin(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    const-string v1, "Network Connection Error"

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 218
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->hideProcessDialog()V

    .line 219
    throw v0
.end method

.method public verifyUpdateMobileOTP()V
    .locals 9

    const/4 v0, 0x1

    .line 1127
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Invalid OTP"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1129
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileOtpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->memberId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->enrollUsingAadhaar:Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyUpdateMobileOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->getTxnId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->txnId:Ljava/lang/String;

    .line 1132
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;)V

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->showAbhaCard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 1140
    const-string v3, "NDHMHealthIdCreation"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1143
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
