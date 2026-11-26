.class public Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
.super Ljava/lang/Object;
.source "LmsServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/LmsService;


# instance fields
.field bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field courseBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsCourseBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field eventBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsEventBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 742
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 743
    const-string v1, "courseId"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 744
    const-string p1, "moduleId"

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 745
    const-string p1, "lessonId"

    invoke-virtual {v0, p1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method


# virtual methods
.method public addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 593
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;-><init>()V

    .line 594
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->setStartDate(Ljava/lang/Long;)V

    .line 595
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;->setEndDate(Ljava/lang/Long;)V

    .line 597
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v1, "lessonId"

    invoke-virtual {p2, v1, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz p2, :cond_2

    .line 600
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getSessions()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getSessions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 601
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getSessions()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V

    .line 602
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 601
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 604
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setSessions(Ljava/lang/String;)V

    .line 606
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_0

    .line 608
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 610
    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 611
    invoke-virtual {p2, p4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 612
    invoke-virtual {p2, p5}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 613
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setSessions(Ljava/lang/String;)V

    .line 614
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    :goto_0
    invoke-virtual {p0, p5, p4, p3, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonSession(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createLmsUserMetaDataBean(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V
    .locals 2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 725
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;-><init>()V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setChecksum(Ljava/lang/String;)V

    .line 727
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setRecordUrl(Ljava/lang/String;)V

    .line 728
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setToken(Ljava/lang/String;)V

    .line 729
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setUserId(Ljava/lang/Integer;)V

    .line 730
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setMobileDate(Ljava/util/Date;)V

    .line 731
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setEventType(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setEventData(Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->eventBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 738
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### LMS Event Created for Mobile : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 773
    const-string p2, "completed"

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 774
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_COMPLETED"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonEndDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 0

    .line 758
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 759
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "endDate"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 760
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_END_DATE"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonFeedback(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 786
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 787
    const-string p2, "feedback"

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 788
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_FEEDBACK"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonPausedOn(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 766
    const-string p2, "pausedOn"

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 767
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_PAUSED_ON"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonSession(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;)V
    .locals 0

    .line 779
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 780
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "session"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_SESSION"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createStoreEventForLessonStartDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 0

    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getObjectForStoreEventData(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 752
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "startDate"

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 753
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LESSON_START_DATE"

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V
    .locals 2

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getAllowedMediaMap(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object p1

    .line 250
    sget-object v2, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 252
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v4

    .line 253
    sget-object v5, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 255
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicOrder()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaOrder()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v8, :cond_3

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :cond_3
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getLastPausedOn(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLmsUserMetaDataByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;
    .locals 3

    .line 329
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "courseId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getViewedCourseById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;
    .locals 3

    const/4 v0, 0x0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "courseId"

    .line 371
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v1, "isViewed"

    const/4 v2, 0x1

    .line 372
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v1, "isCompleted"

    const/4 v2, 0x0

    .line 373
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    if-eqz p1, :cond_0

    .line 376
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;

    invoke-direct {v1, p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    .locals 2

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getViewedLessonList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "isCompleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    .line 268
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLessonId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAnyUpdatedDataAvailable()Z
    .locals 5

    const/4 v0, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourses()Ljava/util/List;

    move-result-object v1

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 353
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 354
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedCourseById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 671
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->quizMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "courseId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 674
    :goto_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_1
    if-nez v2, :cond_1

    return v0

    .line 680
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {p1, v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    .line 681
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object p1

    .line 682
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    if-eqz p1, :cond_10

    .line 683
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x1

    if-nez p2, :cond_7

    if-nez p3, :cond_7

    .line 688
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 689
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getModuleId()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_3

    .line 690
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz v1, :cond_4

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 691
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getDoYouWantAQuizToBeMarked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 692
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttemptsToPass()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_5

    :cond_4
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    :cond_5
    return v2

    :cond_6
    return v0

    :cond_7
    if-nez p3, :cond_c

    .line 700
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 701
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getModuleId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_8

    .line 702
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 703
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getDoYouWantAQuizToBeMarked()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 704
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttemptsToPass()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_8

    :cond_a
    return v2

    :cond_b
    return v0

    .line 711
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;

    .line 712
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 713
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizTypeId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v1, :cond_e

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 714
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getDoYouWantAQuizToBeMarked()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 715
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttemptsToPass()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;->getQuizAttempts()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_d

    :cond_f
    return v2

    :cond_10
    :goto_2
    return v0
.end method

.method public makeCourseArchive(Ljava/lang/Integer;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 161
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->setArchived(Ljava/lang/Boolean;)V

    .line 162
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public makeCourseDownloadable(Ljava/lang/Integer;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 175
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->setMediaDownloaded(Ljava/lang/Boolean;)V

    .line 176
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public markCourseDataViewed(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "courseId"

    .line 422
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "isCompleted"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 425
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 428
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 429
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setViewed(Ljava/lang/Boolean;)V

    .line 431
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setTopics(Ljava/lang/String;)V

    .line 432
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setQuestionSet(Ljava/lang/String;)V

    .line 434
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1

    .line 439
    :cond_1
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 440
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 441
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 442
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setViewed(Ljava/lang/Boolean;)V

    .line 444
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCompleted(Ljava/lang/Boolean;)V

    .line 445
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 446
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setTopics(Ljava/lang/String;)V

    .line 447
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setQuestionSet(Ljava/lang/String;)V

    .line 449
    :try_start_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 451
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public markCourseViewed(Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "courseId"

    .line 388
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "isCompleted"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 391
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 394
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 395
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setViewed(Ljava/lang/Boolean;)V

    .line 398
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1

    .line 403
    :cond_1
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 404
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 405
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 406
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 407
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setViewed(Ljava/lang/Boolean;)V

    .line 408
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCompleted(Ljava/lang/Boolean;)V

    .line 409
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 411
    :try_start_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "lessonId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 463
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 466
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCompleted()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCompleted(Ljava/lang/Boolean;)V

    .line 468
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 470
    :cond_0
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 472
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_2

    .line 477
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 478
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 479
    invoke-virtual {v1, p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 480
    invoke-virtual {v1, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 481
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCompleted(Ljava/lang/Boolean;)V

    .line 482
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 484
    :try_start_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 488
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :goto_2
    return-void
.end method

.method public retrieveBookmarks(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "lessonId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 190
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "courseId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    .line 191
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {v1, p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public retrieveCourses()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 86
    :try_start_0
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v4

    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    .line 91
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {v6, v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V

    .line 92
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 93
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 94
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 95
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 96
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 105
    :cond_3
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 106
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 107
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    add-int/lit8 v8, v8, 0x1

    .line 109
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v11, v3, v3, v10}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 116
    :cond_5
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 117
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 118
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    add-int/lit8 v8, v8, 0x1

    .line 120
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v13, v14, v3, v12}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v12

    if-eqz v12, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 126
    :cond_8
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 127
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 128
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    add-int/lit8 v8, v8, 0x1

    .line 130
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v15, v7, v3, v14}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->isQuizCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v9, v9, 0x1

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    if-nez v8, :cond_c

    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    mul-int/lit8 v9, v9, 0x64

    .line 142
    div-int v7, v9, v8

    .line 144
    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->setCompletionStatus(Ljava/lang/Integer;)V

    .line 145
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 147
    :cond_d
    sget-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_COURSE_COMPLETION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-object v2
.end method

.method public saveBookmark(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;)V
    .locals 2

    .line 230
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;-><init>()V

    .line 231
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setPosition(I)V

    .line 232
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->getBookmarkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setBookmarkText(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->getBookmarkNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setBookmarkNote(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setFileName(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setLessonId(Ljava/lang/Integer;)V

    .line 236
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public storeLmsTestResult(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetAnswerDataBean;Ljava/lang/String;)V
    .locals 5

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing LMS Test Result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 286
    const-string v2, "LMS_TEST"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 287
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    .line 290
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 291
    const-string p1, "-1"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 293
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 295
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    .line 296
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 297
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 301
    new-instance p1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 302
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 305
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 307
    const-string p2, "P"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 308
    sget-object p2, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 309
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 310
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method

.method public storeUserFeedbackOfMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 632
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setUserFeedback(Ljava/lang/Integer;)V

    .line 634
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 638
    :goto_1
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonFeedback(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    .line 641
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 642
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 643
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 644
    invoke-virtual {v0, p4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 645
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setUserFeedback(Ljava/lang/Integer;)V

    .line 647
    :try_start_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 649
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public updateBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V
    .locals 2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->bookMarkBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 565
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setEndDate(Ljava/util/Date;)V

    .line 567
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 569
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 571
    :goto_1
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonEndDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V

    goto :goto_3

    .line 574
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 575
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 576
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 577
    invoke-virtual {v0, p4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 578
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setEndDate(Ljava/util/Date;)V

    .line 580
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 584
    :goto_2
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonEndDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V

    :cond_1
    :goto_3
    return-void
.end method

.method public updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 503
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1

    .line 508
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 509
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 510
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 511
    invoke-virtual {v0, p4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 512
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 514
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 519
    :goto_1
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonPausedOn(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public updateStartDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "lessonId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 532
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setStartDate(Ljava/util/Date;)V

    .line 534
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 538
    :goto_1
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonStartDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V

    goto :goto_3

    .line 541
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 542
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 543
    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 544
    invoke-virtual {v0, p4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 545
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setStartDate(Ljava/util/Date;)V

    .line 547
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->viewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 551
    :goto_2
    invoke-virtual {p0, p4, p3, p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->createStoreEventForLessonStartDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V

    :cond_1
    :goto_3
    return-void
.end method
