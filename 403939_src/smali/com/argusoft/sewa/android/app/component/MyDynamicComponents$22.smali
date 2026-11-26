.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;
.super Landroid/text/style/ClickableSpan;
.source "MyDynamicComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getCheckBoxWithTextBoxAadhaar(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3477
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 3517
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/widget/LinearLayout;Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 3524
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3525
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 3526
    const-string p0, "about:blank"

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3527
    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3528
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 3481
    :try_start_0
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3482
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3484
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3485
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    .line 3486
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3488
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3489
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3491
    const-string v5, "<html><body style=\'padding:16px; font-size:14px; line-height:1.6\'><h3>Aadhaar Consent</h3><p>I <b></b>, hereby give my voluntary consent to <b>TeCHO+</b> to collect and use my Aadhaar number/Virtual ID and Aadhaar-based information for the purpose of beneficiary registration. </p><p><b>I understand and agree to the following:</b></p><p><b>Purpose:</b> My Aadhaar details will be used solely for the specified purpose and will not be used for any other reason without my further consent.</p><p><b>Storage:</b> TeCHO+ will store my Aadhaar number securely in a dedicated Aadhaar Data Vault as per UIDAI guidelines and will not share it with any third party except as required by law.</p><p><b>Withdrawal:</b> I am aware that I can withdraw this consent at any time by contacting support, upon which my Aadhaar data will be deleted/purged from the vault as per applicable regulations.</p><p><b>Redaction:</b> I understand that if I provide a physical/digital copy of my Aadhaar card, the first 8 digits should be masked/redacted.</p><br></body></html>"

    .line 3513
    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x320

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3515
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22;->val$context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 3516
    const-string v3, "Close"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3517
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3518
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3523
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$22$$ExternalSyntheticLambda1;-><init>(Landroid/widget/LinearLayout;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3531
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3532
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3535
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
