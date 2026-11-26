.class public Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;
.super Ljava/lang/Object;
.source "OtpVerificationListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private counter:[I

.field private imageView:Landroid/widget/ImageView;

.field private instruction:Lcom/google/android/material/textview/MaterialTextView;

.field private mobileEditText:Lcom/google/android/material/textview/MaterialTextView;

.field private note:Lcom/google/android/material/textview/MaterialTextView;

.field private noticeText:Lcom/google/android/material/textview/MaterialTextView;

.field private otpText:Lcom/google/android/material/textfield/TextInputLayout;

.field private processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private scheme:Lcom/google/android/material/textview/MaterialTextView;

.field private sendButton:Lcom/google/android/material/button/MaterialButton;

.field private smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field private timer:Lcom/google/android/material/textview/MaterialTextView;

.field private timerCounter:[Ljava/util/Timer;

.field private uIHandler:Landroid/os/Handler;

.field private verificationComponent:Landroid/widget/LinearLayout;

.field private verifyButton:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 43
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->counter:[I

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [Ljava/util/Timer;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timerCounter:[Ljava/util/Timer;

    .line 217
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->context:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    .line 219
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 221
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->uIHandler:Landroid/os/Handler;

    .line 223
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "HandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->backgroundHandler:Landroid/os/Handler;

    .line 227
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->mobileEditText:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->counter:[I

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->noticeText:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->generateToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/checkbox/MaterialCheckBox;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->scheme:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->instruction:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Lcom/argusoft/sewa/android/app/component/MyProcessDialog;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->note:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timer:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verifyButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->hideProcessDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)[Ljava/util/Timer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timerCounter:[Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->uIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private generateToast(Ljava/lang/String;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->uIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$3;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private hideProcessDialog()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->uIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$7;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->resetBtn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 233
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 234
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->mobileText:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->mobileEditText:Lcom/google/android/material/textview/MaterialTextView;

    .line 235
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->requestOtpBtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    .line 236
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->note:Lcom/google/android/material/textview/MaterialTextView;

    .line 237
    invoke-virtual {v2}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->timer:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timer:Lcom/google/android/material/textview/MaterialTextView;

    .line 239
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->otpText:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 240
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verifyButton:Lcom/google/android/material/button/MaterialButton;

    .line 241
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->notice:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->noticeText:Lcom/google/android/material/textview/MaterialTextView;

    .line 242
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->smsScheme:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 243
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->scheme:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->scheme:Lcom/google/android/material/textview/MaterialTextView;

    .line 244
    invoke-virtual {v2}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->instruction:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->instruction:Lcom/google/android/material/textview/MaterialTextView;

    .line 246
    invoke-virtual {v2}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verificationComponent:Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->imageView:Landroid/widget/ImageView;

    .line 249
    const-string v2, "Verify mobile number"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timerCounter:[Ljava/util/Timer;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 256
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$4;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$5;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verifyButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getRelatedpropertyname()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    if-lez v1, :cond_1

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 295
    const-string v1, "F/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->mobileEditText:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private showProcessDialog()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->uIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$6;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->requestOtpBtn:I

    const-string v2, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    if-ne v0, v1, :cond_1

    .line 63
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->showProcessDialog()V

    .line 68
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->backgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->verifyOtpBtn:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 135
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->context:Landroid/content/Context;

    const-string v0, "Verification code validation failed."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->showProcessDialog()V

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->backgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/R$id;->resetBtn:I

    if-ne p1, v0, :cond_5

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timerCounter:[Ljava/util/Timer;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timerCounter:[Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    aput-object v0, p1, v3

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->counter:[I

    const/4 v0, 0x1

    aput v3, p1, v0

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->sendButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Request verification code"

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->note:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->timer:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->otpText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verifyButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->verifyButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->noticeText:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->smsScheme:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {p1, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->scheme:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->instruction:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/OtpVerificationListener;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
