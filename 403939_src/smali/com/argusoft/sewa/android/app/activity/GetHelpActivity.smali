.class public Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "GetHelpActivity.java"


# instance fields
.field private empty:Landroid/view/View;

.field private list:Landroid/widget/LinearLayout;

.field private loading:Landroid/view/View;

.field private refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field store:Lcom/argusoft/sewa/android/app/support/SupportStore;

.field private syncing:Z


# direct methods
.method public static synthetic $r8$lambda$OQi8eSpprMiZGV-Pk9jZ_EDQOrc(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncNow()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private fact(Landroid/text/SpannableStringBuilder;ILjava/lang/String;)V
    .locals 4

    .line 415
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 416
    const-string v0, "   \u00b7   "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :cond_0
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 420
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 421
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p2, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 424
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 425
    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 426
    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 p2, v0, 0x1

    const/16 v3, 0x21

    invoke-virtual {p1, v2, v0, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 428
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    :cond_1
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private group(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            ">;)V"
        }
    .end annotation

    .line 312
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 316
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u00b7  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 318
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 319
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x3d23d70a    # 0.04f

    .line 320
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 321
    sget p1, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v4, v4, v0

    float-to-int v4, v4

    const/4 v5, 0x0

    .line 322
    invoke-virtual {v1, p1, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 323
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 327
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->support_card:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 328
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 329
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    if-lez v5, :cond_1

    .line 331
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 332
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->support_line:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v0

    float-to-int v4, v4

    .line 334
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 335
    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->row(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 339
    :cond_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private offlineNote()V
    .locals 7

    .line 220
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 221
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 223
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v0

    float-to-int v4, v3

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v5, v5, v0

    float-to-int v5, v5

    .line 224
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 225
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 226
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 227
    sget v3, Lcom/argusoft/sewa/android/app/R$color;->support_bubble_theirs:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 228
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 230
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_cloud_off:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 232
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v6, v6, v0

    float-to-int v6, v6

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    const-string v4, "offline_showing"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 235
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 236
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_muted:I

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-virtual {v3, v5, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v4, v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 241
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private open(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V
    .locals 2

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/SupportTicketActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "support_ticket_local_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private owner()Ljava/lang/Long;
    .locals 1

    .line 107
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static rank(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)I
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 292
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$1;->$SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group:[I

    iget-object p0, p0, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->of(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportStatus;

    move-result-object p0

    iget-object p0, p0, Lcom/argusoft/sewa/android/app/support/SupportStatus;->group:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v0
.end method

.method private row(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Landroid/view/View;
    .locals 9

    .line 343
    const-string v0, "FAILED"

    iget-object v1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 344
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->status:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->of(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->notSent()Lcom/argusoft/sewa/android/app/support/SupportStatus;

    move-result-object v1

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v2, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->summary(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;

    move-result-object v2

    .line 346
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->support_ticket_card:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 348
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->card_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->card_tag:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 350
    new-instance v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;

    const-string v4, "could_not"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->support_tone_error:I

    invoke-direct {v1, v4, v6}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Tag;->view(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v1, p0}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->tag(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 349
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->ticketNumber:Ljava/lang/String;

    const-string v6, "TKT-"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  \u00b7  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    :goto_2
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->card_meta:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->createdAt:Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->day(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 357
    iget-boolean v3, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->voice:Z

    if-eqz v3, :cond_3

    .line 358
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_mic:I

    const-string v4, "fact_voice"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->fact(Landroid/text/SpannableStringBuilder;ILjava/lang/String;)V

    .line 360
    :cond_3
    iget v3, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->photos:I

    const/4 v4, 0x1

    const-string v6, " "

    if-lez v3, :cond_5

    .line 361
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_camera:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->photos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget v8, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->photos:I

    if-ne v8, v4, :cond_4

    const-string v8, "fact_photo"

    goto :goto_3

    :cond_4
    const-string v8, "fact_photos"

    :goto_3
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    invoke-direct {p0, v1, v3, v7}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->fact(Landroid/text/SpannableStringBuilder;ILjava/lang/String;)V

    .line 364
    :cond_5
    iget v3, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->replies:I

    if-lez v3, :cond_7

    .line 365
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_chat:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->replies:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v8, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->replies:I

    if-ne v8, v4, :cond_6

    const-string v4, "fact_reply"

    goto :goto_4

    :cond_6
    const-string v4, "fact_replies"

    :goto_4
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-direct {p0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->fact(Landroid/text/SpannableStringBuilder;ILjava/lang/String;)V

    .line 368
    :cond_7
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->card_facts:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 371
    iget-object v4, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 372
    iget-object v2, p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    .line 373
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_error_ink:I

    goto :goto_7

    .line 374
    :cond_8
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->isOnServer()Z

    move-result v4

    if-nez v4, :cond_9

    .line 375
    const-string v2, "sub_not_sent"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning_ink:I

    goto :goto_7

    .line 377
    :cond_9
    iget v4, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->waiting:I

    if-lez v4, :cond_a

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->waiting:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reply_waiting_sync"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning_ink:I

    goto :goto_7

    .line 380
    :cond_a
    iget-object v4, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->lastFromSupport:Ljava/lang/Boolean;

    if-eqz v4, :cond_c

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->lastFromSupport:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "fact_last_support"

    goto :goto_5

    :cond_b
    const-string v7, "fact_last_you"

    :goto_5
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/support/SupportStore$Summary;->lastAt:Ljava/lang/String;

    .line 382
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus;->dayAndTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-eqz v2, :cond_e

    .line 385
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 386
    const-string v6, "   \u00b7   "

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 388
    :cond_d
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 389
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_e

    .line 391
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 392
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v7, 0x21

    .line 391
    invoke-virtual {v1, v2, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 395
    :cond_e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v5, 0x8

    :cond_f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_10

    .line 400
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 408
    :cond_10
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    return-object p1
.end method

.method private show(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SupportTicketBean;",
            ">;I)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->offlineNote()V

    :cond_0
    if-lez p2, :cond_1

    .line 186
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncCard(I)V

    .line 191
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    .line 195
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->rank(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    .line 197
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 199
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_4
    const-string v2, "group_needs_you"

    invoke-direct {p0, v2, p2}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->group(Ljava/lang/String;Ljava/util/List;)V

    .line 205
    const-string p2, "group_open"

    invoke-direct {p0, p2, v0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->group(Ljava/lang/String;Ljava/util/List;)V

    .line 206
    const-string p2, "group_closed"

    invoke-direct {p0, p2, v1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->group(Ljava/lang/String;Ljava/util/List;)V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 209
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->empty:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->help_retry:I

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    .line 212
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_empty_icon:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_headset:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_empty_text:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "no_requests"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_empty_hint:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "empty_hint"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private showSaved()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->owner()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->tickets(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->owner()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->waitingCount(Ljava/lang/Long;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->show(Ljava/util/List;I)V

    return-void
.end method

.method private syncCard(I)V
    .locals 9

    .line 247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 248
    sget v1, Lcom/argusoft/sewa/android/app/R$color;->support_tone_warning:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 249
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 251
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v0

    float-to-int v5, v4

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v6, v6, v0

    float-to-int v6, v6

    .line 252
    invoke-virtual {v2, v5, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 253
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 254
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v4, 0xffffff

    and-int/2addr v4, v1

    const/high16 v7, 0x1f000000

    or-int/2addr v7, v4

    .line 255
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v7, v7, v0

    float-to-int v7, v7

    const/high16 v8, 0x66000000

    or-int/2addr v4, v8

    .line 256
    invoke-virtual {v5, v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 257
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 260
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_sync_arrows:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 262
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41e00000    # 28.0f

    mul-float v7, v7, v0

    float-to-int v7, v7

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "waiting_to_send"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41880000    # 17.0f

    .line 266
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 268
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 269
    invoke-virtual {v4, v6, v3, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {p1, v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance p1, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v4, "sync_now"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setAllCaps(Z)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 275
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    .line 276
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_support_sync_arrows:I

    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 277
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 278
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 279
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42500000    # 52.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 284
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private syncNow()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncing:Z

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 143
    const-string v0, "sync_offline"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncing:Z

    .line 147
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 148
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->owner()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->runSync(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method fetch(Ljava/lang/Long;)V
    .locals 1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->pull(Landroid/content/Context;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/support/SupportApi$Failure; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->fetched()V

    return-void
.end method

.method fetched()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncing:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->showSaved()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$0$com-argusoft-sewa-android-app-activity-GetHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncNow()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-argusoft-sewa-android-app-activity-GetHelpActivity(Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$row$3$com-argusoft-sewa-android-app-activity-GetHelpActivity(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 403
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->discard(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    .line 404
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->showSaved()V

    return-void
.end method

.method synthetic lambda$row$4$com-argusoft-sewa-android-app-activity-GetHelpActivity(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Landroid/view/View;)V
    .locals 1

    .line 400
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "could_not"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;->syncError:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    .line 402
    const-string p1, "OK"

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$row$5$com-argusoft-sewa-android-app-activity-GetHelpActivity(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Landroid/view/View;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->open(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)V

    return-void
.end method

.method synthetic lambda$syncCard$2$com-argusoft-sewa-android-app-activity-GetHelpActivity(Landroid/view/View;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncNow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_get_help:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->setContentView(I)V

    .line 66
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 67
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 68
    const-string p1, "get_help"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->setTitle(Ljava/lang/String;)V

    .line 70
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_list:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->list:Landroid/widget/LinearLayout;

    .line 71
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_loading:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->loading:Landroid/view/View;

    .line 72
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_empty:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->empty:Landroid/view/View;

    .line 73
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_refresh:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 74
    sget v0, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 75
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 77
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_retry:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 78
    const-string v0, "retry"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_heading:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "your_reports"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->help_raise:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 83
    const-string v0, "raise"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->resumeActivity()V

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->showSaved()V

    .line 92
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->owner()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->fetch(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method runSync(Ljava/lang/Long;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->store:Lcom/argusoft/sewa/android/app/support/SupportStore;

    invoke-virtual {v0, p0, p1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->sync(Landroid/content/Context;Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V

    return-void
.end method

.method synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
    .locals 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->syncing:Z

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 165
    iget-boolean v0, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->offline:Z

    if-eqz v0, :cond_1

    .line 166
    const-string p1, "sync_offline"

    goto :goto_0

    .line 167
    :cond_1
    iget-boolean v0, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->sessionEnded:Z

    if-eqz v0, :cond_2

    .line 168
    const-string p1, "login_again"

    goto :goto_0

    .line 169
    :cond_2
    iget-boolean p1, p1, Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;->networkProblem:Z

    if-eqz p1, :cond_3

    .line 170
    const-string p1, "sync_problem"

    goto :goto_0

    .line 172
    :cond_3
    const-string p1, "sync_done"

    .line 174
    :goto_0
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportLabels;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity;->showSaved()V

    return-void
.end method
