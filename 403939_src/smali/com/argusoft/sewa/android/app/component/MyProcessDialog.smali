.class public Lcom/argusoft/sewa/android/app/component/MyProcessDialog;
.super Landroid/app/Dialog;
.source "MyProcessDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private parentLayout:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->title:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 66
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v4, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 67
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x42f00000    # 120.0f

    invoke-static {v4, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 69
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 73
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v5, v5

    .line 74
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 75
    const-string v5, "#E6F2F2F2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->ios_spinner:I

    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-static {v0, v3, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 87
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 88
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 91
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2710

    sget v6, Lcom/argusoft/sewa/android/app/R$style;->CustomQuestionView:I

    invoke-static {v3, v4, v5, v6, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/4 v1, 0x4

    .line 96
    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    .line 97
    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 98
    invoke-virtual {v2, v1, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(IF)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$font;->roboto_bold:I

    invoke-static {v1, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->setCancelable(Z)V

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 55
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method
