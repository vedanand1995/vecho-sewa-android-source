.class public Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;
.super Ljava/lang/Object;
.source "LmsEventServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/LmsEventService;


# instance fields
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

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private evaluateResponse(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;

    .line 54
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsEventBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;-><init>()V

    .line 56
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getChecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setChecksum(Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->eventBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->eventBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public uploadLmsEventToServer()V
    .locals 2

    .line 33
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LmsEventBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;-><init>()V

    .line 34
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setRecordUrl(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LmsEventBean;->setUserId(Ljava/lang/Integer;)V

    .line 36
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->eventBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->lmsEventEntryFromMobileToDBeans(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->evaluateResponse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
