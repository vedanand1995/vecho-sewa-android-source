.class public final Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;
.super Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;
.source "NDHMHealthIdCaptureActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;
    }
.end annotation


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;-><init>()V

    .line 34
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setHealthIdVerificationMethodSelectionScreen()V

    return-void
.end method

.method static synthetic access$1101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setHealthIdVerificationScreen()V

    return-void
.end method

.method static synthetic access$1201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAuthModeSelectionScreen()V

    return-void
.end method

.method static synthetic access$1301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createOtpValidationScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarOtpVerificationScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setConfirmationScreenV3()V

    return-void
.end method

.method static synthetic access$1601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;[Lcom/argusoft/sewa/android/app/databean/StateResponse;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setStateSelectionScreen([Lcom/argusoft/sewa/android/app/databean/StateResponse;)V

    return-void
.end method

.method static synthetic access$1701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->displayHealthIdScreen()V

    return-void
.end method

.method static synthetic access$1801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->doUpdate(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateAuthModeAndGenerateOtpV3()V

    return-void
.end method

.method static synthetic access$2001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateMobileOtp()V

    return-void
.end method

.method static synthetic access$201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberVerificationScreen()V

    return-void
.end method

.method static synthetic access$2101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->searchABHAViaMobile()V

    return-void
.end method

.method static synthetic access$2201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkHealthIdV3()V

    return-void
.end method

.method static synthetic access$2301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendMobileOTP()V

    return-void
.end method

.method static synthetic access$2401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendMobileOTPV3()V

    return-void
.end method

.method static synthetic access$2501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileOtpForSearchABHA()V

    return-void
.end method

.method static synthetic access$2601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendMobileOTPForSearchABHA()V

    return-void
.end method

.method static synthetic access$2701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileOtp()V

    return-void
.end method

.method static synthetic access$2801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateAadhaarBioOtpForSearchABHA()V

    return-void
.end method

.method static synthetic access$2901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateMobileOtpForSearchABHA()V

    return-void
.end method

.method static synthetic access$3001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->loginWithMobileVerifiedAbha()V

    return-void
.end method

.method static synthetic access$301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaAddressVerificationScreen()V

    return-void
.end method

.method static synthetic access$3101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetails()V

    return-void
.end method

.method static synthetic access$3201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fetchAuthMode()V

    return-void
.end method

.method static synthetic access$3301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->fetchAuthModeForAbhaAddress()V

    return-void
.end method

.method static synthetic access$3401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateAuthMode()V

    return-void
.end method

.method static synthetic access$3501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateAadhaarAuthModeV3()V

    return-void
.end method

.method static synthetic access$3601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateMobileAuthModeV3()V

    return-void
.end method

.method static synthetic access$3701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->generateAadhaarOTP()V

    return-void
.end method

.method static synthetic access$3801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyAadhaarOTP()V

    return-void
.end method

.method static synthetic access$3901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendAadhaarOtp()V

    return-void
.end method

.method static synthetic access$4001(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getAccountDetailsV3()V

    return-void
.end method

.method static synthetic access$401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setMobileVerificationScreen()V

    return-void
.end method

.method static synthetic access$4101(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendOTP()V

    return-void
.end method

.method static synthetic access$4201(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->resendOTPV3()V

    return-void
.end method

.method static synthetic access$4301(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->validateOtpAndGenerateToken()V

    return-void
.end method

.method static synthetic access$4401(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->getStateList()V

    return-void
.end method

.method static synthetic access$4501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->linkHealthId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingAadhaar()V

    return-void
.end method

.method static synthetic access$4701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingMobile()V

    return-void
.end method

.method static synthetic access$4801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingABHAAddress()V

    return-void
.end method

.method static synthetic access$4901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->verifyBiometricUsingABHANumber()V

    return-void
.end method

.method static synthetic access$501(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAadhaarNumberCollectionScreen()V

    return-void
.end method

.method static synthetic access$601(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createMobileOtpValidationScreenForSearchABHA(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$701(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->createMobileOtpValidationScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$801(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setAbhaNumberSelectionScreen()V

    return-void
.end method

.method static synthetic access$901(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setConfirmationScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    .line 51
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->serviceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 52
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    .line 53
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl_;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;
    .locals 1

    .line 75
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;
    .locals 1

    .line 79
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public createMobileOtpValidationScreen(Ljava/lang/String;)V
    .locals 3

    .line 168
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$8;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createMobileOtpValidationScreenForSearchABHA(Ljava/lang/String;)V
    .locals 3

    .line 156
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$7;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$7;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createOtpValidationScreen(Ljava/lang/String;)V
    .locals 3

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$14;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$14;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public displayHealthIdScreen()V
    .locals 4

    .line 288
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$18;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$18;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public displayHealthIdScreenV3(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 204
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$11;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Landroid/graphics/Bitmap;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public doUpdate(Ljava/lang/Boolean;)V
    .locals 8

    .line 300
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$19;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$19;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public fetchAuthMode()V
    .locals 7

    .line 524
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$33;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$33;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public fetchAuthModeForAbhaAddress()V
    .locals 7

    .line 540
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$34;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$34;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateAadhaarBioOtpForSearchABHA()V
    .locals 7

    .line 460
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$29;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$29;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateAadhaarOTP()V
    .locals 7

    .line 604
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$38;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$38;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateMobileOtp()V
    .locals 7

    .line 332
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$21;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$21;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public generateMobileOtpForSearchABHA()V
    .locals 7

    .line 476
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$30;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$30;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getAccountDetails()V
    .locals 7

    .line 508
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$32;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$32;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getAccountDetailsV3()V
    .locals 7

    .line 652
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$41;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$41;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public getStateList()V
    .locals 7

    .line 716
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$45;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$45;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public linkHealthId(Ljava/lang/String;)V
    .locals 8

    .line 732
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$46;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$46;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public linkHealthIdV3()V
    .locals 7

    .line 364
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$23;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$23;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public loginWithMobileVerifiedAbha()V
    .locals 7

    .line 492
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$31;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$31;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->init_(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method public resendAadhaarOtp()V
    .locals 7

    .line 636
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$40;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$40;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendMobileOTP()V
    .locals 7

    .line 380
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$24;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$24;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendMobileOTPForSearchABHA()V
    .locals 7

    .line 428
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$27;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$27;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendMobileOTPV3()V
    .locals 7

    .line 396
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$25;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$25;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendOTP()V
    .locals 7

    .line 668
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$42;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$42;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public resendOTPV3()V
    .locals 7

    .line 684
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$43;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$43;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public searchABHAViaMobile()V
    .locals 7

    .line 348
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$22;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$22;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public setAadhaarNumberCollectionScreen()V
    .locals 4

    .line 144
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$6;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAadhaarOtpVerificationScreen(Ljava/lang/String;)V
    .locals 3

    .line 252
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$15;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$15;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAbhaAddressVerificationScreen()V
    .locals 4

    .line 120
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$4;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAbhaNumberSelectionScreen()V
    .locals 4

    .line 180
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$9;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAbhaNumberVerificationScreen()V
    .locals 4

    .line 108
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$3;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAuthModeSelectionScreen()V
    .locals 4

    .line 228
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$13;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setConfirmationScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$10;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setConfirmationScreenV3()V
    .locals 4

    .line 264
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$16;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$16;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setContentView(I)V

    .line 59
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {p1, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    return-void
.end method

.method public setHealthIdVerificationMethodSelectionScreen()V
    .locals 4

    .line 96
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setHealthIdVerificationScreen()V
    .locals 4

    .line 216
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$12;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setMobileVerificationScreen()V
    .locals 4

    .line 132
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$5;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;)V

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setStateSelectionScreen([Lcom/argusoft/sewa/android/app/databean/StateResponse;)V
    .locals 3

    .line 276
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$17;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$17;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;[Lcom/argusoft/sewa/android/app/databean/StateResponse;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 7

    .line 84
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    const-wide/16 p1, 0x0

    const-string p3, ""

    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public validateAadhaarAuthModeV3()V
    .locals 7

    .line 572
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$36;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$36;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateAuthMode()V
    .locals 7

    .line 556
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$35;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$35;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateAuthModeAndGenerateOtpV3()V
    .locals 7

    .line 316
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$20;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$20;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateMobileAuthModeV3()V
    .locals 7

    .line 588
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$37;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$37;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateMobileOtp()V
    .locals 7

    .line 444
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$28;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$28;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateMobileOtpForSearchABHA()V
    .locals 7

    .line 412
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$26;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$26;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public validateOtpAndGenerateToken()V
    .locals 7

    .line 700
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$44;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$44;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyAadhaarOTP()V
    .locals 7

    .line 620
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$39;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$39;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyBiometricUsingABHAAddress()V
    .locals 7

    .line 780
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$49;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$49;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyBiometricUsingABHANumber()V
    .locals 7

    .line 796
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$50;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$50;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyBiometricUsingAadhaar()V
    .locals 7

    .line 748
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$47;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$47;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public verifyBiometricUsingMobile()V
    .locals 7

    .line 764
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$48;

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v2, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_$48;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/BackgroundExecutor;->execute(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
