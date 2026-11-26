.class public Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsQuestionModuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final QUESTIONS_SCREEN:Ljava/lang/String; = "QUESTIONS_SCREEN"

.field private static final QUIZ_START_SCREEN:Ljava/lang/String; = "QUIZ_START_SCREEN"

.field private static final SUBMIT_TEST_SCREEN:Ljava/lang/String; = "SUBMIT_TEST_SCREEN"


# instance fields
.field private final answerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private bodyScroll:Landroidx/core/widget/NestedScrollView;

.field private final checkBoxGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private currentSection:Ljava/lang/Integer;

.field private endDate:Ljava/util/Date;

.field private final fillInTheBlanksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;",
            ">;"
        }
    .end annotation
.end field

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private final gson:Lcom/google/gson/Gson;

.field private lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private marksScored:Ljava/lang/Integer;

.field private final matchTheFollowingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;",
            ">;"
        }
    .end annotation
.end field

.field private minHeight:Ljava/lang/Integer;

.field private final multiSelectQuestionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            ">;"
        }
    .end annotation
.end field

.field queCount:I

.field private final questionLayoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

.field private final radioGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RadioGroup;",
            ">;"
        }
    .end annotation
.end field

.field private screen:Ljava/lang/String;

.field private sectionConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCount:Ljava/lang/Integer;

.field private final sectionWiseMarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

.field private startDate:Ljava/util/Date;

.field private testFor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionLayoutMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionWiseMarks:Ljava/util/Map;

    .line 118
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    .line 121
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    .line 130
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->startDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->saveQuizAndFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Lcom/google/gson/Gson;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->testFor:Ljava/lang/String;

    return-object p0
.end method

.method private getMinHeight()Ljava/lang/Integer;
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 289
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method private getQuestionCountString()Ljava/lang/String;
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 215
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "%s questions"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQuestionLayout(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)Landroid/widget/LinearLayout;
    .locals 16

    move-object/from16 v0, p0

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILL_IN_THE_BLANKS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v1, "Please fill in the blanks"

    .line 336
    :cond_0
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->lms_quiz_question_layout:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 337
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    .line 339
    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 340
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionLabel:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    iget v10, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v10, v12, v9

    const-string v10, "Q%d."

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionTitle:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 346
    invoke-virtual {v4, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v8, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v8, 0x14

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v4, v1, v5, v5, v5}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablePadding(I)V

    .line 355
    :cond_1
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->answerLayout:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 356
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "MATCH_THE_FOLLOWING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "SINGLE_SELECT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "MULTI_SELECT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x10

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 439
    :pswitch_0
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v3, :cond_6

    .line 441
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getRhs()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/core/widget/NestedScrollView;)V

    .line 442
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 360
    :pswitch_1
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    if-nez v3, :cond_8

    .line 362
    new-instance v3, Landroid/widget/RadioGroup;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 363
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 366
    new-instance v11, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v12, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v12, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    sget v13, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v12, v13}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 370
    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setBackgroundResource(I)V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setMinHeight(I)V

    .line 372
    invoke-virtual {v11, v8, v8, v8, v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    .line 375
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v13, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 377
    invoke-virtual {v11, v10, v5, v5, v5}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-virtual {v11, v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setCompoundDrawablePadding(I)V

    .line 379
    invoke-virtual {v11, v4}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setGravity(I)V

    .line 382
    :cond_7
    invoke-virtual {v3, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 385
    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 430
    :pswitch_2
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v3, :cond_9

    .line 432
    new-instance v3, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 389
    :pswitch_3
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_c

    .line 391
    new-instance v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 392
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v10, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;

    invoke-direct {v10, v3, v11, v9}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V

    .line 394
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v6, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 396
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 399
    new-instance v13, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v13}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 400
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v13, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setNext(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v13, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    .line 404
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v11, 0x1

    invoke-static {v13, v14, v11, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v11

    .line 407
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    sget v14, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v13, v14}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v11, v13}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 410
    invoke-virtual {v11, v8, v8, v8, v8}, Landroid/widget/CheckBox;->setPaddingRelative(IIII)V

    .line 413
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 415
    invoke-virtual {v11, v12, v5, v5, v5}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-virtual {v11, v8}, Landroid/widget/CheckBox;->setCompoundDrawablePadding(I)V

    .line 417
    invoke-virtual {v11, v4}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 420
    :cond_a
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 421
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v11, v15

    goto :goto_3

    .line 423
    :cond_b
    invoke-virtual {v10, v6}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->changeOptions(Ljava/util/List;)V

    .line 424
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_c
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x4127f51e -> :sswitch_3
        -0x3c2a1515 -> :sswitch_2
        -0x24cbb32d -> :sswitch_1
        0x66d03ee9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getQuestionSetFromIntent()V
    .locals 4

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 223
    const-string v1, "testFor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->testFor:Ljava/lang/String;

    .line 224
    const-string v1, "questionSet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Set not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    goto/16 :goto_1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 231
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 233
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    .line 235
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionCount:Ljava/lang/Integer;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 247
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 248
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 249
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    const-string v2, "Sorry. You have already locked this quiz"

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getIsCaseStudyQuestionSetType()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuestionSetId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuestionSetId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 255
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getIsLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    goto :goto_0

    .line 262
    :cond_4
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 263
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getIsLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    .line 274
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    if-eqz v0, :cond_6

    .line 275
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 276
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 277
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry. You have reached maximum number of attempts allowed for this Quiz"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method private getTotalMarks()I
    .locals 6

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 580
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 581
    const-string v4, "FILL_IN_THE_BLANKS"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 583
    :cond_1
    const-string v4, "MATCH_THE_FOLLOWING"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private initView()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->showProcessDialog()V

    .line 168
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 169
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 170
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 174
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getQuestionSetFromIntent()V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setQuizStartScreen()V

    return-void

    .line 176
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Section Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    return-void
.end method

.method private saveQuizAndFinish(Ljava/lang/Boolean;)V
    .locals 4

    .line 766
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;-><init>()V

    .line 767
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setUserId(Ljava/lang/Integer;)V

    .line 768
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setQuestionSetId(Ljava/lang/Integer;)V

    .line 769
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setPassingMarks(Ljava/lang/Integer;)V

    .line 770
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setMarksScored(Ljava/lang/Integer;)V

    .line 771
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setPassed(Ljava/lang/Boolean;)V

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setStartDate(Ljava/util/Date;)V

    .line 775
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setEndDate(Ljava/util/Date;)V

    .line 776
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setAnswerJson(Ljava/lang/String;)V

    .line 777
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 778
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setIsLocked(Ljava/lang/Boolean;)V

    .line 780
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->testFor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->storeLmsTestResult(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;Ljava/lang/String;)V

    .line 781
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->updateNumberOfAttemptsForThisQuiz()V

    .line 782
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Quiz Completed"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    return-void
.end method

.method private setQuizStartScreen()V
    .locals 8

    .line 185
    const-string v0, "QUIZ_START_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->quiz_start_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    .line 192
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->questionCount:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "s"

    .line 198
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getQuestionCountString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aput-object v5, v6, v2

    const-string v2, "%s section%s - %s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->startButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 201
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    return-void
.end method

.method private setSubmitScreen()V
    .locals 18

    move-object/from16 v6, p0

    .line 594
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->endDate:Ljava/util/Date;

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->showProcessDialog()V

    .line 596
    const-string v0, "SUBMIT_TEST_SCREEN"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 597
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 598
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 599
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->quiz_end_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 602
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 603
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 604
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 605
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getTotalMarks()I

    move-result v9

    .line 609
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->progressbar:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 610
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 611
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    if-nez v9, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v9

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->progressbarText:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 615
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->separator1:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 618
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->separator2:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 620
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->layer1:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 621
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->layer2:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 625
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v0, :cond_b

    .line 627
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->courseImage:I

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 631
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 633
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 637
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 637
    :cond_2
    const-string v0, "Well done you\'ve completed the quiz!"

    .line 640
    :goto_1
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->message:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_3
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 648
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v15

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 651
    :goto_2
    const-string v1, "Attempt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 655
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getDoYouWantAQuizToBeMarked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    add-int/lit8 v17, v16, 0x1

    .line 657
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Passing Marks"

    move-object/from16 v0, p0

    move/from16 v3, v17

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 660
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getShowQuizScoreQuizCompletion()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v16, v16, 0x2

    .line 662
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v10

    aput-object v1, v2, v15

    const-string v0, "%s / %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Marks Scored"

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_6
    move/from16 v16, v17

    .line 667
    :cond_7
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getShowTimeTakenToCompleteTheQuiz()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v16, v16, 0x1

    .line 669
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTimeSpentFromMillis(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Duration"

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_8
    move/from16 v10, v16

    .line 673
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->restartButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 674
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideOptionToRestartTestFromCompletionScreen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 675
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;

    invoke-direct {v1, v6}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 686
    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    :goto_5
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lockQuizButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 691
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideOptionToLockTheQuiz()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 692
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;

    invoke-direct {v1, v6}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 716
    :cond_a
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    :goto_6
    if-nez v10, :cond_c

    .line 721
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 722
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 725
    :cond_c
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->submitButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 726
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    return-void
.end method

.method private setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 7

    .line 732
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 733
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 734
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 736
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x11

    .line 737
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 739
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    .line 740
    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 742
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 744
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 746
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 747
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 751
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p1, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 753
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 754
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 755
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x3

    if-ge p3, p1, :cond_0

    .line 759
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;
    .locals 14

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 568
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 462
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 463
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_1
    const/4 v6, -0x1

    goto :goto_2

    :sswitch_0
    const-string v7, "MATCH_THE_FOLLOWING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "SINGLE_SELECT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_2
    const-string v7, "FILL_IN_THE_BLANKS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_3
    const-string v7, "MULTI_SELECT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 568
    :goto_2
    const-string v7, ","

    packed-switch v6, :pswitch_data_0

    return-object v2

    .line 541
    :pswitch_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v5, :cond_4

    return-object v2

    .line 546
    :cond_4
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v7

    new-instance v8, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$3;

    invoke-direct {v8, p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    .line 547
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 546
    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 549
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v7

    .line 550
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    goto :goto_4

    .line 554
    :cond_5
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 555
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 556
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 558
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v8}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v3, v8

    goto :goto_3

    .line 562
    :cond_6
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-object v2

    .line 465
    :pswitch_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    if-eqz v5, :cond_d

    .line 466
    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    if-ne v6, v8, :cond_8

    goto/16 :goto_6

    .line 470
    :cond_8
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 471
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 472
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 475
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 476
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 477
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 479
    :cond_a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 480
    :cond_b
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    goto :goto_5

    .line 483
    :cond_c
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getCorrectAnswer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getAnswer()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    .line 484
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    :goto_6
    return-object v2

    .line 515
    :pswitch_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v6, :cond_e

    return-object v2

    .line 520
    :cond_e
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    .line 521
    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 522
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_f

    goto/16 :goto_8

    .line 526
    :cond_f
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 527
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 528
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 529
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;

    .line 532
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankNumber()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 533
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankNumber()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v12, v11}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_7

    .line 535
    :cond_10
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 536
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 537
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    :goto_8
    return-object v2

    .line 488
    :pswitch_3
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v5, :cond_16

    .line 489
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12

    goto/16 :goto_a

    .line 493
    :cond_12
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 494
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 495
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 496
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 498
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_13
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 501
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 502
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_14
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 505
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 508
    :cond_15
    invoke-static {v8, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 509
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getCorrectAnswer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getAnswer()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    .line 511
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_16
    :goto_a
    return-object v2

    .line 571
    :cond_17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionWiseMarks:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4127f51e -> :sswitch_3
        -0x3c2a1515 -> :sswitch_2
        -0x24cbb32d -> :sswitch_1
        0x66d03ee9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNumberOfAttemptsForThisQuiz()V
    .locals 8

    .line 787
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 790
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 791
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v3

    .line 792
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 793
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 794
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 795
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 796
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 802
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 806
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;-><init>()V

    .line 807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    .line 808
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefId(Ljava/lang/Integer;)V

    .line 809
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefType(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizTypeId(Ljava/lang/Integer;)V

    .line 811
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setLatestScore(Ljava/lang/Integer;)V

    .line 812
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_5

    .line 816
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>()V

    .line 818
    :cond_5
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->setQuizMetaData(Ljava/util/List;)V

    .line 819
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    return-void
.end method

.method private validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 883
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V

    .line 895
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to cancel the test?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 898
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 824
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "QUESTIONS_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SUBMIT_TEST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 838
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->saveQuizAndFinish(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 826
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 827
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 828
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSubmitScreen()V

    goto :goto_0

    .line 830
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    .line 831
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSectionQuestionsScreen()V

    goto :goto_0

    .line 834
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Please answer all questions"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 846
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 848
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 853
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_5

    .line 854
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "QUESTIONS_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SUBMIT_TEST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    goto/16 :goto_0

    .line 870
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Sorry! You can\'t go back from here. Please submit the test and proceed further."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 857
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->onBackPressed()V

    goto :goto_0

    .line 859
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getAllowReviewBeforeSubmission()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 860
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    .line 861
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    .line 862
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionWiseMarks:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    .line 863
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSectionQuestionsScreen()V

    goto :goto_0

    .line 865
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Sorry! You are not allowed to go back in this Quiz."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_5
    return v1

    .line 849
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->navigateToHomeScreen(Z)V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 160
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setContentView(Landroid/view/View;)V

    .line 146
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    .line 153
    :cond_1
    const-string v0, "Learning Quiz"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setTitle(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->testFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setSectionQuestionsScreen()V
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->showProcessDialog()V

    .line 298
    const-string v0, "QUESTIONS_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 303
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 318
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    .line 319
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionLayoutMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 320
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionLayoutMap:Ljava/util/Map;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->getQuestionLayout(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->questionLayoutMap:Ljava/util/Map;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->queCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    return-void

    .line 304
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->hideProcessDialog()V

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->finish()V

    return-void
.end method
