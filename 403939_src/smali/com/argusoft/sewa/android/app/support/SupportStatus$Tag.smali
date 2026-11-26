.class public Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;
.super Ljava/lang/Object;
.source "SupportStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field private final color:I

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->label:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->color:I

    return-void
.end method


# virtual methods
.method public view(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 110
    iget v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->color:I

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->access$000(I)I

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 112
    iget v2, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 113
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 115
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 117
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v5, v5, v1

    float-to-int v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v1

    float-to-int v6, v6

    const/high16 v7, 0x41400000    # 12.0f

    mul-float v7, v7, v1

    float-to-int v7, v7

    .line 118
    invoke-virtual {v3, v5, v6, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, 0x4479c000    # 999.0f

    mul-float v6, v6, v1

    .line 120
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, 0xffffff

    and-int/2addr v6, v2

    const/high16 v7, 0x1a000000

    or-int/2addr v7, v6

    .line 121
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    float-to-int v7, v1

    const/4 v8, 0x1

    .line 122
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v9, 0x38000000

    or-int/2addr v6, v9

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 123
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 127
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 128
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 129
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40e00000    # 7.0f

    mul-float v1, v1, v6

    float-to-int v1, v1

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->label:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 134
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v3
.end method
