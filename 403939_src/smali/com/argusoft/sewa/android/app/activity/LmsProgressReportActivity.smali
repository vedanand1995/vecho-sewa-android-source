.class public Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsProgressReportActivity.java"


# static fields
.field private static final COURSE_DETAIL_SCREEN:Ljava/lang/String; = "COURSE_DETAIL_SCREEN"

.field private static final COURSE_LIST_SCREEN:Ljava/lang/String; = "COURSE_LIST_SCREEN"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private courses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private coursesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private screen:Ljava/lang/String;

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->coursesMap:Ljava/util/Map;

    return-object p0
.end method

.method private addQuizDetails()V
    .locals 13

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    const-string v1, "Click on a Quiz to view its details"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ". "

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 301
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 302
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 303
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 304
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "LESSON"

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->addQuizDetailsForEachQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "MODULE"

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->addQuizDetailsForEachQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "COURSE"

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->addQuizDetailsForEachQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-ne v3, v2, :cond_5

    .line 323
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private addQuizDetailsForEachQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 331
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 338
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/argusoft/sewa/android/app/R$layout;->lms_report_quiz_details:I

    invoke-virtual {p3, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 339
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->quiz_title_layout:I

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    .line 340
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->quiz_title:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 341
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->quiz_arrow:I

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 342
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->quiz_contents:I

    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 345
    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;

    invoke-direct {p2, p0, v4, v3}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/argusoft/sewa/android/app/R$layout;->horizontal_key_value_pair_layout:I

    invoke-virtual {p2, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 361
    sget p4, Lcom/argusoft/sewa/android/app/R$id;->keyLabel:I

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/textview/MaterialTextView;

    .line 362
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->valueLabel:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 363
    const-string v3, "Total attempts"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 365
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 367
    :cond_2
    const-string p4, "0"

    invoke-virtual {v0, p4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_1
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->horizontal_key_value_pair_layout:I

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    .line 371
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->keyLabel:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 372
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->valueLabel:I

    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 373
    const-string v5, "Attempts to pass the quiz"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const-string v0, "N/A"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttemptsToPass()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 375
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttemptsToPass()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {v3, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :goto_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->horizontal_key_value_pair_layout:I

    invoke-virtual {v3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 381
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->keyLabel:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 382
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->valueLabel:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 383
    const-string v6, "Score in last attempt"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_5

    .line 384
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getLatestScore()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 385
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->getTotalMarksInAQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)Ljava/lang/Integer;

    move-result-object v0

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getLatestScore()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v5, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 389
    :cond_5
    invoke-virtual {v5, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :goto_4
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x9a4

    if-eq p1, p2, :cond_6

    .line 394
    invoke-virtual {v4, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getTotalMarksInAQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)Ljava/lang/Integer;
    .locals 5

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 404
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$4;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)V

    .line 406
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 405
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x9a4

    if-eq p1, v1, :cond_4

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 412
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 413
    const-string v3, "FILL_IN_THE_BLANKS"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 415
    :cond_2
    const-string v3, "MATCH_THE_FOLLOWING"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 111
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 112
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 113
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 452
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)V

    .line 464
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close LMS Progress Report?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 428
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 430
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 436
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "COURSE_LIST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "COURSE_DETAIL_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setCourseListScreen()V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->finish()V

    :goto_0
    return v1

    :cond_3
    return v2

    .line 431
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setContentView(Landroid/view/View;)V

    .line 99
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->finish()V

    .line 106
    :cond_1
    const-string v0, "LMS Progress Report"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public openCourseDetailScreen()V
    .locals 25

    move-object/from16 v0, p0

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->showProcessDialog()V

    .line 210
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v1

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    .line 211
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    const-string v1, "COURSE_DETAIL_SCREEN"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->screen:Ljava/lang/String;

    .line 213
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->lms_report_course_details:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 215
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->course_title:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 216
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->course_image:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 218
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->time_spent_label:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 228
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->time_spent:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 229
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->completion_status_label:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 230
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->progressbar:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 231
    sget v7, Lcom/argusoft/sewa/android/app/R$id;->progressbarText:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 232
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->most_watched_lesson_label:I

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/textview/MaterialTextView;

    .line 233
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->most_watched_lesson:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 236
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 239
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 240
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->userMetaData:Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v14, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;

    .line 242
    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getSessions()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 243
    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getSessions()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const-wide/16 v18, 0x0

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;

    .line 244
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->getEndDate()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->getStartDate()Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    sub-long v21, v21, v23

    add-long v14, v14, v21

    .line 245
    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->getEndDate()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->getStartDate()Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    sub-long v21, v21, v23

    add-long v18, v18, v21

    goto :goto_1

    :cond_1
    const-wide/16 v18, 0x0

    .line 248
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-wide v12, v14

    goto :goto_2

    :cond_4
    const-wide/16 v12, 0x0

    .line 253
    :goto_2
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    if-eqz v10, :cond_6

    .line 254
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v14

    if-lez v14, :cond_5

    :cond_6
    move-object v10, v11

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_b

    .line 260
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v17, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 261
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 262
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v17, v14

    goto :goto_6

    :cond_8
    move-object/from16 v3, v16

    goto :goto_5

    :cond_9
    move-object/from16 v16, v3

    :goto_6
    move-object/from16 v3, v16

    goto :goto_4

    :cond_a
    move-object/from16 v3, v17

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    .line 270
    :goto_7
    const-string v10, "Total\nTime\nSpent"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTimeSpentFromMillis(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const-string v2, "Completion\nStatus"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string v2, "Most\nWatched\nLesson"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_c

    .line 279
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/16 v5, 0x10

    .line 280
    invoke-virtual {v9, v4, v5, v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_8

    .line 282
    :cond_c
    const-string v2, "N/A"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_8
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->transparent:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->addQuizDetails()V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->hideProcessDialog()V

    return-void
.end method

.method public retrieveCourseList()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->courses:Ljava/util/List;

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->setCourseListScreen()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->retrieveCourseList()V

    return-void
.end method

.method public setCourseListScreen()V
    .locals 19

    move-object/from16 v7, p0

    .line 129
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    const-string v0, "COURSE_LIST_SCREEN"

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->screen:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->coursesMap:Ljava/util/Map;

    .line 133
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->courses:Ljava/util/List;

    const-string v1, "No information to show at this time. Check back after you start a course to see progress details"

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 140
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->courses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 143
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v6, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->coursesMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object v9, v6

    .line 155
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 156
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v14, v6

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 159
    :goto_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 160
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v15, v6

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 162
    :goto_3
    new-instance v6, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v10

    .line 163
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 164
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-object v8, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    .line 165
    invoke-virtual {v8, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v8, v6

    invoke-direct/range {v8 .. v17}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/Long;)V

    .line 162
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    if-nez v4, :cond_7

    .line 170
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->hideProcessDialog()V

    return-void

    .line 175
    :cond_7
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$1;

    invoke-direct {v0, v7}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)V

    .line 182
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;

    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V

    .line 195
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 200
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 202
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->hideProcessDialog()V

    return-void

    .line 134
    :cond_8
    :goto_5
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->hideProcessDialog()V

    return-void
.end method
