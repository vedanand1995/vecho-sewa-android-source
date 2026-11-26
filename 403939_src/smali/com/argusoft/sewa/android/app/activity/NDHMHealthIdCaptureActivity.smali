.class public Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NDHMHealthIdCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AADHAAR_NUMBER_COLLECTION_SCREEN:Ljava/lang/String; = "createNumberCollectionScreen"

.field private static final AADHAAR_NUMBER_VERIFICATION_SCREEN:Ljava/lang/String; = "aadharNumberVerificationScreen"

.field private static final ABHA_ADDRESS_VERIFICATION_SCREEN:Ljava/lang/String; = "abhAddressVerificationScreen"

.field private static final ABHA_NUMBER_SELECTION_SCREEN:Ljava/lang/String; = "abhaNumberSelectionScreen"

.field private static final ABHA_NUMBER_VERIFICATION_SCREEN:Ljava/lang/String; = "abhaNumberVerificationScreen"

.field private static final AUTH_MODE_DEMOGRAPHIC_SCREEN:Ljava/lang/String; = "authModeDemographicScreen"

.field private static final AUTH_MODE_SELECTION_SCREEN:Ljava/lang/String; = "authModeSelectionScreen"

.field private static final CODE_STATE_GUJARAT:Ljava/lang/String; = "24"

.field private static final DISPLAY_HEALTH_ID_SCREEN:Ljava/lang/String; = "displayHealthIdScreen"

.field private static final FINGER_PRINT_REQUEST_CODE:I = 0x3e9

.field private static final HEALTH_ID_VERIFICATION_SCREEN:Ljava/lang/String; = "healthIdVerificationScreen"

.field private static final METHOD_SELECTION_SCREEN:Ljava/lang/String; = "methodSelectionScreen"

.field private static final MOBILE_OTP_VALIDATION_SCREEN:Ljava/lang/String; = "mobileOtpValidationScreen"

.field private static final MOBILE_VERIFICATION_SCREEN:Ljava/lang/String; = "mobileVerificationScreen"

.field private static final OTP_VALIDATION_SCREEN:Ljava/lang/String; = "otpValidationScreen"

.field private static final PHOTO_CONFIRMATION_SCREEN:Ljava/lang/String; = "photoConfirmationScreen"

.field private static final PHOTO_CONFIRMATION_V3_SCREEN:Ljava/lang/String; = "photoConfirmationV3Screen"

.field private static final RADIOBUTTON_ID_AADHAAR:I = 0x3

.field private static final RADIOBUTTON_ID_ABHA_ADDRESS:I = 0x2

.field private static final RADIOBUTTON_ID_ABHA_NUMBER:I = 0x1

.field private static final RADIOBUTTON_ID_MOBILENUMBER:I = 0x4

.field private static final SCOPE_SEARCH_VIA_MOBILE:Ljava/lang/String; = "search_via_mobile"

.field public static final SCOPE_VERIFICATION_VIA_ABHA_ADDRESS_USING_BIO:Ljava/lang/String; = "verification_via_abha_address_using_bio"

.field public static final SCOPE_VERIFICATION_VIA_ABHA_USING_BIO:Ljava/lang/String; = "verification_via_abha_using_bio"

.field public static final SCOPE_VERIFICATION_VIA_MOBILE_USING_BIO:Ljava/lang/String; = "verification_via_mobile_using_bio"

.field public static final STATE_SELECTION_SCREEN:Ljava/lang/String; = "stateSelectionScreen"

.field private static final TAG:Ljava/lang/String; = "NDHMHealthIdCapture"

.field private static final VERIFICATION_VIA_AADHAAR:Ljava/lang/String; = "verification_via_aadhaar"

.field private static final VERIFICATION_VIA_AADHAAR_USING_BIO:Ljava/lang/String; = "verification_via_aadhaar_using_bio"

.field private static final VERIFICATION_VIA_ABHA_ADDRESS_USING_AADHAAR:Ljava/lang/String; = "verification_via_abha_address_using_aadhaar"

.field private static final VERIFICATION_VIA_ABHA_ADDRESS_USING_MOBILE:Ljava/lang/String; = "verification_via_abha_address_using_mobile"

.field private static final VERIFICATION_VIA_ABHA_USING_AADHAAR:Ljava/lang/String; = "verification_via_abha_using_aadhaar"

.field private static final VERIFICATION_VIA_ABHA_USING_MOBILE:Ljava/lang/String; = "verification_via_abha_using_mobile"

.field private static final VERIFICATION_VIA_MOBILE:Ljava/lang/String; = "verification_via_mobile"


# instance fields
.field private aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private abhaAddressSearchResponse:Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;

.field private abhaConsentCheckboxModel:Ljava/lang/String;

.field private abhaNumberSelection:Landroid/widget/Spinner;

.field private authModeSelection:Landroid/widget/Spinner;

.field private beneficiaryName:Ljava/lang/String;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field private final counter:[I

.field private dob:Ljava/lang/String;

.field private familyId:Ljava/lang/String;

.field private featureName:Ljava/lang/String;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fingerPrintAuthPid:Ljava/lang/String;

.field private footerLayout:Landroid/widget/LinearLayout;

.field private gender:Ljava/lang/String;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

.field private healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

.field private healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

.field private healthIdSuffix:Ljava/lang/String;

.field private healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

.field private memberId:Ljava/lang/Integer;

.field methodSelectionRadioGroup:Landroid/widget/RadioGroup;

.field private mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private mobileTxnId:Ljava/lang/String;

.field private mobileVerificationResponse:Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private otpTB:Lcom/google/android/material/textfield/TextInputLayout;

.field private resendBtn:Lcom/google/android/material/textview/MaterialTextView;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private screen:Ljava/lang/String;

.field private searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

.field private selectedAuthMode:Ljava/lang/String;

.field private stateSelection:Landroid/widget/Spinner;

.field private final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Lcom/google/android/material/textview/MaterialTextView;

.field private final timerCounter:[Ljava/util/Timer;

.field private token:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private uniqueHealthId:Ljava/lang/String;

.field private verificationBtn:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x1

    .line 136
    new-array v0, v0, [Ljava/util/Timer;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    const/16 v0, 0x1e

    .line 137
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->counter:[I

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->states:Ljava/util/Map;

    return-void
.end method

.method private aadhaarValidation()Z
    .locals 3

    .line 1943
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1944
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

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 1950
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Aadhaar Number is not valid"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1945
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter aadhaar number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private abhaAddressValidation()Z
    .locals 2

    .line 1934
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1935
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

    .line 1936
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter ABHA Address"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)[I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->counter:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method private addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1871
    invoke-static {v0, v0, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 1872
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "Not available"

    :goto_0
    invoke-static {p2, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private displayGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_5

    .line 2104
    const-string v0, "\\d+(?:\\.\\d+)?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Female"

    const-string v2, "Other"

    const-string v3, "Male"

    if-eqz v0, :cond_1

    .line 2105
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "gender"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 2114
    :cond_1
    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "male"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2116
    :cond_2
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "female"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move-object v1, v3

    goto :goto_1

    .line 2103
    :cond_5
    const-string v1, "NA"

    :cond_6
    :goto_1
    return-object v1
.end method

.method private displayMemberDetails()V
    .locals 12

    .line 2067
    const-string v0, "( "

    const-string v1, " ( "

    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Gender"

    const-string v4, "Date of birth"

    const-string v5, "Family ID"

    const-string v6, "Member Id"

    const-string v7, "Member Name"

    const-string v8, " )"

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    .line 2069
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2071
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v9, v11, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2072
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2074
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v9, v10, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2075
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2077
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2078
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2080
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v9, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2081
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->uniqueHealthId:Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v9, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2085
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->uniqueHealthId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->familyId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2088
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v9, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2089
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->beneficiaryName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2091
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v9, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2092
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->dob:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2094
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v9, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2095
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->gender:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private formatDOB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    return-object p3
.end method

.method private formatGender(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 1891
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1892
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1900
    const-string p1, "Other"

    goto :goto_0

    .line 1895
    :cond_0
    const-string p1, "Male"

    goto :goto_0

    .line 1898
    :cond_1
    const-string p1, "Female"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getAuthMethodType()Ljava/lang/String;
    .locals 3

    .line 1909
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "AADHAAR_BIO"

    if-ne v0, v1, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LINK_MOBILE_NUMBER_BIO"

    goto :goto_0

    :cond_0
    const-string v0, "LINK_MOBILE_NUMBER"

    goto :goto_0

    .line 1911
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1912
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LINK_AADHAAR_NUMBER_BIO"

    goto :goto_0

    :cond_2
    const-string v0, "LINK_AADHAAR_NUMBER"

    goto :goto_0

    .line 1913
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LINK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1915
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LINK_ABHA_ADDRESS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getHealthIdSuffix()V
    .locals 1

    .line 223
    const-string v0, "@abdm"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    return-void
.end method

.method private healthIdValidation()Z
    .locals 3

    .line 1922
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1923
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

    .line 1926
    :cond_0
    const-string v0, "^\\d{2}(-)\\d{4}(-)\\d{4}(-)\\d{4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1927
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter valid healthId"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1924
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter healthId"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private initView()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 213
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 214
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 218
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getHealthIdSuffix()V

    .line 219
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setHealthIdVerificationMethodSelectionScreen()V

    return-void
.end method

.method private isValidContactNumber(Ljava/lang/String;)Z
    .locals 1

    .line 1057
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

    .line 1042
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1043
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

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 1047
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Mobile number must contains 10 digit numbers only"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->isValidContactNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter valid mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1044
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private sendResponse()V
    .locals 3

    .line 1779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1780
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getHealthIdAccountProfileV3Response()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getABHANumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "healthIdNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1781
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getHealthIdAccountProfileV3Response()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getPreferredAbhaAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "healthId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1782
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 1783
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->finish()V

    return-void
.end method

.method private setComponentForAuthMode(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1148
    const-string v2, "PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DEMOGRAPHICS"

    .line 1149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 1153
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 1154
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/constants/NDHMConstants;->getAuthModeFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 1155
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1158
    :cond_2
    new-instance p1, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    .line 1159
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1160
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 1161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAuthModeSelectionScreen()V

    return-void
.end method

.method private setScreenForSelectedAuthMode(Ljava/lang/String;)V
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "AADHAAR_OTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AADHAAR_BIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "MOBILE_OTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1283
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1276
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1277
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1278
    const-string v0, "txnId"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    const-string v0, "isFromAbhaSeeding"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 1280
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1273
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createOtpValidationScreen(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x616d3a12 -> :sswitch_3
        0x5048fa37 -> :sswitch_2
        0x50492c5a -> :sswitch_1
        0x772faa9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showConfirmationDialog()V
    .locals 4

    .line 2049
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda44;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    .line 2059
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close link ABHA number?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2062
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startTimer()V
    .locals 9

    .line 1607
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->counter:[I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1608
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1609
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 1610
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, v2

    .line 1614
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    aget-object v3, v0, v2

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x5dc

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1634
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public createMobileOtpValidationScreen(Ljava/lang/String;)V
    .locals 5

    .line 585
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 586
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    const-string v0, "mobileOtpValidationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 589
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "An OTP will be sent to the mobile phone number."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 591
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 592
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v2, "Enter OTP"

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 593
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 594
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 596
    :cond_1
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 597
    const-string v2, "Validate"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 600
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 601
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->or:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda35;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 631
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 632
    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 634
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda36;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    .line 639
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createMobileOtpValidationScreenForSearchABHA(Ljava/lang/String;)V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 529
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    const-string v0, "mobileOtpValidationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 532
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "An OTP will be sent to the mobile phone number."

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 534
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v2, "Enter OTP"

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 537
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 539
    :cond_1
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 540
    const-string v2, "Validate"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 543
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->or:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda37;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 572
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 573
    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 575
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda38;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    .line 580
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createOtpValidationScreen(Ljava/lang/String;)V
    .locals 7

    .line 1289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1291
    const-string v0, "otpValidationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1294
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    const-string v3, "PASSWORD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "MOBILE_OTP"

    if-eqz v2, :cond_0

    .line 1295
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    const-string v2, "Enter password to verify ABHA number."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1298
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    const-string v2, "An OTP will be sent to the mobile phone number linked to this ABHA number."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1301
    :cond_1
    const-string v2, "An OTP will be sent to the mobile phone number linked to this Aadhaar number."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1303
    :goto_0
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    invoke-virtual {v5, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    :goto_2
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1307
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 1308
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 1309
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v5, "Enter Password"

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/16 v5, 0x80

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1311
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    .line 1313
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v5, "Enter OTP"

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1315
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1319
    :cond_4
    :goto_3
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 1320
    const-string v3, "Validate"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1323
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->or:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$5;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1347
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "AADHAAR_OTP"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 1369
    :cond_5
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1370
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1371
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    goto :goto_5

    .line 1355
    :cond_6
    :goto_4
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1356
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1358
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 1359
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 1360
    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 1362
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    .line 1374
    :goto_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public displayHealthIdScreen()V
    .locals 4

    .line 1757
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1758
    const-string v0, "displayHealthIdScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1760
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Health ID linked successfully"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1762
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Name"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1763
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->beneficiaryName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1765
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Health Id"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1766
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1768
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Program Name"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1769
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getBenefitName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1771
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda20;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1775
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 783
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 784
    const-string v0, "displayHealthIdScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA number linked successfully"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 790
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 791
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 794
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getHealthIdAccountProfileV3Response()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    move-result-object p1

    .line 796
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA address"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getPreferredAbhaAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA Number"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getABHANumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Name"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getDayOfBirth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getMonthOfBirth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getYearOfBirth()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->formatDOB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Date of birth"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->formatGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gender"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Mobile Number"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Address"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Pincode"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getPincode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Email"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "State"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getStateName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "District"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getDistrictName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getBenefitName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Program Name"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public fetchAuthMode()V
    .locals 2

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->searchUserByHealthId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->getAuthMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1133
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->getAuthMethods()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setComponentForAuthMode(Ljava/util/List;)V

    goto :goto_1

    .line 1128
    :cond_1
    :goto_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda29;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1136
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda30;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public fetchAuthModeForAbhaAddress()V
    .locals 7

    .line 1169
    const-string v0, "AADHAAR_BIO"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Failed to fetch the auth mode"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1171
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->searchByAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaAddressSearchResponse:Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;

    if-eqz v2, :cond_2

    .line 1172
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->getAuthMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaAddressSearchResponse:Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->getAuthMethods()Ljava/util/List;

    move-result-object v2

    .line 1179
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "AADHAAR_OTP"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_1
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setComponentForAuthMode(Ljava/util/List;)V

    goto :goto_1

    .line 1173
    :cond_2
    :goto_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1188
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateAadhaarBioOtpForSearchABHA()V
    .locals 7

    const/4 v0, 0x1

    .line 957
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for generating otp for selected abha using bio"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_mobile_using_bio"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getABHA()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileTxnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 961
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 962
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 963
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity_;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    const-string v3, "isFromAbhaSeeding"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v3, 0x3e9

    .line 965
    invoke-virtual {p0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 969
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 972
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda22;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateAadhaarOTP()V
    .locals 7

    const/4 v0, 0x1

    .line 1250
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with generating aadhaar otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_aadhaar"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1254
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 1255
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarOtpVerificationScreen(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1259
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1262
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda39;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateMobileOtp()V
    .locals 7

    const/4 v0, 0x1

    .line 684
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with generating mobile otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 689
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createMobileOtpValidationScreen(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 693
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 696
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateMobileOtpForSearchABHA()V
    .locals 7

    const/4 v0, 0x1

    .line 980
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for generating otp for selected abha"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "search_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getABHA()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileTxnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 984
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 985
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createMobileOtpValidationScreenForSearchABHA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 989
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 992
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAccountDetails()V
    .locals 5

    const/4 v0, 0x1

    .line 1021
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for fetching state"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getAccountProfileResponse(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    if-eqz v1, :cond_0

    .line 1025
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getKycPhoto()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setConfirmationScreen(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1029
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1032
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAccountDetailsV3()V
    .locals 5

    const/4 v0, 0x1

    .line 1485
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for fetching profile details"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1487
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getAbhaAccountViaAbhaAddress(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getAccountProfileResponseV3(Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    .line 1492
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    if-eqz v1, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setConfirmationScreenV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1497
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1500
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda31;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getStateList()V
    .locals 5

    const/4 v0, 0x1

    .line 1684
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for fetching state"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1686
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getStates()[Lcom/argusoft/sewa/android/app/databean/StateResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1687
    array-length v3, v1

    if-lez v3, :cond_0

    .line 1688
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setStateSelectionScreen([Lcom/argusoft/sewa/android/app/databean/StateResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1692
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1695
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda33;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$createMobileOtpValidationScreen$4$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 1

    .line 621
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 622
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 624
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileOtp()V

    return-void
.end method

.method synthetic lambda$createMobileOtpValidationScreen$5$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 635
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 636
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendMobileOTPV3()V

    return-void
.end method

.method synthetic lambda$createMobileOtpValidationScreenForSearchABHA$2$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 564
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 565
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileOtpForSearchABHA()V

    return-void
.end method

.method synthetic lambda$createMobileOtpValidationScreenForSearchABHA$3$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 576
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 577
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendMobileOTPForSearchABHA()V

    return-void
.end method

.method synthetic lambda$createOtpValidationScreen$30$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 1

    .line 1348
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1349
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 1350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 1351
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateOtpAndGenerateToken()V

    return-void
.end method

.method synthetic lambda$createOtpValidationScreen$31$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 1363
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 1364
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendOTPV3()V

    return-void
.end method

.method synthetic lambda$displayHealthIdScreen$47$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 1773
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->sendResponse()V

    return-void
.end method

.method synthetic lambda$displayHealthIdScreenV3$9$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 811
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->sendResponse()V

    return-void
.end method

.method synthetic lambda$fetchAuthMode$23$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 2

    .line 1129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v1, "No auth modes found"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$fetchAuthMode$24$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Ljava/lang/Exception;)V
    .locals 1

    .line 1137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$fetchAuthModeForAbhaAddress$25$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v1, "No auth modes found"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$fetchAuthModeForAbhaAddress$26$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1189
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateAadhaarBioOtpForSearchABHA$19$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 974
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateAadhaarOTP$28$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateMobileOtp$6$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 697
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$generateMobileOtpForSearchABHA$20$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 993
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 994
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getAccountDetails$22$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1033
    const-string v0, "AADHAAR_BIO"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1037
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getAccountDetailsV3$38$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1501
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getStateList$45$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1696
    const-string v0, "AADHAAR_BIO"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$linkHealthId$46$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1750
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1751
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$linkHealthIdV3$8$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 776
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 777
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$loginWithMobileVerifiedAbha$21$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1014
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1015
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$52$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 1

    .line 2028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2029
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2030
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setResult(I)V

    .line 2031
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->finish()V

    goto :goto_0

    .line 2033
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$resendAadhaarOtp$36$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 1468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1469
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendAadhaarOtp$37$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1478
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendMobileOTP$10$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 824
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendMobileOTP$11$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 833
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 834
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendMobileOTPForSearchABHA$15$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 890
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendMobileOTPForSearchABHA$16$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 900
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendMobileOTPV3$12$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 847
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendMobileOTPV3$13$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 856
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 857
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendOTP$39$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 1549
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1550
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendOTP$40$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1559
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1560
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resendOTPV3$41$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 1591
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1592
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method synthetic lambda$resendOTPV3$42$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1601
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$searchABHAViaMobile$7$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 739
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setAadhaarNumberCollectionScreen$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 513
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setAadhaarOtpVerificationScreen$32$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 1422
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 1423
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyAadhaarOTP()V

    return-void
.end method

.method synthetic lambda$setAadhaarOtpVerificationScreen$33$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 0

    .line 1427
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 1428
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendAadhaarOtp()V

    return-void
.end method

.method synthetic lambda$setScreenForSelectedAuthMode$29$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 0

    .line 1283
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$showConfirmationDialog$53$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity(Landroid/view/View;)V
    .locals 1

    .line 2050
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2051
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2052
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setResult(I)V

    .line 2053
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->finish()V

    goto :goto_0

    .line 2055
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$validateAuthMode$27$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1222
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$validateAuthModeAndGenerateOtpV3$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$validateMobileOtp$17$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 918
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$validateMobileOtp$18$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 950
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 951
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 952
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$validateMobileOtpForSearchABHA$14$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 876
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 877
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$validateOtpAndGenerateToken$43$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$validateOtpAndGenerateToken$44$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1676
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 1677
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1678
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyAadhaarOTP$34$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity()V
    .locals 2

    .line 1442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1443
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method synthetic lambda$verifyAadhaarOTP$35$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1455
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyBiometricUsingABHAAddress$50$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1844
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1845
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyBiometricUsingABHANumber$51$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1865
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1866
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyBiometricUsingAadhaar$48$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1802
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyBiometricUsingMobile$49$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity([Ljava/lang/String;)V
    .locals 2

    .line 1823
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1824
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public linkHealthId(Ljava/lang/String;)V
    .locals 11

    const-string v0, "LINK_"

    const/4 v1, 0x1

    .line 1737
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue with link healthId"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1739
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileVerificationResponse:Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "LINK_MOBILE_NUMBER"

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1740
    :goto_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->featureName:Ljava/lang/String;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->linkBenefitId(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    if-eqz p1, :cond_1

    .line 1741
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LINKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1742
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayHealthIdScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1746
    const-string v0, "NDHMHealthIdCapture"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 1749
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public linkHealthIdV3()V
    .locals 12

    const/4 v0, 0x1

    .line 745
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Issue with link healthId"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 747
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 748
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAuthMethodType()Ljava/lang/String;

    move-result-object v9

    .line 749
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m$1(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v4, "No auth method type found"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getABHANumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->featureName:Ljava/lang/String;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual/range {v4 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->linkBenefitV3(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkBenefitIdResponse:Lcom/argusoft/sewa/android/app/databean/LinkBenefitIdResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 757
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getAbhaCardForVerificationViaAbhaAddress(Ljava/lang/Integer;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getProfileAccountAbhaCard(Ljava/lang/Integer;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 763
    :try_start_2
    array-length v4, v0

    if-lez v4, :cond_3

    .line 764
    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 765
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 767
    :cond_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :catch_1
    move-exception v0

    .line 772
    const-string v2, "NDHMHealthIdCapture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 775
    :cond_4
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loginWithMobileVerifiedAbha()V
    .locals 7

    const/4 v0, 0x1

    .line 1000
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for generating token"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    .line 1003
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getAccounts()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;->getABHANumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 1002
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyMobileProfileUserAbhaVerification(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1010
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1013
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda28;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1062
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_3

    .line 1064
    const-string p1, "pid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1065
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fingerPrintAuthPid:Ljava/lang/String;

    .line 1066
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 1067
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingAadhaar()V

    goto :goto_0

    .line 1069
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 1070
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingMobile()V

    goto :goto_0

    .line 1071
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 1072
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingABHAAddress()V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingABHANumber()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 2025
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v6, "methodSelectionScreen"

    const-string v7, "displayHealthIdScreen"

    const-string v1, "abhaNumberVerificationScreen"

    const-string v2, "abhAddressVerificationScreen"

    const-string v3, "mobileVerificationScreen"

    const-string v4, "healthIdVerificationScreen"

    const-string v5, "createNumberCollectionScreen"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2026
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda51;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    .line 2037
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close link ABHA number?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2040
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    .line 2041
    :cond_0
    const-string v0, "displayHealthIdScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2042
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->sendResponse()V

    goto :goto_0

    .line 2044
    :cond_1
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_11

    .line 229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "photoConfirmationV3Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "abhAddressVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "healthIdVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "authModeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "photoConfirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "mobileVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "methodSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "abhaNumberVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "createNumberCollectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "abhaNumberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "stateSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_1
    const-string v0, "AADHAAR_BIO"

    const-string v6, "MOBILE_OTP"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 268
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    if-eqz p1, :cond_11

    .line 269
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 270
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkHealthIdV3()V

    goto/16 :goto_2

    .line 249
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaAddressValidation()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 250
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fetchAuthModeForAbhaAddress()V

    goto/16 :goto_2

    .line 281
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdValidation()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 282
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 283
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fetchAuthMode()V

    goto/16 :goto_2

    .line 287
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 288
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/NDHMConstants;->getAuthModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_b

    .line 291
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateAadhaarAuthModeV3()V

    goto/16 :goto_2

    .line 292
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v4, :cond_c

    .line 293
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileAuthModeV3()V

    goto/16 :goto_2

    .line 295
    :cond_c
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateAuthModeAndGenerateOtpV3()V

    goto/16 :goto_2

    .line 300
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    if-eqz p1, :cond_11

    .line 301
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 302
    const-string p1, "24"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkHealthId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 262
    :pswitch_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberValidation()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 264
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchABHAViaMobile()V

    goto/16 :goto_2

    .line 231
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_d

    .line 232
    const-string p1, "Please Select an option"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 233
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 234
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberVerificationScreen()V

    goto/16 :goto_2

    .line 235
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_f

    .line 236
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaAddressVerificationScreen()V

    goto/16 :goto_2

    .line 237
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v4, :cond_10

    .line 238
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setMobileVerificationScreen()V

    goto :goto_2

    .line 239
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_11

    .line 240
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarNumberCollectionScreen()V

    goto :goto_2

    .line 244
    :pswitch_7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdValidation()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 245
    const-string p1, "AADHAAR_OTP"

    filled-new-array {p1, v6, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setComponentForAuthMode(Ljava/util/List;)V

    goto :goto_2

    .line 255
    :pswitch_8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarValidation()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 256
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 257
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateAadhaarOTP()V

    goto :goto_2

    .line 274
    :pswitch_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 275
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setComponentForAuthMode(Ljava/util/List;)V

    goto :goto_2

    .line 306
    :pswitch_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showProcessDialog()V

    .line 308
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->states:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkHealthId(Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64a71bb9 -> :sswitch_a
        -0x33b3522b -> :sswitch_9
        -0x1ee0fdd1 -> :sswitch_8
        0x4d3448a -> :sswitch_7
        0x38b9adf7 -> :sswitch_6
        0x393c6aa9 -> :sswitch_5
        0x404d0ed3 -> :sswitch_4
        0x5504e22d -> :sswitch_3
        0x61f08b5e -> :sswitch_2
        0x788c5ed4 -> :sswitch_1
        0x78c079f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 182
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 184
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1959
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1961
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1966
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_14

    .line 1967
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "photoConfirmationV3Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "abhAddressVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "displayHealthIdScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "healthIdVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "authModeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "mobileVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "methodSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "abhaNumberVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "createNumberCollectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "mobileOtpValidationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "aadharNumberVerificationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "abhaNumberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "otpValidationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 2006
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showConfirmationDialog()V

    goto/16 :goto_1

    .line 2015
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->sendResponse()V

    goto/16 :goto_1

    .line 1989
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 1990
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberVerificationScreen()V

    goto :goto_1

    .line 1991
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_f

    .line 1992
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaAddressVerificationScreen()V

    goto :goto_1

    .line 1993
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v4, :cond_10

    .line 1994
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarNumberCollectionScreen()V

    goto :goto_1

    .line 1995
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_14

    .line 1996
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setMobileVerificationScreen()V

    goto :goto_1

    .line 1969
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setResult(I)V

    .line 1970
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->finish()V

    goto :goto_1

    .line 1977
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setHealthIdVerificationMethodSelectionScreen()V

    goto :goto_1

    .line 1980
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v2

    if-eqz p1, :cond_11

    .line 1981
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1983
    :cond_11
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setMobileVerificationScreen()V

    goto :goto_1

    .line 2000
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v2

    if-eqz p1, :cond_12

    .line 2001
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2003
    :cond_12
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarNumberCollectionScreen()V

    goto :goto_1

    .line 1986
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setMobileVerificationScreen()V

    goto :goto_1

    .line 2009
    :pswitch_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v2

    if-eqz p1, :cond_13

    .line 2010
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2012
    :cond_13
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAuthModeSelectionScreen()V

    :cond_14
    :goto_1
    return v1

    .line 1962
    :cond_15
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4001cc70 -> :sswitch_c
        -0x33b3522b -> :sswitch_b
        -0x2ddccd7b -> :sswitch_a
        -0x20d8ec72 -> :sswitch_9
        -0x1ee0fdd1 -> :sswitch_8
        0x4d3448a -> :sswitch_7
        0x38b9adf7 -> :sswitch_6
        0x393c6aa9 -> :sswitch_5
        0x5504e22d -> :sswitch_4
        0x61f08b5e -> :sswitch_3
        0x6d82ed45 -> :sswitch_2
        0x788c5ed4 -> :sswitch_1
        0x78c079f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 189
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 193
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->finish()V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "memberId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    .line 201
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nameOfBeneficiary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->beneficiaryName:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "featureName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->featureName:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "abhaConsentCheckboxModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaConsentCheckboxModel:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dob"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->dob:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->gender:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uniqueHealthId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->uniqueHealthId:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "familyId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->familyId:Ljava/lang/String;

    .line 208
    const-string v0, "Seed ABHA Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public resendAadhaarOtp()V
    .locals 7

    const/4 v0, 0x1

    .line 1462
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with generating aadhaar otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_aadhaar"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1466
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 1467
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda24;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1474
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1477
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda25;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendMobileOTP()V
    .locals 5

    const/4 v0, 0x1

    .line 818
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending OTP again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->resendLoginMobileOTP(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 821
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 829
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 832
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendMobileOTPForSearchABHA()V
    .locals 7

    const/4 v0, 0x1

    .line 883
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending OTP again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "search_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getABHA()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileTxnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 888
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda49;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 895
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 898
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda50;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendMobileOTPV3()V
    .locals 7

    const/4 v0, 0x1

    .line 840
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending OTP again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 844
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 845
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda40;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 852
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 855
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda41;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendOTP()V
    .locals 5

    const/4 v0, 0x1

    .line 1544
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue for sending OTP again"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1546
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->resendOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1547
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1548
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda55;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1555
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1558
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendOTPV3()V
    .locals 8

    const/4 v0, 0x1

    .line 1566
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Issue for sending OTP again"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1568
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 1569
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    const-string v5, "MOBILE_OTP"

    const-string v6, "AADHAAR_OTP"

    const/4 v7, 0x0

    if-ne v2, v0, :cond_1

    .line 1573
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    const-string v0, "verification_via_abha_using_aadhaar"

    goto :goto_0

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1576
    const-string v0, "verification_via_abha_using_mobile"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1581
    const-string v0, "verification_via_abha_address_using_aadhaar"

    goto :goto_0

    .line 1582
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1583
    const-string v0, "verification_via_abha_address_using_mobile"

    goto :goto_0

    :cond_3
    move-object v0, v7

    .line 1587
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v4, v5, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1589
    const-string v2, "txnId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 1590
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda26;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 1597
    const-string v2, "NDHMHealthIdCapture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1600
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda27;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public searchABHAViaMobile()V
    .locals 9

    .line 704
    const-string v0, "\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Issue with searching ABHA via mobile"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 706
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v4, "search_via_mobile"

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->searchABHA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    if-eqz v2, :cond_2

    .line 708
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getTxnId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileTxnId:Ljava/lang/String;

    .line 709
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getABHA()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchAbhaResponse:Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->getABHA()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;

    .line 714
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v6}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 715
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getIndex()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getABHANumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->formatGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 718
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :cond_0
    new-instance v0, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    .line 722
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v4, v5, v2}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 723
    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 724
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 725
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 726
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberSelectionScreen()V

    goto :goto_1

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 729
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "No Abha numbers found for given Mobile Number"

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 734
    const-string v2, "NDHMHealthIdCapture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 737
    :cond_2
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAadhaarNumberCollectionScreen()V
    .locals 5

    .line 496
    const-string v0, "createNumberCollectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 498
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayMemberDetails()V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Aadhaar Number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/16 v1, 0xc

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 502
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 505
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 506
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "I have verified that the details entered match with the beneficiary AADHAR details"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/16 v3, 0x30

    .line 507
    invoke-virtual {v1, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 508
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda34;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAadhaarOtpVerificationScreen(Ljava/lang/String;)V
    .locals 4

    .line 1379
    const-string v0, "aadharNumberVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1383
    const-string v0, "Please enter the OTP received on the Aadhaar linked Mobile Number"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->aadhaar_otp_validation_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1385
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {v2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1388
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Enter OTP"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1390
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1393
    :cond_1
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    .line 1394
    const-string v0, "Validate"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1397
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 1398
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->resend:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    .line 1399
    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    .line 1401
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->skip:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->or:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1421
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verificationBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda47;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendBtn:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda48;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1432
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V

    return-void
.end method

.method public setAbhaAddressVerificationScreen()V
    .locals 9

    .line 432
    const-string v0, "abhAddressVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Validate"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v7, 0x1

    const-string v8, "~#^&`|$%*!@()[]<>{}\":;?+=\u00d7\u00f7\u20ac\u00a3\u00a5\u20a9%\u300a\u300b\u00a1\u00bf\u00a4\u2022"

    const-string v4, "ABHA address"

    const/4 v5, -0x1

    const/16 v6, 0x32

    invoke-static/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getFilteredEditText(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 438
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 439
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 442
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 455
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 460
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 464
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayMemberDetails()V

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "Seed ABHA Number"

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "ABHA address"

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setAbhaNumberSelectionScreen()V
    .locals 4

    .line 644
    const-string v0, "abhaNumberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 646
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Select ABHA Number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public setAbhaNumberVerificationScreen()V
    .locals 5

    .line 387
    const-string v0, "abhaNumberVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 389
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Validate"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const-string v3, "XX-XXXX-XXXX-XXXX"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 393
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "1234567890-"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 424
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayMemberDetails()V

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Seed ABHA Number"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Abha Number"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setAuthModeSelectionScreen()V
    .locals 4

    .line 1196
    const-string v0, "authModeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Select auth mode to link health id"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Select auth mode"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->authModeSelection:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public setConfirmationScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 655
    const-string v0, "photoConfirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 657
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0xc

    if-eqz p1, :cond_0

    .line 661
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 662
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x1

    const/16 v3, 0x12c

    .line 663
    invoke-static {p1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 664
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v2, v4, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 665
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 666
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 667
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v4, "Based on ABHA Number verification, the ABHA is linked with the below profile and name."

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 670
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure you want to continue? Based on ABHA Number verification, the ABHA is linked with the following name."

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 673
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    const/16 p2, 0x11

    .line 674
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 675
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 676
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Next"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public setConfirmationScreenV3()V
    .locals 5

    .line 1508
    const-string v0, "photoConfirmationV3Screen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getKycPhoto()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getKycPhoto()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getProfilePhoto()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1514
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1515
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x12c

    .line 1516
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1517
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v2, v4, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 1518
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0xc

    .line 1519
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "Based on ABHA Number verification, the ABHA is linked with the below profile and name."

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure you want to continue? Based on ABHA Number verification, the ABHA is linked with the following name."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1526
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getPreferredAbhaAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABHA address"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getABHANumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABHA Number"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Name"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getDayOfBirth()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getMonthOfBirth()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getYearOfBirth()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->formatDOB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Date of birth"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->formatGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gender"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getMobile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mobile Number"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Address"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getPincode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pincode"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getEmail()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Email"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getStateName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "State"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdAccountProfileV3Response:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileV3Response;->getDistrictName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "District"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->addQuestionAnswerView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public setHealthIdVerificationMethodSelectionScreen()V
    .locals 4

    .line 367
    const-string v0, "methodSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Select method for ABHA Seeding"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "By "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ABHA Number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 375
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ABHA address"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Aadhaar Number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p0, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Mobile Number"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setHealthIdVerificationScreen()V
    .locals 5

    .line 1082
    const-string v0, "healthIdVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1084
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Validate"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const-string v3, "XX-XXXX-XXXX-XXXX"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1088
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "1234567890-"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1089
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "Seed ABHA Number"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v2, "ABHA Number"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMobileVerificationScreen()V
    .locals 5

    .line 479
    const-string v0, "mobileVerificationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Validate"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const-string v3, "Mobile Number"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    .line 485
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayMemberDetails()V

    .line 490
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->mobileNumberTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setStateSelectionScreen([Lcom/argusoft/sewa/android/app/databean/StateResponse;)V
    .locals 7

    .line 1706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1708
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Link"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    const-string v0, "stateSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->screen:Ljava/lang/String;

    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->states:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1715
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 1716
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->states:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/StateResponse;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/StateResponse;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 1719
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/StateResponse;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/StateResponse;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 1721
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1724
    :cond_0
    new-instance p1, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    .line 1725
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1726
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 1727
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1728
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1730
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v1, "Select State"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1731
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->stateSelection:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1732
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    return-void
.end method

.method public validateAadhaarAuthModeV3()V
    .locals 3

    .line 1229
    const-string v0, "AADHAAR_OTP"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateAadhaarOTP()V

    goto :goto_0

    .line 1231
    :cond_0
    const-string v0, "AADHAAR_BIO"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 1233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/FingerPrintScannerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    const-string v1, "isFromAbhaSeeding"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 1235
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public validateAuthMode()V
    .locals 5

    const/4 v0, 0x1

    .line 1209
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with auth method validation or selected auth mode is not allowed for you"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->healthIdVerificationAuthInit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1213
    const-string v3, "txnId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 1214
    const-string v3, "message"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setScreenForSelectedAuthMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1218
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1221
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateAuthModeAndGenerateOtpV3()V
    .locals 9

    const/4 v0, 0x1

    .line 318
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Issue with auth method validation or selected auth mode is not allowed for you"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 321
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const-string v5, "AADHAAR_BIO"

    const-string v6, "MOBILE_OTP"

    const-string v7, "AADHAAR_OTP"

    const/4 v8, 0x0

    if-ne v2, v0, :cond_2

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "verification_via_abha_using_aadhaar"

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    const-string v0, "verification_via_abha_using_mobile"

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const-string v0, "verification_via_abha_using_bio"

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "verification_via_abha_address_using_aadhaar"

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    const-string v0, "verification_via_abha_address_using_mobile"

    goto :goto_0

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    const-string v0, "verification_via_abha_address_using_bio"

    goto :goto_0

    :cond_5
    move-object v0, v8

    :goto_0
    if-eqz v0, :cond_6

    .line 344
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v4, v5, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->generateOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 346
    const-string v2, "txnId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    .line 347
    const-string v2, "message"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setScreenForSelectedAuthMode(Ljava/lang/String;)V

    return-void

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 356
    const-string v2, "NDHMHealthIdCapture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 359
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateMobileAuthModeV3()V
    .locals 2

    .line 1241
    const-string v0, "MOBILE_OTP"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateMobileOtpForSearchABHA()V

    goto :goto_0

    .line 1243
    :cond_0
    const-string v0, "AADHAAR_BIO"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateAadhaarBioOtpForSearchABHA()V

    :cond_1
    :goto_0
    return-void
.end method

.method public validateMobileOtp()V
    .locals 8

    const/4 v0, 0x1

    .line 908
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with verifying mobile otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_2

    .line 912
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda45;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 924
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;

    .line 925
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 926
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;->getABHANumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;->getABHANumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;->getPreferredAbhaAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 928
    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 929
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_0
    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    .line 933
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListOfOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 934
    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 935
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 936
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->abhaNumberSelection:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 937
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberSelectionScreen()V

    goto :goto_1

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->hideProcessDialog()V

    .line 940
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->context:Landroid/content/Context;

    const-string v3, "No Abha numbers found for given Mobile Number"

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .line 945
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 948
    :cond_2
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda46;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateMobileOtpForSearchABHA()V
    .locals 7

    const/4 v0, 0x1

    .line 863
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with verifying mobile otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "search_via_mobile"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 872
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 875
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda53;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public validateOtpAndGenerateToken()V
    .locals 7

    const/4 v0, 0x1

    .line 1639
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Issue for generating token"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1642
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->methodSelectionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    const-string v4, "MOBILE_OTP"

    const-string v5, "AADHAAR_OTP"

    if-ne v2, v0, :cond_1

    .line 1644
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    const-string v0, "verification_via_abha_using_aadhaar"

    goto :goto_0

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1647
    const-string v0, "verification_via_abha_using_mobile"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 1650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1651
    const-string v0, "verification_via_abha_address_using_aadhaar"

    goto :goto_0

    .line 1652
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->selectedAuthMode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1653
    const-string v0, "verification_via_abha_address_using_mobile"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1657
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v0, :cond_4

    .line 1659
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda21;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1665
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1666
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1671
    const-string v2, "NDHMHealthIdCapture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1674
    :cond_4
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda23;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyAadhaarOTP()V
    .locals 7

    const/4 v0, 0x1

    .line 1437
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue while validating the aadhaar otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1439
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_aadhaar"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->otpTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtpForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 1441
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda42;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1446
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1447
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1451
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1454
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda43;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyBiometricUsingABHAAddress()V
    .locals 7

    const/4 v0, 0x1

    .line 1830
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with verifying aadhaar bio using mobile"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_abha_address_using_bio"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fingerPrintAuthPid:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 1835
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1836
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1840
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1843
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda54;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyBiometricUsingABHANumber()V
    .locals 7

    const/4 v0, 0x1

    .line 1851
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with verifying aadhaar bio via abha number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1853
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_abha_using_bio"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fingerPrintAuthPid:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 1856
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1857
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1861
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1864
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyBiometricUsingAadhaar()V
    .locals 7

    const/4 v0, 0x1

    .line 1788
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with generating aadhaar otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1790
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_aadhaar_using_bio"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->aadhaarTB:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fingerPrintAuthPid:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 1793
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1794
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1798
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1801
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda32;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyBiometricUsingMobile()V
    .locals 7

    const/4 v0, 0x1

    .line 1809
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Issue with generating aadhaar otp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1811
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v3, "verification_via_mobile_using_bio"

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fingerPrintAuthPid:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->memberId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->txnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyBiometricForAbhaVerificationV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->healthIdProfileLoginVerifyResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;

    if-eqz v1, :cond_0

    .line 1814
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->token:Ljava/lang/String;

    .line 1815
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1819
    const-string v3, "NDHMHealthIdCapture"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1822
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda52;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
