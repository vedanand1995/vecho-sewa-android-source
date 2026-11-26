.class public Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsInteractiveQuestionModuleActivity.java"

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

.field currentQuestion:Ljava/lang/Integer;

.field currentSection:Ljava/lang/Integer;

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

.field isVerified:Ljava/lang/Boolean;

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

.field private nextButton:Landroid/widget/Button;

.field private queCount:Ljava/lang/Integer;

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

.field sectionCount:Ljava/lang/Integer;

.field selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

.field selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

.field private startDate:Ljava/util/Date;

.field private testFor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    .line 119
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    .line 122
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    .line 123
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    .line 128
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->queCount:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->startDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->saveQuizAndFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Lcom/google/gson/Gson;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->testFor:Ljava/lang/String;

    return-object p0
.end method

.method private getMinHeight()Ljava/lang/Integer;
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 284
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 285
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 286
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->minHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method private getQuestionCountString()Ljava/lang/String;
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

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

    .line 220
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 222
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

.method private getQuestionSetFromIntent()V
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    const-string v1, "testFor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->testFor:Ljava/lang/String;

    .line 230
    const-string v1, "questionSet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Set not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    goto/16 :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 237
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 239
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    .line 241
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionCount:Ljava/lang/Integer;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 254
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

    .line 255
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 260
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getIsLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry. You have already locked this quiz"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 272
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry. You have reached maximum number of attempts allowed for this Quiz"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method private getTotalMarks()I
    .locals 6

    .line 570
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

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

    .line 571
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

    .line 572
    const-string v4, "FILL_IN_THE_BLANKS"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 574
    :cond_1
    const-string v4, "MATCH_THE_FOLLOWING"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
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

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->showProcessDialog()V

    .line 172
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 173
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_SCROLL:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->nextButton:Landroid/widget/Button;

    .line 179
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getQuestionSetFromIntent()V

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setQuizStartScreen()V

    return-void

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Section Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    return-void
.end method

.method private saveQuizAndFinish()V
    .locals 3

    .line 757
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;-><init>()V

    .line 758
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setUserId(Ljava/lang/Integer;)V

    .line 759
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setQuestionSetId(Ljava/lang/Integer;)V

    .line 760
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setPassingMarks(Ljava/lang/Integer;)V

    .line 761
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setMarksScored(Ljava/lang/Integer;)V

    .line 762
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setPassed(Ljava/lang/Boolean;)V

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setStartDate(Ljava/util/Date;)V

    .line 766
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setEndDate(Ljava/util/Date;)V

    .line 767
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;->setAnswerJson(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->testFor:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->storeLmsTestResult(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->updateNumberOfAttemptsForThisQuiz()V

    .line 770
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Quiz Completed"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    return-void
.end method

.method private setCorrectIncorrectDescriptionForEachQuestion(Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 959
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getCorrectAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getAnswer()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 960
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getCorrectAnswerDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 961
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getCorrectAnswerDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    goto :goto_0

    .line 963
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Yay! You have answered it correctly"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 965
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    goto :goto_2

    .line 967
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getIncorrectAnswerDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 968
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getIncorrectAnswerDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    goto :goto_1

    .line 970
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Oops! You have answered it incorrectly"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 972
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 974
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setFeedbackContentForEachQuestion()V
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getInteractiveFeedbackContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getInteractiveFeedbackContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setQuestionView()V
    .locals 14

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->queCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->queCount:Ljava/lang/Integer;

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FILL_IN_THE_BLANKS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v0, "Please fill in the blanks"

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->lms_quiz_question_layout:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 300
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 301
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    .line 302
    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 303
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionLabel:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 307
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->queCount:Ljava/lang/Integer;

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v10, v11, v9

    const-string v10, "Q%d."

    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->questionTitle:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 310
    invoke-virtual {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v8

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v8, 0x14

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v4, v0, v5, v5, v5}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    invoke-virtual {v4, v8}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablePadding(I)V

    .line 319
    :cond_1
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->answerLayout:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 320
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 323
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "MATCH_THE_FOLLOWING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "SINGLE_SELECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "MULTI_SELECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 406
    :pswitch_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v1, :cond_6

    .line 408
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getRhs()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroidx/core/widget/NestedScrollView;)V

    .line 409
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 325
    :pswitch_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    if-nez v1, :cond_8

    .line 327
    new-instance v1, Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 328
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 332
    new-instance v10, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;)V

    .line 333
    new-instance v11, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v11, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 336
    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 337
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setMinHeight(I)V

    .line 338
    invoke-virtual {v10, v8, v8, v8, v8}, Landroid/widget/RadioButton;->setPadding(IIII)V

    add-int/lit8 v11, v9, 0x1

    .line 339
    invoke-virtual {v10, v9}, Landroid/widget/RadioButton;->setId(I)V

    .line 342
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v12, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 344
    invoke-virtual {v10, v4, v5, v5, v5}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {v10, v8}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 346
    invoke-virtual {v10, v3}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 349
    :cond_7
    invoke-virtual {v1, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move v9, v11

    goto :goto_2

    .line 352
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 397
    :pswitch_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v1, :cond_9

    .line 399
    new-instance v1, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 356
    :pswitch_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-nez v2, :cond_c

    .line 358
    new-instance v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 359
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;

    invoke-direct {v4, v2, v1, v9}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;-><init>(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;ZZ)V

    .line 361
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2, v6, v1, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 366
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v11}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 367
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v11, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setNext(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v11, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setRelatedProperty(Ljava/lang/String;)V

    .line 371
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v7, 0x1

    invoke-static {v11, v12, v7, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v7

    .line 374
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->lms_radio_button_text_selector:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 375
    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_selector:I

    invoke-virtual {v7, v11}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setBackgroundResource(I)V

    .line 376
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getMinHeight()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setMinHeight(I)V

    .line 377
    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPaddingRelative(IIII)V

    .line 380
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v12, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageDrawable(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 382
    invoke-virtual {v7, v10, v5, v5, v5}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {v7, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCompoundDrawablePadding(I)V

    .line 384
    invoke-virtual {v7, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setGravity(I)V

    .line 387
    :cond_a
    invoke-virtual {v7, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 388
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v7, v13

    goto :goto_3

    .line 390
    :cond_b
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxChangeListener;->changeOptions(Ljava/util/List;)V

    .line 391
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    return-void

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

.method private setQuizStartScreen()V
    .locals 8

    .line 190
    const-string v0, "QUIZ_START_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->quiz_start_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 195
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    .line 197
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->questionCount:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "s"

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getQuestionCountString()Ljava/lang/String;

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

    .line 205
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->startButton:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 206
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    return-void
.end method

.method private setSubmitScreen()V
    .locals 18

    move-object/from16 v6, p0

    .line 585
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->endDate:Ljava/util/Date;

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->showProcessDialog()V

    .line 587
    const-string v0, "SUBMIT_TEST_SCREEN"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 588
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 589
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 590
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->quiz_end_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 593
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 594
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 595
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 596
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getTotalMarks()I

    move-result v9

    .line 600
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->progressbar:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 601
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 602
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    if-nez v9, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

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

    .line 605
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->progressbarText:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 606
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->separator1:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 609
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->separator2:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 611
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->layer1:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 612
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->layer2:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 616
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz v0, :cond_b

    .line 618
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
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

    .line 621
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->courseImage:I

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 622
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 624
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 628
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 629
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 628
    :cond_2
    const-string v0, "Well done you\'ve completed the quiz!"

    .line 631
    :goto_1
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->message:I

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 632
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :cond_3
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getNoOfMaximumAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 639
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 640
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->attemptMetadata:Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v15

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 642
    :goto_2
    const-string v1, "Attempt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 646
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getDoYouWantAQuizToBeMarked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    add-int/lit8 v17, v16, 0x1

    .line 648
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getMinimumMarks()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Passing Marks"

    move-object/from16 v0, p0

    move/from16 v3, v17

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 651
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getShowQuizScoreQuizCompletion()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v16, v16, 0x2

    .line 653
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

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

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_6
    move/from16 v16, v17

    .line 658
    :cond_7
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getShowTimeTakenToCompleteTheQuiz()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v16, v16, 0x1

    .line 660
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->startDate:Ljava/util/Date;

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

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_8
    move/from16 v10, v16

    .line 664
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->restartButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 665
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideOptionToRestartTestFromCompletionScreen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 666
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$4;

    invoke-direct {v1, v6}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 677
    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 681
    :goto_5
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lockQuizButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 682
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsQuizConfigDataBean:Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideOptionToRestartTestFromCompletionScreen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 683
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    invoke-direct {v1, v6}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 707
    :cond_a
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    :goto_6
    if-nez v10, :cond_c

    .line 712
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :cond_c
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->submitButton:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 717
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    return-void
.end method

.method private setViewForScoreCard(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 7

    .line 723
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 724
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 725
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 727
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x11

    .line 728
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 730
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    .line 731
    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 733
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 734
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 735
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 737
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 738
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 741
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 742
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->white:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 743
    invoke-virtual {p1, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 744
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 745
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 746
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x3

    if-ge p3, p1, :cond_0

    .line 750
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private showVerifiedAnswer()V
    .locals 12

    .line 813
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "MATCH_THE_FOLLOWING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "SINGLE_SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "FILL_IN_THE_BLANKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "MULTI_SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const-string v0, "Correct Answer:"

    const/16 v1, 0x3c

    const/4 v5, 0x0

    const/16 v6, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_a

    .line 908
    :pswitch_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v1, :cond_4

    return-void

    .line 913
    :cond_4
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v6

    new-instance v7, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$6;

    invoke-direct {v7, p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    .line 914
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 913
    invoke-virtual {v4, v6, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 915
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 916
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v2, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 918
    :goto_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getAnswerTagViewMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_9

    .line 921
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->isImageAvailable()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v8, :cond_6

    .line 923
    move-object v8, v9

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 924
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_image_ans_option_background_correct:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 926
    :cond_6
    move-object v8, v9

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_image_ans_option_background_incorrect:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    .line 931
    move-object v8, v9

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_text_ans_option_background_correct:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 934
    :cond_8
    move-object v8, v9

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 935
    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->lms_match_text_ans_option_background_incorrect:I

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 940
    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getAnswerTagViewMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 943
    :cond_a
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 944
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v5, v5, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 945
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 946
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getCorrectAnswerLayout(Ljava/util/Map;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 815
    :pswitch_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_16

    .line 818
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 819
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 820
    invoke-virtual {v8, v3}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setEnabled(Z)V

    .line 821
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 822
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_correct:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 823
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setTextColor(I)V

    .line 824
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_correct:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 825
    invoke-virtual {v8, v6, v6, v1, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    goto :goto_5

    .line 826
    :cond_b
    invoke-virtual {v8}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getId()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    if-ne v7, v9, :cond_c

    .line 827
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_incorrect:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setTextColor(I)V

    .line 829
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_incorrect:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 830
    invoke-virtual {v8, v6, v6, v1, v6}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setPadding(IIII)V

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 834
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setCorrectIncorrectDescriptionForEachQuestion(Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;)V

    .line 835
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setFeedbackContentForEachQuestion()V

    goto/16 :goto_a

    .line 870
    :pswitch_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v1, :cond_e

    return-void

    .line 875
    :cond_e
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v4

    .line 876
    sget-object v6, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_FIB_BLANKS_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 877
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getEditTextList()Ljava/util/List;

    move-result-object v1

    .line 879
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;

    .line 882
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 883
    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 884
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 885
    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->lms_edit_text_background_correct:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 886
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_7

    .line 888
    :cond_f
    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->lms_edit_text_background_incorrect:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 889
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v11, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_7
    if-lez v7, :cond_10

    .line 892
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_10
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 898
    :cond_11
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setCorrectIncorrectDescriptionForEachQuestion(Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;)V

    .line 899
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSeparator(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 900
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-static {v5, v5, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 902
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 903
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setFeedbackContentForEachQuestion()V

    goto/16 :goto_a

    .line 840
    :pswitch_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_17

    .line 841
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_12

    goto/16 :goto_b

    .line 844
    :cond_12
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 845
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->checkBoxGroupMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_16

    .line 848
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 849
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 850
    invoke-virtual {v9, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setEnabled(Z)V

    .line 851
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 852
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_correct:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 853
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$color;->rb_correct_text:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setTextColor(I)V

    .line 854
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_correct:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 855
    invoke-virtual {v9, v6, v6, v1, v6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPaddingRelative(IIII)V

    goto :goto_9

    .line 856
    :cond_13
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 857
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->lms_radio_button_background_incorrect:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 858
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$color;->rb_incorrect_text:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setTextColor(I)V

    .line 859
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$color;->cb_tick_incorrect:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 860
    invoke-virtual {v9, v6, v6, v1, v6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setPaddingRelative(IIII)V

    :cond_14
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 864
    :cond_15
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setCorrectIncorrectDescriptionForEachQuestion(Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;)V

    .line 865
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setFeedbackContentForEachQuestion()V

    .line 952
    :cond_16
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->isVerified:Ljava/lang/Boolean;

    .line 953
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_b
    return-void

    nop

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

.method private testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;
    .locals 10

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 561
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    .line 456
    :sswitch_0
    const-string v1, "MATCH_THE_FOLLOWING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "SINGLE_SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "FILL_IN_THE_BLANKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "MULTI_SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 561
    :goto_1
    const-string v1, ","

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 534
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->matchTheFollowingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;

    if-nez v0, :cond_4

    return-object v4

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v5

    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$3;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    .line 540
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 539
    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 542
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v5

    .line 543
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v5, v6, :cond_5

    goto :goto_3

    .line 547
    :cond_5
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 548
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 549
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 551
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 552
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    .line 555
    :cond_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MatchTheFollowingComponent;->getQuestionAnswersMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswerPairs()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_7
    :goto_3
    return-object v4

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->radioGroupMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_d

    .line 459
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v5, :cond_8

    goto/16 :goto_5

    .line 463
    :cond_8
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 464
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 465
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 468
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 469
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 470
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 472
    :cond_a
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 473
    :cond_b
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    goto :goto_4

    .line 476
    :cond_c
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getCorrectAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getAnswer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 477
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_d
    :goto_5
    return-object v4

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->fillInTheBlanksMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;

    if-nez v0, :cond_e

    return-object v4

    .line 513
    :cond_e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 514
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 515
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_f

    goto/16 :goto_7

    .line 519
    :cond_f
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 520
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 521
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 522
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getAnswers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;

    .line 525
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankNumber()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 526
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->getBlankNumber()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_6

    .line 528
    :cond_10
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/FillInBlanksComponent;->getAnswers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 529
    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_11
    :goto_7
    return-object v4

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->multiSelectQuestionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_16

    .line 482
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    goto/16 :goto_a

    .line 486
    :cond_12
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;-><init>()V

    .line 487
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueId(Ljava/lang/Integer;)V

    .line 488
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getQuestionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setQueTitle(Ljava/lang/String;)V

    .line 489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 494
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getCorrect()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 495
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_14
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 498
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 501
    :cond_15
    invoke-static {v4, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setCorrectAnswer(Ljava/lang/String;)V

    .line 502
    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->setAnswer(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getCorrectAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->answerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v0

    .line 563
    :goto_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    .line 564
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_a
    return-object v4

    nop

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

    .line 775
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 778
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 779
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v3

    .line 780
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 781
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefId()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 782
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizRefType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 784
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

    .line 790
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 794
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;-><init>()V

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizAttempts(Ljava/lang/Integer;)V

    .line 796
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefId(Ljava/lang/Integer;)V

    .line 797
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getRefType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizRefType(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setQuizTypeId(Ljava/lang/Integer;)V

    .line 799
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->marksScored:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->setLatestScore(Ljava/lang/Integer;)V

    .line 800
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_5

    .line 804
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>()V

    .line 806
    :cond_5
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->setQuizMetaData(Ljava/util/List;)V

    .line 807
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    return-void
.end method

.method private validateAnswerAndGetResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 447
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

    .line 1044
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Sorry! You are not allowed to cancel this Quiz."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1045
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    .line 1057
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to cancel the test?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1060
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 987
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "QUESTIONS_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SUBMIT_TEST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1008
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->saveQuizAndFinish()V

    goto/16 :goto_1

    .line 989
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->isVerified:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 990
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 991
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setSubmitScreen()V

    goto :goto_1

    .line 993
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    .line 995
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    goto :goto_0

    .line 997
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    .line 999
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setSectionQuestionsScreen()V

    goto :goto_1

    .line 1001
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->testAndSetLmsAnswerDataBean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1002
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->showVerifiedAnswer()V

    goto :goto_1

    .line 1004
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Please answer the question"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1016
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1018
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_4

    .line 1024
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "QUESTIONS_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SUBMIT_TEST_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    goto :goto_0

    .line 1033
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Sorry! You can\'t go back from here. Please submit the test and proceed further."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 1027
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->onBackPressed()V

    goto :goto_0

    .line 1029
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v0, "Sorry! You are not allowed to go back in this Quiz."

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 1019
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 164
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_about:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->menu_home:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setContentView(Landroid/view/View;)V

    .line 150
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    .line 157
    :cond_1
    const-string v0, "Learning Quiz"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setTitle(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->testFor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setSectionQuestionsScreen()V
    .locals 3

    .line 419
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->showProcessDialog()V

    .line 420
    const-string v0, "QUESTIONS_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->screen:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyScroll:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->sectionConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentSection:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 425
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getSectionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedSection:Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->currentQuestion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->selectedQuestion:Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 440
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setQuestionView()V

    const/4 v0, 0x0

    .line 441
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->isVerified:Ljava/lang/Boolean;

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit Answer"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    return-void

    .line 426
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->hideProcessDialog()V

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v1, "Question Configurations not found. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->finish()V

    return-void
.end method
