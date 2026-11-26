.class public Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "OtpVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private contactNumber:Ljava/lang/String;

.field private footer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private infoText:Lcom/google/android/material/textview/MaterialTextView;

.field private isMobileVerified:Z

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

.field private otp:Lcom/google/android/material/textfield/TextInputLayout;

.field private resendOtp:Lcom/google/android/material/button/MaterialButton;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private volatile stopTimer:Z

.field private submitOtp:Lcom/google/android/material/button/MaterialButton;

.field private submitResendLayout:Landroid/widget/LinearLayout;

.field private timer:Lcom/google/android/material/textview/MaterialTextView;

.field private timerCount:I

.field userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

.field private verify:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->isMobileVerified:Z

    .line 83
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->stopTimer:Z

    return-void
.end method

.method private checkValidation(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->isMobileVerified:Z

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please verify the mobile number through OTP"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private generateUIComponents()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const/4 v1, 0x4

    const-string v2, "Enter OTP"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v4, "Verify OTP"

    invoke-static {v0, v4, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitOtp:Lcom/google/android/material/button/MaterialButton;

    .line 213
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v2, "Resend OTP"

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    .line 218
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "60"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 116
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 117
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 118
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 121
    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->footer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->isUserOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->retrieveContactNumber()V

    :cond_0
    return-void
.end method

.method private isUserOnline()Z
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    const/16 v6, -0x69

    const/4 v3, 0x0

    const-string v4, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const/4 v0, 0x0

    return v0
.end method

.method private updateTimerText()V
    .locals 2

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->stopTimer:Z

    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public addBodyLayout()V
    .locals 4

    .line 179
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->generateUIComponents()V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "OTP Verification"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 185
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "******"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please enter One Time Password sent to your registered mobile number - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->infoText:Lcom/google/android/material/textview/MaterialTextView;

    .line 190
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitOtp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->updateTimerText()V

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$generateUIComponents$2$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Landroid/view/View;)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->onSubmitOtpButtonClick()V

    return-void
.end method

.method synthetic lambda$generateUIComponents$3$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->onResendOtpButtonClick()V

    return-void
.end method

.method synthetic lambda$isUserOnline$0$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$onBackPressed$18$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Landroid/view/View;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 394
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->myIntent:Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->finish()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onResendOtpButtonClick$10$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 292
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->updateTimerText()V

    .line 293
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$onSubmitOtpButtonClick$11$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "Please enter OTP"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onSubmitOtpButtonClick$12$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "OTP Verified Successfully"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitOtp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitData()V

    return-void
.end method

.method synthetic lambda$onSubmitOtpButtonClick$13$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->isMobileVerified:Z

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "Invalid OTP"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$onSubmitOtpButtonClick$14$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 2

    .line 329
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTP is expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->stopTimer:Z

    .line 331
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 334
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v0, "Something went wrong. Please try again."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$onVerifyButtonClick$4$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onVerifyButtonClick$5$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "Some error occurred. Please try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onVerifyButtonClick$6$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->verify:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitResendLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->updateTimerText()V

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$retrieveContactNumber$1$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "Unable to get contact number. Please try after some time."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$submitData$15$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$submitData$16$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    const-string v1, "Some error occurred. Please try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$submitData$17$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$updateTimerText$7$com-argusoft-sewa-android-app-activity-OtpVerificationActivity(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$updateTimerText$8$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timer:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->resendOtp:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$updateTimerText$9$com-argusoft-sewa-android-app-activity-OtpVerificationActivity()V
    .locals 2

    .line 0
    const/16 v0, 0x3c

    .line 258
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    .line 259
    :goto_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->stopTimer:Z

    if-nez v0, :cond_1

    .line 260
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    .line 261
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;I)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 270
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 274
    :goto_1
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->timerCount:I

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 388
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    const/16 v5, -0x97

    const/4 v2, 0x0

    const-string v3, "Do you want to close OTP Verification?"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->checkValidation(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->submitData()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->context:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->initView()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 101
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onResendOtpButtonClick()V
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->showProcessDialog()V

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->sendOtpRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    :goto_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->setContentView(Landroid/view/View;)V

    .line 112
    :cond_0
    const-string v0, "OTP Verification"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onSubmitOtpButtonClick()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->showProcessDialog()V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    .line 307
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->otp:Lcom/google/android/material/textfield/TextInputLayout;

    .line 308
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->verifyOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 310
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->isMobileVerified:Z

    .line 312
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 320
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onVerifyButtonClick()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->showProcessDialog()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 230
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->checkPhoneNumberAlreadyExists(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->sendOtpRequest(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 235
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public retrieveContactNumber()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->showProcessDialog()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getContactNumberForOtpVerification(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->contactNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->sendOtpRequest(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->addBodyLayout()V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setTitle(Ljava/lang/String;)V

    .line 132
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public submitData()V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->showProcessDialog()V

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->updateOtpVerificationDate(Ljava/lang/Integer;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->getLoginBeanFromDb()Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-result-object v0

    .line 366
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setOtpVerificationDate(Ljava/util/Date;)V

    .line 367
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->createOrUpdate(Lcom/argusoft/sewa/android/app/model/LoginBean;)V

    .line 368
    sput-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;Lcom/argusoft/sewa/android/app/restclient/RestHttpException;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/OtpVerificationActivity;->hideProcessDialog()V

    return-void
.end method
