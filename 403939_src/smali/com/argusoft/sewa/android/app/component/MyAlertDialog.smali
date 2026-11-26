.class public Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "MyAlertDialog.java"


# instance fields
.field private isCancelable:Ljava/lang/Boolean;

.field private parentLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 9

    .line 89
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 91
    invoke-direct/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 9

    .line 68
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 79
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 80
    invoke-direct/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    move-object v8, p0

    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 8

    .line 54
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x0

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 61
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->hideDialog()V

    return-void
.end method

.method private hideDialog()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 113
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x32

    const/4 v8, 0x0

    .line 114
    invoke-virtual {v4, v7, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v9, 0x1

    .line 116
    invoke-static {v1, v5, v9, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x1e

    .line 118
    invoke-virtual {v4, v7, v7, v7, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 121
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 122
    const-string v7, "#F2F2F2"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v7, 0xf0

    .line 123
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x41800000    # 16.0f

    mul-float v7, v7, v11

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 125
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 128
    const-string v4, "#333333"

    const/16 v7, 0x11

    if-eqz p2, :cond_0

    .line 129
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v5, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v1, v5, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getScrollView(Landroid/content/Context;ILandroid/widget/LinearLayout$LayoutParams;)Landroidx/core/widget/NestedScrollView;

    move-result-object v11

    .line 130
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v5, v9, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v12

    .line 135
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    invoke-virtual {v12, v8, v8, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 137
    new-instance v13, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v13, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget v14, Lcom/argusoft/sewa/android/app/R$style;->AlertDialogLabel:I

    invoke-virtual {v13, v1, v14}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 141
    invoke-virtual {v13, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 143
    :try_start_0
    sget v14, Lcom/argusoft/sewa/android/app/R$font;->roboto_medium:I

    invoke-static {v1, v14}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v14

    .line 144
    invoke-virtual {v13, v14}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v11, v12}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 148
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 151
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 152
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v5, v9, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 157
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 158
    invoke-virtual {v9, v8, v8, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 159
    new-instance v10, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v10, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget v11, Lcom/argusoft/sewa/android/app/R$style;->AlertDialogLabel:I

    invoke-virtual {v10, v1, v11}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 162
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v10, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 165
    :try_start_1
    sget v4, Lcom/argusoft/sewa/android/app/R$font;->roboto_medium:I

    invoke-static {v1, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 166
    invoke-virtual {v10, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :catch_1
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/16 v4, -0x97

    if-ne v3, v4, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    move-object/from16 v4, p6

    move-object/from16 v9, p7

    goto :goto_0

    .line 189
    :cond_2
    const-string v4, "Yes"

    const-string v9, "No"

    goto :goto_0

    :cond_3
    const/16 v4, -0x98

    if-ne v3, v4, :cond_4

    .line 183
    const-string v4, "Logout"

    const-string v9, "Hide"

    goto :goto_0

    :cond_4
    const/16 v4, -0x99

    .line 184
    const-string v9, "Cancel"

    if-ne v3, v4, :cond_5

    .line 186
    const-string v4, "Retry"

    goto :goto_0

    .line 184
    :cond_5
    const-string v4, "OK"

    .line 189
    :goto_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x2732

    invoke-static {v1, v11, v8, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 191
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v7, 0xa

    .line 192
    invoke-virtual {v10, v7, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 193
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 203
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->newDialogButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-static {v1, v4, v5, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x41000000    # 8.0f

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 205
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Lcom/google/android/material/button/MaterialButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    sget v7, Lcom/argusoft/sewa/android/app/R$color;->buttonBackground:I

    invoke-static {v1, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    const/16 v12, 0xdc

    .line 207
    invoke-static {v7, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 208
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    const/4 v7, 0x0

    .line 209
    invoke-virtual {v4, v7}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 211
    invoke-virtual {v4, v8}, Lcom/google/android/material/button/MaterialButton;->setSingleLine(Z)V

    const/4 v13, 0x2

    .line 212
    invoke-virtual {v4, v13}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    const/16 v14, -0x69

    if-eq v3, v14, :cond_6

    .line 216
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->newDialogButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-static {v1, v9, v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v11

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 218
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/google/android/material/button/MaterialButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    sget v6, Lcom/argusoft/sewa/android/app/R$color;->colorPrimaryDark:I

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 220
    invoke-static {v1, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 221
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 222
    invoke-virtual {v3, v7}, Lcom/google/android/material/button/MaterialButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 223
    invoke-virtual {v3, v8}, Lcom/google/android/material/button/MaterialButton;->setSingleLine(Z)V

    .line 224
    invoke-virtual {v3, v13}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 225
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v7, v3

    goto :goto_1

    .line 227
    :cond_6
    invoke-virtual {v4, v14}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    .line 229
    :goto_1
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_8

    if-eqz v7, :cond_7

    .line 234
    invoke-virtual {v7, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_7
    invoke-virtual {v4, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 238
    :cond_8
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$2;-><init>(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)V

    if-eqz v7, :cond_9

    .line 245
    invoke-virtual {v7, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_9
    invoke-virtual {v4, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method private static newDialogButtonLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 258
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xa

    .line 259
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method


# virtual methods
.method public getAlertDialogView()Landroid/widget/LinearLayout;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->isCancelable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setContentView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method
