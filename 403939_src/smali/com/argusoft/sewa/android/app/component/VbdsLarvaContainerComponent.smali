.class public Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;
.super Landroid/widget/LinearLayout;
.source "VbdsLarvaContainerComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;,
        Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;,
        Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$SimpleTextWatcher;
    }
.end annotation


# static fields
.field private static final COUNT_BOX_WIDTH_DP:I = 0x60

.field private static final COUNT_FIELD_MAX_LENGTH:I = 0x6

.field private static final ERROR_COLOR:I = -0x4fffe0

.field private static final LABEL_COLOR:I = -0xaaaaab

.field private static final RENDER_CHUNK_SIZE:I = 0x19

.field private static final SEARCH_DEBOUNCE_MS:J = 0x190L


# instance fields
.field private final answerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private final areaId:Ljava/lang/Integer;

.field private final context:Landroid/content/Context;

.field private headMembersMapWithFamilyIdAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final isMandatory:Z

.field private listContainer:Landroid/widget/LinearLayout;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private renderGeneration:I

.field private final renderHandler:Landroid/os/Handler;

.field private final searchHandler:Landroid/os/Handler;

.field private selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

.field private suppressCheckChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->searchHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderGeneration:I

    .line 94
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->suppressCheckChange:Z

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 100
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object p1

    const-string p2, "T"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->isMandatory:Z

    .line 102
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveAreaId()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->areaId:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->setOrientation(I)V

    .line 104
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildView()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->searchHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->parseCount(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->validateRow(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateAnswer()V

    return-void
.end method

.method private buildCountRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/LinearLayout;
    .locals 7

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 405
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 408
    new-instance v1, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0xaaaaab

    .line 410
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 411
    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(IF)V

    .line 412
    const-string p1, "sans-serif-medium"

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 413
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 414
    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private buildCountSection(Landroid/widget/LinearLayout;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->createCountEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 335
    const-string v2, "Containers searched"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildCountRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->createCountEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 338
    const-string v4, "+ve containers found"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildCountRow(Ljava/lang/String;Landroid/widget/EditText;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const v5, -0x4fffe0

    .line 343
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    .line 344
    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(IF)V

    .line 345
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setMinHeight(I)V

    .line 346
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v3, v5, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/4 v3, 0x4

    .line 347
    invoke-virtual {v4, v3}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 348
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    new-instance p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$2;

    invoke-direct {p1, p0, p2, v2, v4}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$2;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 365
    new-instance p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;

    invoke-direct {p1, p0, p2, v2, v4}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 378
    new-instance p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    return-object p1
.end method

.method private buildFamilyLabel(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 430
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    .line 431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 434
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-eqz p2, :cond_1

    .line 436
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 437
    const-string p1, "  \u2014  "

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v0
.end method

.method private buildFamilyRow(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/view/View;
    .locals 12

    .line 255
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    :goto_0
    if-eqz v0, :cond_1

    .line 258
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x1

    invoke-static {v0, v4, v7, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v0, 0x5

    const/16 v2, 0xa

    .line 262
    invoke-virtual {v8, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const-string v2, ""

    const/4 v9, 0x0

    invoke-static {v0, v2, v4, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v10

    .line 266
    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildFamilyLabel(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-array p1, v7, [Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

    .line 273
    new-instance v11, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v6

    move-object v3, v10

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;Landroid/widget/LinearLayout;)V

    invoke-virtual {v10, v11}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;

    .line 311
    invoke-virtual {v10, v7}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 312
    aget-object v1, p1, v9

    if-eqz v1, :cond_4

    .line 313
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 314
    aget-object v1, p1, v9

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->searchedField:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_2
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 317
    aget-object v1, p1, v9

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->positiveField:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_3
    aget-object v1, p1, v9

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->positiveField:Landroid/widget/EditText;

    aget-object p1, p1, v9

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->errorView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {p0, v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->validateRow(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    :cond_4
    return-object v8
.end method

.method private buildView()V
    .locals 6

    .line 160
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveSelectionLimit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    const v1, -0xaaaaab

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(IF)V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateSelectionSummary()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    .line 172
    const-string v1, "Search by Family ID, Name or Health ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 171
    invoke-static {v0, v2, v4, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v4, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->listContainer:Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderList(Ljava/lang/String;)V

    return-void
.end method

.method private clearFieldError(Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 1

    .line 456
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 457
    invoke-virtual {p2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 458
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private createCountEditText()Landroid/widget/EditText;
    .locals 6

    .line 383
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v2, 0x1

    .line 385
    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 387
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 389
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 390
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 392
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->dpToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    return-object v0
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 0

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private parseCount(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 535
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private renderChunk(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;II)V"
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderGeneration:I

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x19

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->listContainer:Landroid/widget/LinearLayout;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildFamilyRow(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 250
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/util/List;II)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private renderList(Ljava/lang/String;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 214
    iget v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderGeneration:I

    .line 216
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->areaId:Ljava/lang/Integer;

    .line 219
    invoke-interface {v1, v2, p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveFamilyDataBeansForVBDSByAshaArea(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 231
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 234
    invoke-interface {v3, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 237
    invoke-direct {p0, p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderChunk(Ljava/util/List;II)V

    return-void

    .line 222
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    const-string v0, "No families found."

    .line 223
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    sget v3, Lcom/argusoft/sewa/android/app/R$style;->CustomAnswerView:I

    .line 222
    invoke-static {p1, v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->listContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private resolveAreaId()Ljava/lang/Integer;
    .locals 1

    .line 125
    const-string v0, "locationId"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveIntProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private resolveIntProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 147
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private resolveSelectionLimit()Ljava/lang/Integer;
    .locals 2

    .line 142
    const-string v0, "noOfHousesFoundPositive"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveIntProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private resolveTotalContainerCount()Ljava/lang/Integer;
    .locals 1

    .line 133
    const-string v0, "totalContainerCount"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveIntProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private updateAnswer()V
    .locals 8

    .line 477
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateSelectionSummary()V

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 482
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->isMandatory:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please select at least one family"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;

    .line 491
    iget-object v4, v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto :goto_1

    .line 498
    :cond_2
    iget-object v4, v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 499
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "+ve containers cannot be more than containers searched"

    .line 501
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 504
    :cond_3
    iget-object v3, v3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 492
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please enter container counts for all selected families"

    .line 494
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 509
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveSelectionLimit()Ljava/lang/Integer;

    move-result-object v0

    .line 510
    const-string v3, ")"

    const-string v4, "/"

    const-string v5, " ("

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 511
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 512
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please select as many families as the number of houses found +ve"

    .line 513
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    .line 514
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 520
    :cond_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveTotalContainerCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 521
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v2, v6, :cond_7

    .line 522
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v6, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 523
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total containers searched across families cannot exceed total containers checked in the visit"

    .line 524
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 529
    :cond_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VBDS larva answer JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSelectionSummary()V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveSelectionLimit()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    return-void

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->selectionSummaryView:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select the families where +ve larva was found"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    .line 473
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {v1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateRow(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 1

    .line 443
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->searchedContainers:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le v0, p1, :cond_0

    .line 446
    const-string p1, "+ve containers cannot be more than containers searched"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 447
    invoke-virtual {p3, p1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    const p1, -0x4fffe0

    .line 448
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->clearFieldError(Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$buildFamilyRow$1$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent(Ljava/lang/String;Lcom/google/android/material/checkbox/MaterialCheckBox;[Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 274
    iget-boolean p5, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->suppressCheckChange:Z

    if-eqz p5, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->resolveSelectionLimit()Ljava/lang/Integer;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    .line 279
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->suppressCheckChange:Z

    .line 281
    invoke-virtual {p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 282
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->suppressCheckChange:Z

    .line 283
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "You cannot select more families than the number of houses found +ve"

    .line 284
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p6, :cond_3

    .line 289
    aget-object p2, p3, v0

    if-nez p2, :cond_2

    .line 290
    invoke-direct {p0, p4, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildCountSection(Landroid/widget/LinearLayout;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;

    move-result-object p2

    aput-object p2, p3, v0

    .line 292
    :cond_2
    aget-object p2, p3, v0

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 294
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    new-instance p3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;

    invoke-direct {p3, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_3
    aget-object p2, p3, v0

    if-eqz p2, :cond_4

    .line 298
    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->container:Landroid/widget/LinearLayout;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    aget-object p2, p3, v0

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->searchedField:Landroid/widget/EditText;

    const-string p4, ""

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    aget-object p2, p3, v0

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->positiveField:Landroid/widget/EditText;

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    aget-object p2, p3, v0

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->positiveField:Landroid/widget/EditText;

    aget-object p3, p3, v0

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->errorView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->clearFieldError(Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    .line 303
    :cond_4
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->answerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateAnswer()V

    return-void
.end method

.method synthetic lambda$renderChunk$0$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent(Ljava/util/List;II)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->renderChunk(Ljava/util/List;II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 113
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateAnswer()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->updateAnswer()V

    :cond_0
    return-void
.end method
