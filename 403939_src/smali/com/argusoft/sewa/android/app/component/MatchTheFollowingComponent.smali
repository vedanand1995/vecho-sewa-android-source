.class public Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;
.super Landroid/widget/LinearLayout;
.source "MatchTheFollowingComponent.java"


# instance fields
.field private final ansQueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final answerTagViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private imageAvailable:Z

.field private lastDragPosition:I

.field private final lhs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final lhsOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mainLayout:Landroid/widget/LinearLayout;

.field private final queAnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final questionTagViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final rhs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final rhsOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollView:Landroidx/core/widget/NestedScrollView;

.field private selectionLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/core/widget/NestedScrollView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;",
            "Landroidx/core/widget/NestedScrollView;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhs:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhs:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->questionTagViewMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->answerTagViewMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->queAnsMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->ansQueMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lastDragPosition:I

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhsOptions:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhsOptions:Ljava/util/List;

    .line 70
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 71
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getDragDropView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->mainLayout:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lastDragPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;Landroid/view/DragEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->handleScroll(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->queAnsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->answerTagViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->ansQueMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->questionTagViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    return p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->addRhsViewInSelectionLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)Landroid/widget/TextView;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getInstructionText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private addRhsViewInSelectionLayout()V
    .locals 7

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 252
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->ansQueMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 255
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 258
    :cond_1
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_2

    .line 259
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->lms_mf_image_answer_selection_layout:I

    invoke-virtual {v3, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 260
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getImageDrawableForMatch(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 285
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 286
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 288
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x3

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x4

    const/4 v2, 0x1

    .line 289
    invoke-static {p1, v1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getInstructionText()Landroid/widget/TextView;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    const-string v1, "Drag answer here"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 270
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_text_que_option_background:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    .line 271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->lms_instruction_text:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    const/16 v1, 0x28

    const/16 v2, 0x14

    .line 272
    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 274
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_que_image_option_background:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setBackgroundResource(I)V

    :cond_0
    return-object v0
.end method

.method private handleScroll(Landroid/view/DragEvent;)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 239
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lastDragPosition:I

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lastDragPosition:I

    return-void
.end method


# virtual methods
.method public getAnswerTagViewMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->answerTagViewMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCorrectAnswerLayout(Ljava/util/Map;)Landroid/widget/LinearLayout;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 385
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhsOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    add-int/2addr v5, v2

    .line 387
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, v6, v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getLhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;I)Landroid/view/View;

    move-result-object v7

    .line 388
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 390
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 391
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhsOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 392
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v6, v5, v4}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getRhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;Z)Landroid/view/View;

    move-result-object v6

    .line 393
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 396
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 397
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 398
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->lms_mf_ans_layout:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 399
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public getDragDropView()Landroid/widget/LinearLayout;
    .locals 12

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhsOptions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhsOptions:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhsOptions:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/constants/LmsConstants;->isImageAvailableInMatchTheFollowing(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    .line 103
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 105
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$color;->lms_answer_layout:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0x14

    .line 106
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-static {v4, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    .line 113
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhsOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 114
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v10, v9, v3}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getRhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;Z)Landroid/view/View;

    move-result-object v9

    .line 115
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->answerTagViewMap:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v10, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;

    invoke-direct {v10, p0, v9}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-boolean v10, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    if-eqz v10, :cond_1

    .line 138
    rem-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_0

    .line 139
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v11, Lcom/argusoft/sewa/android/app/R$layout;->lms_mf_image_answer_selection_layout:I

    invoke-virtual {v8, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 140
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    :cond_0
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-static {v4, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhsOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    add-int/2addr v5, v3

    .line 157
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->context:Landroid/content/Context;

    invoke-virtual {p0, v6, v4, v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getLhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;I)Landroid/view/View;

    move-result-object v4

    .line 158
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->questionTagViewMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->lms_mf_ans_layout:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 162
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getInstructionText()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v7, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;

    invoke-direct {v7, p0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent$2;-><init>(Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 228
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 231
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public getLhs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->lhs:Ljava/util/List;

    return-object v0
.end method

.method public getLhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;I)Landroid/view/View;
    .locals 5

    .line 297
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_match_the_following_image_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_match_the_following_text_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 303
    :goto_0
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->lms_mf_que_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 304
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    const/16 v4, 0x10

    .line 305
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    .line 306
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p3, v4}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getImageDrawableForMatch(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {v3, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xa

    .line 312
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 315
    :cond_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    if-eqz p1, :cond_2

    .line 316
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_image_que_option_background:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 317
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x28

    const/16 p3, 0x1e

    .line 318
    invoke-virtual {v3, p1, p3, p1, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 321
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getQuestionAnswersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->queAnsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getQuestionTagViewMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->questionTagViewMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRhs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->rhs:Ljava/util/List;

    return-object v0
.end method

.method public getRhsViewForMatchTheFollowing(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;Z)Landroid/view/View;
    .locals 10

    .line 327
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v2, 0x10

    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    sget v2, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getImageDrawableForMatch(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x1e

    const/16 v5, 0x28

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 337
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->move_icon_circle:I

    .line 338
    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 339
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    .line 337
    invoke-static {p1, v7, v9, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v4, v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 341
    new-array p1, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    .line 342
    aput-object p2, p1, v6

    .line 343
    aput-object v4, p1, p3

    .line 344
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 345
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_0

    const/16 p1, 0x30

    .line 346
    invoke-static {p2, p3, p1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/LayerDrawable;II)V

    .line 347
    invoke-static {p2, p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/graphics/drawable/LayerDrawable;II)V

    .line 348
    invoke-static {p2, p3, v2}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/graphics/drawable/LayerDrawable;II)V

    .line 349
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    invoke-static {p2, p3, p1, v4}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/LayerDrawable;III)V

    .line 351
    :cond_0
    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {v0, v5, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 354
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->move_icon:I

    .line 355
    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 356
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    .line 354
    invoke-static {p1, v6, v7, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 357
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 358
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-virtual {v0, v5, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 369
    :goto_0
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    if-eqz p1, :cond_4

    .line 370
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_image_ans_option_background:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 371
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 373
    :cond_4
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_text_ans_option_background:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 376
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object v0
.end method

.method public isImageAvailable()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->imageAvailable:Z

    return v0
.end method
