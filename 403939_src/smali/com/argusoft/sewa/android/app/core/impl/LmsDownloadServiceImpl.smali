.class public Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;
.super Ljava/lang/Object;
.source "LmsDownloadServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/LmsDownloadService;


# instance fields
.field context:Landroid/content/Context;

.field fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lmsCourseBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsCourseBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteFile(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->startDownloading(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Ljava/lang/Long;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->moveFile(Ljava/lang/Long;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private addCourseTestConfigMediasForDownload(Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 350
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    .line 353
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 358
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    .line 360
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 357
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addMediaFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            ")V"
        }
    .end annotation

    .line 329
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    .line 336
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LMS File does not Exists on Local : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 333
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 335
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    move-object v6, v9

    move-object v7, v10

    .line 336
    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 332
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LMS transcript File does not Exists on Local : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 342
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v6

    .line 344
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileExtension()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    .line 345
    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 341
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addOptionFeedbackMediaForScenarioForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 455
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 457
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;->getMediaName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    .line 458
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 454
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addQuestionConfigFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;",
            ")V"
        }
    .end annotation

    .line 464
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 467
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 469
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    .line 470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 466
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionOptionMediaForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 474
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionOptionMediaForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 475
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getRhs()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionOptionMediaForDownload(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private addQuestionOptionMediaForDownload(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 479
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 481
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v1, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 484
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    .line 486
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 483
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    .line 369
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 372
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 373
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 377
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 381
    :cond_4
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$2;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$2;-><init>(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;)V

    .line 382
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 381
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 384
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$3;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$3;-><init>(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;)V

    .line 385
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 384
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 388
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 389
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 390
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 391
    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionConfigFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)V

    goto :goto_2

    .line 397
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    .line 398
    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addScenarioQuestionConfigFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;)V

    .line 399
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getAudio()Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addScenarioAudioFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;)V

    goto :goto_3

    .line 403
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    .line 404
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 405
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 406
    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionConfigFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)V

    goto :goto_4

    .line 412
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;

    .line 413
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 414
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getScenarioQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 415
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 416
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 417
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getOptionFeedback()Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addOptionFeedbackMediaForScenarioForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsOptionFeedbackDataBean;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private addScenarioAudioFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 440
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 443
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 445
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsSimulationAudioDataBean;->getMediaName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    .line 446
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 442
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addScenarioQuestionConfigFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FileDownloadBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;",
            ")V"
        }
    .end annotation

    .line 428
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 431
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 433
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsScenarioConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x0

    .line 434
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 430
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static clearSharedPref(Landroid/content/Context;)V
    .locals 2

    .line 89
    const-string v0, "LMS_DOWNLOAD_PREF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private deleteFile(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFile called for File : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS_TEMP:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->clearSharedPref(Landroid/content/Context;)V

    .line 104
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v0, "mediaId"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 107
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->getNoOfAttempt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->setNoOfAttempt(Ljava/lang/Integer;)V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteLmsFile called for File : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS_TEMP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->clearSharedPref(Landroid/content/Context;)V

    .line 128
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v0, "mediaId"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 131
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->getNoOfAttempt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->setNoOfAttempt(Ljava/lang/Integer;)V

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private deleteMediaFiles(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    .locals 4

    .line 623
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileExistsOnLocal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LMS File does Exists on Local : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V

    .line 628
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileExistsOnLocal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LMS transcript File does Exists on Local : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTranscriptFileId()Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private deleteQuestionConfigFiles(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)V
    .locals 2

    .line 661
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileExistsOnLocal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V

    .line 666
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionOptionMedia(Ljava/util/List;)V

    .line 667
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getLhs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionOptionMedia(Ljava/util/List;)V

    .line 668
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->getRhs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionOptionMedia(Ljava/util/List;)V

    return-void
.end method

.method private deleteQuestionOptionMedia(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 672
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;

    .line 674
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileExistsOnLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteQuestionSetFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 636
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 639
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 640
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionBank()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;

    .line 644
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 647
    :cond_4
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->getConfigJson()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$4;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$4;-><init>(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;)V

    .line 648
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 647
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 649
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;

    .line 650
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 651
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;->getQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;

    .line 652
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionConfigFiles(Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private static getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isFileExistsOnLocal(Ljava/lang/String;)Z
    .locals 3

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 2

    .line 75
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS_TEMP:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, p1, v0, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->moveFile(Ljava/lang/Long;Ljava/io/File;Ljava/lang/String;)V

    .line 79
    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private moveFile(Ljava/lang/Long;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 141
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "#### File moved to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->clearSharedPref(Landroid/content/Context;)V

    .line 145
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p2

    .line 146
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    const-string v0, "mediaId"

    invoke-virtual {p3, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 147
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 190
    new-instance v0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;)V

    .line 248
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startDownloading(Landroid/content/Context;)V
    .locals 5

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 496
    const-string v1, "noOfAttempt"

    const/4 v2, 0x3

    .line 497
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "isDownloaded"

    const/4 v3, 0x0

    .line 498
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 496
    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->startFileDownloading(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 505
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCourseMediaToDownload(Ljava/lang/Integer;)V
    .locals 10

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->lmsCourseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "courseId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    if-eqz p1, :cond_9

    .line 524
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V

    .line 527
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "filename"

    const-string v3, "LMS_MEDIA%"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 529
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 531
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getAvailableInternalMemorySize()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gtz v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->makeCourseDownloadable(Ljava/lang/Integer;Z)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getAvailableInternalMemorySize()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->setMediaDownloaded(Ljava/lang/Boolean;)V

    .line 535
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 536
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addCourseTestConfigMediasForDownload(Ljava/util/List;Ljava/util/Map;)V

    .line 537
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 538
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 540
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v1

    .line 541
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    new-instance v1, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 543
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    .line 544
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 546
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 542
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 552
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 553
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 554
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 557
    :cond_6
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 558
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 559
    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addMediaFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_3

    .line 565
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 568
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->startDownloading(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_5
    return-void
.end method

.method public addLmsMediaFilesToDownloadList()V
    .locals 12

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "filename"

    const-string v3, "LMS_MEDIA%"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 280
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->lmsCourseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    .line 284
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V

    .line 285
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getAvailableInternalMemorySize()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-gtz v11, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->makeCourseDownloadable(Ljava/lang/Integer;Z)V

    .line 286
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getAvailableInternalMemorySize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->setMediaDownloaded(Ljava/lang/Boolean;)V

    .line 287
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addCourseTestConfigMediasForDownload(Ljava/util/List;Ljava/util/Map;)V

    .line 289
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 290
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 292
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    .line 293
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-direct {p0, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileNotExistsOnLocal(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    new-instance v2, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    .line 295
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v5

    .line 296
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getExtensionFromFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 294
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 304
    :cond_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 305
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 306
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 309
    :cond_7
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 310
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addQuestionSetFilesForDownload(Ljava/util/List;Ljava/util/List;)V

    .line 312
    invoke-direct {p0, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addMediaFilesForDownload(Ljava/util/List;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_4

    .line 319
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 320
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->fileDownloadBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 322
    :cond_9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->startDownloading(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public deleteCourseMedia(Ljava/lang/Integer;)V
    .locals 5

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->lmsCourseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "courseId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    if-eqz p1, :cond_6

    .line 582
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V

    .line 584
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object p1

    .line 585
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 586
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 587
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    .line 589
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getQuizCompletionMessage()Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->isFileExistsOnLocal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuizCompletionMessage;->getMediaId()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteLmsFile(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionSetFiles(Ljava/util/List;)V

    .line 601
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 605
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 606
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionSetFiles(Ljava/util/List;)V

    .line 607
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 610
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 611
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteQuestionSetFiles(Ljava/util/List;)V

    .line 612
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteMediaFiles(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-void
.end method

.method public getAvailableInternalMemorySize()J
    .locals 4

    .line 267
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 270
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J
    .locals 7

    .line 254
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 255
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 259
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getSize()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getSize()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v0

    :goto_2
    add-long/2addr v2, v5

    goto :goto_1

    :cond_3
    return-wide v2
.end method

.method public startFileDownloading(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getfileById?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##### Download URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 160
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, p3

    .line 164
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS_TEMP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "************Downloading started ***********"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "download"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 168
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 169
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x3

    .line 170
    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    const/4 v4, 0x1

    .line 171
    invoke-virtual {v0, v4}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TeCHO+"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Downloading LMS files"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 174
    invoke-virtual {v3, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 175
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 177
    const-string v2, "LMS_DOWNLOAD_PREF"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 179
    const-string v3, "downloadId"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v0, "mediaId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string p2, "fileName"

    invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "#### Registering the Broadcast"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->registerBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method
