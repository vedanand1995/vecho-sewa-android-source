.class public Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LmsExpandableListAdaptor.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private final fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

.field private listDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final lmsService:Lcom/argusoft/sewa/android/app/core/LmsService;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private viewedLessons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Ljava/util/List;Lcom/argusoft/sewa/android/app/core/SewaFhsService;Lcom/argusoft/sewa/android/app/core/LmsService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/argusoft/sewa/android/app/core/SewaFhsService;",
            "Lcom/argusoft/sewa/android/app/core/LmsService;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 67
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->viewedLessons:Ljava/util/List;

    .line 68
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 69
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/LmsService;

    .line 70
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->openLmsTestModulePopup(Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/widget/PopupWindow;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private addQuizListViews(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 214
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 232
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getIsCaseStudyQuestionSetType()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 235
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 237
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_5
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x1

    invoke-static {v0, v8, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 244
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 245
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->lms_expandable_list_child_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 246
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v12, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->circle_view:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_7

    .line 253
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/LmsService;

    iget-object v3, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v3, v5, v2, v13}, Lcom/argusoft/sewa/android/app/core/LmsService;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test_completed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 256
    :cond_6
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_9

    .line 259
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/LmsService;

    iget-object v3, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v3, v5, v13, v14}, Lcom/argusoft/sewa/android/app/core/LmsService;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 260
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test_completed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 262
    :cond_8
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    :cond_9
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 268
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 270
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->child_text:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " ("

    if-eqz v1, :cond_a

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 276
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 279
    :cond_a
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v1

    .line 282
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lesson_image:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 285
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_quiz:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    const-string v0, "Quiz"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " seconds)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_b
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->lesson_type:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->test_button:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 295
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/16 v1, 0x8

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->group_divider:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    new-instance v13, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$3;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 310
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p1

    .line 311
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private getGroupViewOfQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)Landroid/view/View;
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->lms_expandable_list_child_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 522
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->circle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 523
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/LmsService;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v2, v2, v5}, Lcom/argusoft/sewa/android/app/core/LmsService;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test_completed:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 526
    :cond_0
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v3, 0x0

    .line 528
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 529
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 531
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->child_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 534
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->lesson_image:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 539
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_quiz:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->lesson_type:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 542
    const-string v1, "Quiz"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->test_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 545
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/16 v1, 0x8

    .line 546
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-object v0
.end method

.method private getGroupViewOfTopic(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;IZ)Landroid/view/View;
    .locals 7

    .line 483
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->lms_expandable_list_group_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 485
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->group_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 487
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->group_image:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 491
    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_up:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 493
    :cond_0
    sget p3, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_down:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    :goto_0
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->llData:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 497
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->llQuiz:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/LinearLayout;

    .line 498
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->group_test_button:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 501
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 502
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 503
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    new-instance p2, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;

    invoke-direct {p2, p0, v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->addQuizListViews(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 415
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->viewedLessons:Ljava/util/List;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 421
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->viewedLessons:Ljava/util/List;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 426
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 427
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideInteractiveFeedbackAfterEachQuestion()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 428
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity_;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 429
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 430
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x9a4

    if-ne p1, p2, :cond_4

    .line 431
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity_;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 433
    :cond_4
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    :goto_1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "questionSet"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string p2, "testFor"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    const/16 p3, 0x3f8

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private openLmsTestModulePopup(Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 320
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 322
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getIsCaseStudyQuestionSetType()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 339
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 340
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 341
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_8

    .line 346
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v0, v9, v8, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 349
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->listview_button_selector:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v0, 0x14

    .line 350
    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    const-string v3, "Please select a quiz"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 352
    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 353
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 356
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_expandable_list_child_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 357
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->unselected_listview_button:I

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    .line 359
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-virtual {v13, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 363
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->child_text:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->fhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 366
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Lcom/argusoft/sewa/android/app/core/SewaFhsService;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lesson_image:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_quiz:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    const-string v0, "Quiz"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " seconds)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_6
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->lesson_type:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->test_button:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 381
    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->group_divider:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    new-instance v14, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 400
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 401
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    check-cast v2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 403
    new-instance v2, Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    invoke-direct {v2, v11, v0, v10, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, v6, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v0, 0x10

    move-object/from16 v1, p1

    .line 404
    invoke-virtual {v2, v1, v0, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p4

    .line 406
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getChild(II)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p4, :cond_0

    .line 98
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/argusoft/sewa/android/app/R$layout;->lms_expandable_list_child_view:I

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getChild(II)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v3

    .line 103
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->child_text:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->lesson_image:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 107
    sget p5, Lcom/argusoft/sewa/android/app/R$id;->lesson_type:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "PDF"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "IMAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 127
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_unsupported_file:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    const-string p3, "Unsupported"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :pswitch_0
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_video:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    const-string p3, "Video"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 119
    :pswitch_1
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_image:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    const-string p3, "Image"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :pswitch_2
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_audio:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    const-string p3, "Audio"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    :pswitch_3
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_pdf:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_1
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->lesson_watched:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 133
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->viewedLessons:Ljava/util/List;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    const/16 v8, 0x8

    if-eqz p5, :cond_5

    .line 134
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Watched"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 135
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->transcript_button:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 142
    invoke-virtual {p3, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 144
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 145
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 146
    invoke-static {p5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    invoke-virtual {p3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 148
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;

    invoke-direct {v0, p0, v3, p5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 173
    :cond_6
    invoke-virtual {p3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {p3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    :goto_3
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->llQuiz:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/widget/LinearLayout;

    .line 180
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->test_button:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 181
    invoke-virtual {p3, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 183
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_8

    .line 184
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    new-instance p5, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;

    invoke-direct {p5, p0, p4, v3}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    invoke-virtual {p3, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 193
    :cond_8
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :goto_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->addQuizListViews(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V

    .line 198
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->group_divider:I

    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 200
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getChildrenCount(I)I

    move-result p5

    sub-int/2addr p5, v6

    if-ne p5, p2, :cond_9

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getGroupCount()I

    move-result p2

    sub-int/2addr p2, v6

    if-eq p2, p1, :cond_9

    .line 201
    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 203
    :cond_9
    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-object p4

    :sswitch_data_0
    .sparse-switch
        0x134d2 -> :sswitch_3
        0x3bba3b6 -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMS_COURSE"

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMS_GROUP_QUIZ"

    if-ne v0, v1, :cond_1

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getGroup(I)Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 474
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getGroupType()Ljava/lang/String;

    move-result-object p3

    const-string p4, "LMS_COURSE"

    if-ne p3, p4, :cond_0

    .line 475
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getQuestionSet()Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getGroupViewOfQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 477
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->listDataBeans:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->getModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getGroupViewOfTopic(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setViewedLesson(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->viewedLessons:Ljava/util/List;

    return-void
.end method
