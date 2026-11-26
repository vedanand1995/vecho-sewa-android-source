.class public Lcom/argusoft/sewa/android/app/component/MyStaticComponents;
.super Ljava/lang/Object;
.source "MyStaticComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyStaticComponents"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addHelpVideo(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 380
    invoke-virtual {p1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 381
    const-string v1, "Audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x21

    const-string v3, " <font color=#cc0029>*</font>"

    const-string v4, ""

    if-eqz v1, :cond_1

    .line 382
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDataMapValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \ud83d\udd08"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 384
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 385
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;

    invoke-direct {v3, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$5;-><init>(Ljava/util/List;Landroid/media/MediaPlayer;)V

    .line 416
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, v3, p0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 417
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \ud83c\udfac"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;

    invoke-direct {v3, p2, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, v3, p0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 437
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :goto_2
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private static addTooltip(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;)V
    .locals 2

    .line 282
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    new-instance v0, Lcom/tooltip/Tooltip$Builder;

    invoke-direct {v0, p1}, Lcom/tooltip/Tooltip$Builder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 284
    invoke-virtual {v0, v1}, Lcom/tooltip/Tooltip$Builder;->setCancelable(Z)Lcom/tooltip/Tooltip$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v1}, Lcom/tooltip/Tooltip$Builder;->setDismissOnClick(Z)Lcom/tooltip/Tooltip$Builder;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->colorSecondary:I

    .line 286
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/tooltip/Tooltip$Builder;->setBackgroundColor(I)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->typeface:Landroid/graphics/Typeface;

    .line 287
    invoke-virtual {p2, v0}, Lcom/tooltip/Tooltip$Builder;->setTypeface(Landroid/graphics/Typeface;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    const/4 v0, -0x1

    .line 288
    invoke-virtual {p2, v0}, Lcom/tooltip/Tooltip$Builder;->setTextColor(I)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    .line 289
    invoke-virtual {p2, p0}, Lcom/tooltip/Tooltip$Builder;->setText(Ljava/lang/String;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    const p0, 0x800005

    .line 292
    invoke-virtual {p2, p0}, Lcom/tooltip/Tooltip$Builder;->setGravity(I)Lcom/tooltip/Tooltip$Builder;

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/tooltip/Tooltip$Builder;->build()Lcom/tooltip/Tooltip;

    move-result-object p0

    .line 295
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$2;-><init>(Lcom/tooltip/Tooltip;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 133
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0xf

    .line 135
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/high16 p1, 0x41200000    # 10.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setLineSpacing(FF)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 146
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomBoldAnswerView:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0xf

    .line 148
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 121
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomInstructionView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 158
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomLabelView:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0xf

    const/16 v0, 0xa

    .line 160
    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateMandatoryInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 125
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomInstructionView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryTextMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 2

    if-eqz p3, :cond_2

    .line 232
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget p1, Lcom/argusoft/sewa/android/app/R$style;->CustomQuestionView:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryTextMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 237
    invoke-static {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addHelpVideo(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateMandatorySubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 117
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMandatoryTextMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    if-eqz p3, :cond_3

    .line 218
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomQuestionView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, p3, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 223
    invoke-static {p0, v0, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addHelpVideo(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_2

    .line 226
    invoke-static {p1, v0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addTooltip(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;)V

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateQuestionViewWithTooltip(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 167
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {p2, v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x10

    .line 171
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 172
    sget v4, Lcom/argusoft/sewa/android/app/R$style;->CustomQuestionView:I

    const/4 v5, 0x1

    invoke-static {p2, p3, v5, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    .line 174
    invoke-static {p0, v4, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->addHelpVideo(Ljava/lang/String;Lcom/google/android/material/textview/MaterialTextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_1
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x43480000    # 200.0f

    const/4 v6, -0x2

    invoke-direct {p0, v6, v6, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, p0}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v4, :cond_3

    const/4 p0, 0x2

    .line 180
    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info_black:I

    invoke-static {p2, p0, p3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p0

    .line 181
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p3, Lcom/tooltip/Tooltip$Builder;

    invoke-direct {p3, p0}, Lcom/tooltip/Tooltip$Builder;-><init>(Landroid/view/View;)V

    .line 183
    invoke-virtual {p3, v5}, Lcom/tooltip/Tooltip$Builder;->setCancelable(Z)Lcom/tooltip/Tooltip$Builder;

    move-result-object p3

    .line 184
    invoke-virtual {p3, v5}, Lcom/tooltip/Tooltip$Builder;->setDismissOnClick(Z)Lcom/tooltip/Tooltip$Builder;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->colorSecondary:I

    .line 185
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/tooltip/Tooltip$Builder;->setBackgroundColor(I)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    sget-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->typeface:Landroid/graphics/Typeface;

    .line 186
    invoke-virtual {p2, p3}, Lcom/tooltip/Tooltip$Builder;->setTypeface(Landroid/graphics/Typeface;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    .line 187
    invoke-virtual {p2, v1}, Lcom/tooltip/Tooltip$Builder;->setTextColor(I)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    .line 188
    invoke-virtual {p2, p1}, Lcom/tooltip/Tooltip$Builder;->setText(Ljava/lang/String;)Lcom/tooltip/Tooltip$Builder;

    move-result-object p2

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x28

    if-ge p1, p3, :cond_2

    const p1, 0x800005

    .line 191
    invoke-virtual {p2, p1}, Lcom/tooltip/Tooltip$Builder;->setGravity(I)Lcom/tooltip/Tooltip$Builder;

    .line 193
    :cond_2
    invoke-virtual {p2}, Lcom/tooltip/Tooltip$Builder;->build()Lcom/tooltip/Tooltip;

    move-result-object p1

    .line 194
    new-instance p2, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$1;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$1;-><init>(Lcom/tooltip/Tooltip;)V

    .line 204
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {v4, p2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v6, v6, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 p2, 0xa

    .line 207
    invoke-virtual {p1, v2, p2, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-object v3

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 113
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomSubtitleView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 109
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomTitleView:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    return-object p0
.end method

.method public static getAgeBox(Landroid/content/Context;ILandroid/view/View$OnFocusChangeListener;)Landroid/widget/LinearLayout;
    .locals 11

    .line 940
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 942
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 944
    const-string v5, "Year"

    const/16 v6, 0x272f

    const/4 v7, 0x2

    invoke-static {p0, v5, v6, v7, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    .line 945
    invoke-virtual {v6, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 946
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41100000    # 9.0f

    invoke-direct {v8, v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    sget v6, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, v5, v1, v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 948
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v6, v4, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v5, 0x2730

    .line 953
    const-string v6, "Month"

    invoke-static {p0, v6, v5, v7, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v5

    .line 954
    invoke-virtual {v5, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 955
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    sget v5, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, v6, v1, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 957
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, v4, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v5, 0x2731

    .line 962
    const-string v6, "Day"

    invoke-static {p0, v6, v5, v7, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v5

    .line 963
    invoke-virtual {v5, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 964
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    sget p2, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-static {p0, v6, v1, p2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p0

    .line 966
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v4, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eq p1, v1, :cond_0

    .line 970
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_0
    return-object v0
.end method

.method public static getAutoCompleteTextView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AutoCompleteTextView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroid/widget/AutoCompleteTextView;"
        }
    .end annotation

    .line 1207
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    invoke-direct {v0, p0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1208
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->select_dialog_item:I

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p0, 0x1

    .line 1209
    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1210
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1211
    invoke-virtual {v0, p2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public static getButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;
    .locals 1

    .line 686
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    .line 688
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    .line 691
    invoke-virtual {v0, p2}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 694
    invoke-virtual {v0, p3}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    :cond_2
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    const/high16 p0, 0x41900000    # 18.0f

    .line 697
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    const/16 p0, 0x96

    .line 698
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setMinHeight(I)V

    return-object v0
.end method

.method public static getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 907
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 908
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setExpanded(Z)V

    .line 909
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setChoiceMode(I)V

    .line 910
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setNestedScrollingEnabled(Z)V

    .line 911
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->button_listview_row:I

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->lists_button:I

    invoke-direct {v1, p0, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 914
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 915
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p0, 0x0

    .line 916
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 917
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/component/MyExpandedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public static getCallView(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .locals 4

    .line 1093
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-lez p3, :cond_0

    .line 1095
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    if-eq p2, v1, :cond_1

    .line 1098
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1101
    :cond_1
    new-instance p2, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1102
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 1103
    invoke-virtual {p3, v3, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1104
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    invoke-virtual {p2, p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1105
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    .line 1106
    invoke-virtual {p2, v3, v1, v3, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1107
    invoke-virtual {p2, p3}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->call:I

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {p3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p2

    .line 1111
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1113
    new-instance p3, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;

    invoke-direct {p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;-><init>()V

    .line 1135
    invoke-virtual {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$15;->setContext(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 1113
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getCardView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroidx/cardview/widget/CardView;
    .locals 2

    .line 724
    new-instance v0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    int-to-float p0, p2

    .line 726
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/16 p0, 0xa

    const/16 p2, 0x10

    .line 727
    invoke-virtual {p3, p0, p2, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 p0, 0x41f00000    # 30.0f

    .line 728
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    const/high16 p0, 0x41a00000    # 20.0f

    .line 729
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    const/4 p0, -0x1

    .line 730
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    const/16 p2, 0x14

    const/16 v1, 0xf

    .line 731
    invoke-virtual {v0, p2, v1, p2, v1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    if-eq p1, p0, :cond_0

    .line 733
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setId(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 737
    invoke-virtual {v0, p3}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v0
.end method

.method public static getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;
    .locals 1

    .line 777
    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-direct {v0, p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 779
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    .line 782
    invoke-virtual {v0, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setId(I)V

    .line 784
    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 785
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 703
    invoke-static {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object p0

    const/16 p1, 0x14

    .line 704
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setMinHeight(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 705
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    return-object p0
.end method

.method public static getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 804
    invoke-static {p0, p2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 v2, 0x10

    .line 805
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 807
    const-string v2, "Select date"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    const/4 v3, -0x2

    if-eqz v2, :cond_0

    .line 809
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x2711

    .line 810
    invoke-virtual {v2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    .line 811
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x2

    .line 814
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_calender:I

    invoke-static {p0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 815
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0xa

    .line 816
    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 817
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    sget v1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v1, v2, :cond_1

    .line 821
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->training_custom_datepicker:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 823
    :cond_1
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->custom_datepicker:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0x32

    .line 829
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object p2
.end method

.method public static getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;
    .locals 3

    .line 742
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-int/lit8 p3, p3, -0x1

    const/16 v1, 0x1e

    .line 744
    invoke-virtual {v0, p3, p3, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 746
    invoke-static {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x14

    const/4 p3, 0x0

    .line 747
    invoke-virtual {p1, p2, p3, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 748
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->details_border:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public static getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 6

    .line 443
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 444
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 445
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$7;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$7;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 454
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 455
    new-instance v3, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 456
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$8;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$8;-><init>()V

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 494
    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setId(I)V

    :cond_0
    const/4 p2, 0x1

    if-lez p3, :cond_1

    .line 497
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v2

    aput-object p0, v1, p2

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 499
    :cond_1
    new-array p2, p2, [Landroid/text/InputFilter;

    aput-object p0, p2, v2

    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    if-eq p4, v4, :cond_2

    .line 502
    invoke-virtual {v3, p4}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 505
    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 507
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 508
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    return-object v0
.end method

.method public static getEditTextWithSpecialCharacter(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 6

    .line 513
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 514
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 515
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$9;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$9;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 524
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 525
    new-instance v3, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 526
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$10;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$10;-><init>()V

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 554
    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setId(I)V

    :cond_0
    const/4 p2, 0x1

    if-lez p3, :cond_1

    .line 557
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v2

    aput-object p0, v1, p2

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 559
    :cond_1
    new-array p2, p2, [Landroid/text/InputFilter;

    aput-object p0, p2, v2

    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    if-eq p4, v4, :cond_2

    .line 562
    invoke-virtual {v3, p4}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 565
    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 567
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getFilteredEditText(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 6

    .line 308
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 310
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$3;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintEnabled(Z)V

    .line 320
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v3, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;

    invoke-direct {p0, p5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$4;-><init>(Ljava/lang/String;)V

    if-eq p2, v5, :cond_0

    .line 362
    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setId(I)V

    :cond_0
    const/4 p2, 0x1

    if-lez p3, :cond_1

    .line 365
    new-array p5, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p5, v2

    aput-object p0, p5, p2

    invoke-virtual {v3, p5}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 367
    :cond_1
    new-array p2, p2, [Landroid/text/InputFilter;

    aput-object p0, p2, v2

    invoke-virtual {v3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    if-eq p4, v5, :cond_2

    .line 370
    invoke-virtual {v3, p4}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 373
    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 375
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getHorizontalSpaceSeparator(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 1183
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1184
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1171
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1172
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1173
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1174
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1175
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x4

    const/4 v2, 0x1

    .line 1176
    invoke-static {p1, v1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;
    .locals 1

    .line 790
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    .line 792
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eq p1, p0, :cond_1

    .line 795
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 798
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object v0
.end method

.method public static getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 1

    .line 710
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 712
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_0
    if-eq p2, p0, :cond_1

    .line 715
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 718
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object v0
.end method

.method public static getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 275
    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 276
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->ListTitleView:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 277
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static getListView(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 3

    .line 589
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    .line 593
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 594
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public static getListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/widget/ListView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "I)",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 574
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 575
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eq p3, v4, :cond_0

    .line 577
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->lists_text:I

    invoke-direct {v2, p0, p3, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    goto :goto_0

    .line 579
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row:I

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->lists_text:I

    invoke-direct {v2, p0, p3, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 581
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 582
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 584
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    return-object v0
.end method

.method public static getMandatoryTextMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;
    .locals 4

    .line 245
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eq p3, v3, :cond_0

    .line 248
    invoke-virtual {v0, p0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    if-eqz p1, :cond_4

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    const-string p1, "<font color=#cc0029> *</font>"

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p2, v3, :cond_2

    .line 258
    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p0, 0x11

    .line 261
    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    :cond_3
    const/4 p0, 0x0

    const/16 p1, 0xf

    .line 263
    invoke-virtual {v0, p0, p1, p0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMandatoryVideoShow(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;)Landroid/widget/LinearLayout;
    .locals 4

    .line 1041
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p2, v2, :cond_0

    .line 1044
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1047
    :cond_0
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->play_video:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, p2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p2

    .line 1048
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;-><init>()V

    .line 1085
    invoke-virtual {v1, p0, p1, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$14;->setContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 1050
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;
    .locals 5

    .line 85
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    if-eq p3, v3, :cond_0

    .line 89
    invoke-virtual {v0, p0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p2, v3, :cond_2

    .line 98
    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setId(I)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p0, 0x11

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    :cond_3
    const/16 p0, 0xf

    .line 103
    invoke-virtual {v0, v4, p0, v4, p0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMultiSelectPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;",
            ")",
            "Lcom/argusoft/sewa/android/app/component/PagingListView;"
        }
    .end annotation

    .line 630
    new-instance v0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 631
    new-instance v1, Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x2

    .line 632
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setChoiceMode(I)V

    .line 633
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    .line 634
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setNestedScrollingEnabled(Z)V

    .line 635
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    invoke-virtual {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    .line 637
    invoke-virtual {v1, p3}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p4, :cond_0

    .line 640
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 641
    invoke-virtual {v1, p4}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setPagingListener(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 643
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 645
    :goto_0
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    if-eq p2, p0, :cond_1

    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    if-ne p2, p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 646
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v1
.end method

.method public static getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 3

    .line 930
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 931
    const-string v1, "or"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 932
    invoke-virtual {v0, v1, v2, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 933
    sget v1, Lcom/argusoft/sewa/android/app/R$style;->OrTextView:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 p0, 0x4

    .line 934
    invoke-virtual {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;->setTextAlignment(I)V

    return-object v0
.end method

.method public static getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;",
            ")",
            "Lcom/argusoft/sewa/android/app/component/PagingListView;"
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 604
    new-instance v1, Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 605
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setChoiceMode(I)V

    .line 606
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setNestedScrollingEnabled(Z)V

    .line 608
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    invoke-virtual {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    .line 610
    invoke-virtual {v1, p3}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p4, :cond_0

    .line 612
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 613
    invoke-virtual {v1, p4}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setPagingListener(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 615
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 617
    :goto_0
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    if-eq p2, p0, :cond_1

    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    if-ne p2, p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 618
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v1
.end method

.method public static getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;",
            ")",
            "Lcom/argusoft/sewa/android/app/component/PagingListView;"
        }
    .end annotation

    .line 657
    new-instance v0, Lcom/argusoft/sewa/android/app/component/PagingAdapter;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/PagingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 658
    new-instance p3, Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-direct {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 659
    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setChoiceMode(I)V

    .line 660
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setNestedScrollingEnabled(Z)V

    .line 662
    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 663
    invoke-virtual {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    .line 664
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;

    invoke-direct {v1, p4, p1, v0, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$11;-><init>(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/PagingAdapter;Lcom/argusoft/sewa/android/app/component/PagingListView;)V

    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p4, :cond_0

    .line 673
    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 674
    invoke-virtual {p3, p4}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setPagingListener(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 676
    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setHasMoreItems(Z)V

    .line 678
    :goto_0
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_notification:I

    if-eq p2, p0, :cond_1

    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    if-ne p2, p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 679
    invoke-virtual {p3, p0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p3
.end method

.method public static getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;
    .locals 1

    .line 765
    new-instance v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-direct {v0, p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 767
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    .line 770
    invoke-virtual {v0, p2}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setId(I)V

    .line 772
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getRadioGroup(Landroid/content/Context;Landroid/widget/RadioGroup$OnCheckedChangeListener;Ljava/util/List;III)Landroid/widget/RadioGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)",
            "Landroid/widget/RadioGroup;"
        }
    .end annotation

    .line 1143
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 1145
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_0
    if-lez p4, :cond_1

    .line 1149
    invoke-virtual {v0, p4}, Landroid/widget/RadioGroup;->setId(I)V

    :cond_1
    const/4 p1, -0x1

    if-eqz p2, :cond_3

    .line 1153
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    .line 1154
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1155
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, v1, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move p4, v2

    goto :goto_0

    :cond_2
    if-eq p3, p1, :cond_3

    .line 1158
    invoke-virtual {v0, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    if-eq p5, p1, :cond_4

    .line 1163
    invoke-virtual {v0, p5}, Landroid/widget/RadioGroup;->setOrientation(I)V

    :cond_4
    return-object v0
.end method

.method public static getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/widget/RadioGroup;"
        }
    .end annotation

    .line 753
    new-instance p2, Landroid/widget/RadioGroup;

    invoke-direct {p2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 757
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 758
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static getScrollView(Landroid/content/Context;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 988
    new-instance v0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, p0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getScrollView(Landroid/content/Context;ILandroid/widget/LinearLayout$LayoutParams;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 977
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getScrollView(Landroid/content/Context;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 979
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->setId(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 982
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p0
.end method

.method public static getSeparator(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 923
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 924
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->listSeparatorBackground:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;
    .locals 4

    .line 834
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 835
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 837
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-direct {v1, p0, v2, p1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 838
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 839
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 840
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    if-eq p3, v3, :cond_1

    .line 843
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setId(I)V

    .line 846
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, -0x14

    const/16 p2, 0x32

    const/4 p3, 0x0

    .line 847
    invoke-virtual {p0, p3, p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static getSpinnerWrapped(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;
    .locals 3

    .line 852
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 853
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 855
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_top:I

    invoke-direct {v1, p0, v2, p1}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 856
    sget p0, Lcom/argusoft/sewa/android/app/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->setDropDownViewResource(I)V

    .line 857
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 858
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    const/4 p0, -0x1

    if-eq p3, p0, :cond_1

    .line 861
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setId(I)V

    .line 864
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, -0x14

    const/16 p2, 0x32

    const/4 p3, 0x0

    .line 865
    invoke-virtual {p0, p3, p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1224
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->text_title_with_count_layout:I

    invoke-virtual {p0, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1225
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 1226
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x14

    .line 1227
    invoke-virtual {v0, p1, p1, v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1229
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->due_title:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 1230
    const-string v0, "(Due count -"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->count:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 1233
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static getVerticalSpaceSeparator(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 1190
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1191
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getVideoShow(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 4

    .line 992
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p2, v2, :cond_0

    .line 996
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 999
    :cond_0
    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->play_video:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v1, p2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p2

    .line 1002
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1003
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;-><init>()V

    .line 1034
    invoke-virtual {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$13;->setContext(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p0

    .line 1003
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getWhiteBackgroundButtonView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 1197
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 1198
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 1199
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->unselected_listview_button:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x11

    .line 1200
    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 1201
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p0, 0xaa

    .line 1202
    invoke-virtual {p1, p0}, Lcom/google/android/material/textview/MaterialTextView;->setMinHeight(I)V

    return-object p1
.end method

.method public static getYesNoToggleButton(Landroid/content/Context;)Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .locals 5

    .line 870
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;)V

    .line 871
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v3, "Yes"

    const/16 v4, 0x2712

    invoke-static {p0, v3, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 875
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->yes_toggle_button_selector:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 876
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->toggle_button_text_color_selector:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 877
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x2

    .line 878
    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 879
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;)V

    .line 881
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v2, "No"

    const/16 v4, 0x2713

    invoke-static {p0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 883
    sget v2, Lcom/argusoft/sewa/android/app/R$color;->no_toggle_button_selector:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 884
    sget v2, Lcom/argusoft/sewa/android/app/R$color;->toggle_button_text_color_selector:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 885
    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 886
    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 887
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;)V

    .line 889
    new-instance p0, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$12;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents$12;-><init>()V

    .line 901
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    return-object v0
.end method
