.class public Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsAnswerViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final QUESTIONS_SCREEN:Ljava/lang/String; = "QUESTIONS_SCREEN"

.field private static final SUBMIT_TEST_SCREEN:Ljava/lang/String; = "SUBMIT_TEST_SCREEN"


# instance fields
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

.field private selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

.field private testFor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->radioGroupMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->checkBoxGroupMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->fillInTheBlanksMap:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->multiSelectQuestionMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->matchTheFollowingMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionLayoutMap:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->minHeight:Ljava/lang/Integer;

    .line 116
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    return-void
.end method

.method private getMinHeight()Ljava/lang/Integer;
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->minHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 230
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->minHeight:Ljava/lang/Integer;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->minHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method private getQuestionLayout(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v0, p0

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILL_IN_THE_BLANKS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const-string v1, "Please fill in the blanks"

    .line 277
    :cond_0
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->lms_quiz_question_layout:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 278
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    .line 280
    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 281
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionLabel:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    iget v10, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v10, v12, v9

    const-string v10, "Q%d."

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionTitle:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 287
    invoke-virtual {v4, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v8, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v8, 0x14

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v4, v1, v5, v5, v5}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 293
    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablePadding(I)V

    .line 296
    :cond_1
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->answerLayout:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 297
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 299
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
    const/16 v4, 0x3c

    const/16 v10, 0x10

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 413
    :pswitch_0
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->matchTheFollowingMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v3, :cond_6

    .line 415
    new-instance v3, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getRhs()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/core/widget/NestedScrollView;)V

    .line 416
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->matchTheFollowingMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_6
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v5

    new-instance v6, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$2;

    invoke-direct {v6, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;)V

    .line 420
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 419
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 422
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getCorrectAnswerLayout(Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 301
    :pswitch_1
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->radioGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    if-nez v3, :cond_9

    .line 303
    new-instance v3, Landroid/widget/RadioGroup;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v12}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 304
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->radioGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 307
    new-instance v14, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;)V

    .line 308
    new-instance v15, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v15, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v15, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 311
    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setBackgroundResource(I)V

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setMinHeight(I)V

    .line 313
    invoke-virtual {v14, v8, v8, v8, v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    .line 314
    invoke-virtual {v14, v9}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setEnabled(Z)V

    .line 317
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v15, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 319
    invoke-virtual {v14, v6, v5, v5, v5}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {v14, v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setCompoundDrawablePadding(I)V

    .line 321
    invoke-virtual {v14, v10}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setGravity(I)V

    .line 324
    :cond_7
    invoke-virtual {v3, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 326
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 327
    invoke-virtual {v14, v11}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setSelected(Z)V

    .line 328
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_correct:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setTextColor(I)V

    .line 330
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_correct:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 331
    invoke-virtual {v14, v8, v8, v4, v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    :cond_8
    const/4 v6, -0x1

    const/4 v7, -0x2

    goto/16 :goto_2

    .line 335
    :cond_9
    invoke-virtual {v3, v9}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 336
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 389
    :pswitch_2
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->fillInTheBlanksMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v3, :cond_a

    .line 391
    new-instance v3, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->fillInTheBlanksMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v4

    .line 396
    sget-object v5, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_FIB_BLANKS_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 397
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getEditTextList()Ljava/util/List;

    move-result-object v5

    .line 400
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;

    .line 401
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 402
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 404
    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->lms_edit_text_background_correct:I

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 405
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v7, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setTextColor(I)V

    add-int/2addr v6, v11

    goto :goto_3

    .line 409
    :cond_b
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 340
    :pswitch_3
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->checkBoxGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_f

    .line 342
    new-instance v3, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 343
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->multiSelectQuestionMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v6, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;

    invoke-direct {v6, v3, v11, v9}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V

    .line 345
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v7, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v13, v11, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 347
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 350
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v15}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 351
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setNext(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    .line 355
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v16, v13, 0x1

    invoke-static {v4, v15, v13, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v4

    .line 358
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v15, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v13, v15}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 359
    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v4, v13}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 361
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/CheckBox;->setPaddingRelative(IIII)V

    .line 362
    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 365
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v15, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 367
    invoke-virtual {v4, v9, v5, v5, v5}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 368
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setCompoundDrawablePadding(I)V

    .line 369
    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 372
    :cond_c
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 373
    invoke-virtual {v4, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 374
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_correct:I

    invoke-static {v9, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v13, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v9, v13}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 376
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    sget v13, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_correct:I

    invoke-static {v9, v13}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const/16 v9, 0x3c

    .line 377
    invoke-virtual {v4, v8, v8, v9, v8}, Landroid/widget/CheckBox;->setPaddingRelative(IIII)V

    goto :goto_5

    :cond_d
    const/16 v9, 0x3c

    .line 380
    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v13, v16

    const/16 v4, 0x3c

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 382
    :cond_e
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->changeOptions(Ljava/util/List;)V

    .line 383
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->checkBoxGroupMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_f
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_6
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

    .line 172
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 174
    const-string v1, "testFor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->testFor:Ljava/lang/String;

    .line 175
    const-string v1, "questionSet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Question Set not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    goto/16 :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 182
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 184
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;)V

    .line 186
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionConfigs:Ljava/util/List;

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionCount:Ljava/lang/Integer;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 199
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 200
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 205
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getIsLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry. You have already locked this quiz"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    if-eqz v0, :cond_5

    .line 216
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 217
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry. You have reached maximum number of attempts allowed for this Quiz"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->showProcessDialog()V

    .line 154
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 155
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 156
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 160
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getQuestionSetFromIntent()V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSectionQuestionsScreen()V

    return-void

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Question Section Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    return-void
.end method

.method private saveQuizAndFinish()V
    .locals 2

    .line 488
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->updateLockForThisQuiz()V

    .line 489
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Quiz Completed"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    return-void
.end method

.method private setSubmitScreen()V
    .locals 6

    .line 431
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->showProcessDialog()V

    .line 432
    const-string v0, "SUBMIT_TEST_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->screen:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->quiz_end_page:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 438
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 440
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->progressbar:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 445
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->progressbarText:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->separator2:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 451
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v2, :cond_3

    .line 455
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->courseImage:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 459
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 461
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 465
    :cond_0
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 466
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 465
    :cond_1
    const-string v2, "Well done you\'ve completed the quiz!"

    .line 468
    :goto_0
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->message:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 469
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_2
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->restartButton:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 475
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->lockQuizButton:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 478
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 481
    :cond_3
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->submitButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 482
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    return-void
.end method

.method private updateLockForThisQuiz()V
    .locals 9

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    const/4 v1, 0x1

    .line 518
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 498
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v4

    .line 499
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 500
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 501
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 502
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 503
    invoke-virtual {v6, v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setIsLocked(Ljava/lang/Boolean;)V

    const/4 v3, 0x1

    goto :goto_0

    .line 509
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 513
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;-><init>()V

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    .line 515
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefId(Ljava/lang/Integer;)V

    .line 516
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefType(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizTypeId(Ljava/lang/Integer;)V

    .line 518
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setIsLocked(Ljava/lang/Boolean;)V

    .line 519
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_4

    .line 523
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>()V

    .line 525
    :cond_4
    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->setQuizMetaData(Ljava/util/List;)V

    .line 526
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry! You can\'t go back from here."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 531
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->screen:Ljava/lang/String;

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

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->saveQuizAndFinish()V

    goto :goto_0

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 534
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSubmitScreen()V

    goto :goto_0

    .line 536
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    .line 537
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSectionQuestionsScreen()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 549
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 557
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "QUESTIONS_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SUBMIT_TEST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSectionQuestionsScreen()V

    goto :goto_0

    .line 559
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->onBackPressed()V

    goto :goto_0

    .line 562
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    .line 563
    iget p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

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

    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    .line 564
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSectionQuestionsScreen()V

    :goto_0
    return v2

    :cond_4
    return v1

    .line 552
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->navigateToHomeScreen(Z)V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 146
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setContentView(Landroid/view/View;)V

    .line 132
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    .line 139
    :cond_1
    const-string v0, "Learning Quiz"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setTitle(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->testFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setSectionQuestionsScreen()V
    .locals 4

    .line 238
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->showProcessDialog()V

    .line 239
    const-string v0, "QUESTIONS_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->screen:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->sectionConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 244
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

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

    .line 259
    iget v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    .line 260
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionLayoutMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionLayoutMap:Ljava/util/Map;

    iget v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->getQuestionLayout(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->questionLayoutMap:Ljava/util/Map;

    iget v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->queCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    return-void

    .line 245
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->hideProcessDialog()V

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->context:Landroid/content/Context;

    const-string v1, "Question Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity;->finish()V

    return-void
.end method
