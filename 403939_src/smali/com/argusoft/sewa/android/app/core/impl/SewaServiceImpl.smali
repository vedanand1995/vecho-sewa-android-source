.class public Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;
.super Ljava/lang/Object;
.source "SewaServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/SewaService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field announcementBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

.field context:Landroid/content/Context;

.field labelBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ListValueBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lmsEventService:Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;

.field locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field loggerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoggerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoginBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

.field notificationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private final sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

.field storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field syncBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

.field uncaughtExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    return-void
.end method

.method private clearTable(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 979
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private deleteSyncedMedia()V
    .locals 3

    .line 584
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getFilesToBeDeleted()Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 586
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private evaluateResponse([Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 657
    array-length v0, p1

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 658
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 660
    aget-object v1, p1, v0

    .line 662
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 663
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getChecksum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getLoggerBeanByFilter(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Lcom/argusoft/sewa/android/app/model/LoggerBean;

    move-result-object v2

    .line 666
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CFHC"

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 667
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "S"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 669
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-interface {v3, v7}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v2, :cond_d

    .line 674
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getNoOfAttempt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 675
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setModifiedOn(Ljava/util/Date;)V

    .line 678
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getCheckSum()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/argusoft/sewa/android/app/core/SewaService;->getFileByFormType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 679
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 680
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    if-eqz v7, :cond_0

    .line 682
    invoke-virtual {v7, v6}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setParentStatus(Ljava/lang/String;)V

    .line 684
    :try_start_1
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8, v7}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .line 686
    invoke-virtual {v7}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_2

    .line 691
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 692
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "FHS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 693
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "MEMBER_UPDATE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 694
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 695
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IDSP_NEW_FAMILY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 696
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 698
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 699
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OA_NPCB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 704
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setGeneratedId(Ljava/lang/String;)V

    .line 706
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 707
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setMessage(Ljava/lang/String;)V

    .line 710
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v1

    .line 712
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 715
    :cond_6
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 716
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "E"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 720
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz v2, :cond_d

    .line 723
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getNoOfAttempt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 724
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setModifiedOn(Ljava/util/Date;)V

    .line 727
    :try_start_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v1

    .line 729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 732
    :cond_7
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 733
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Q"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_d

    .line 735
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getNoOfAttempt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 736
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 737
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setModifiedOn(Ljava/util/Date;)V

    .line 738
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 739
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setMessage(Ljava/lang/String;)V

    .line 742
    :cond_8
    :try_start_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v1

    .line 744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 747
    :cond_9
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 748
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_d

    .line 751
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getNoOfAttempt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 752
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 753
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setModifiedOn(Ljava/util/Date;)V

    .line 755
    :try_start_6
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v1

    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 760
    :cond_a
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 761
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "HE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 763
    :try_start_7
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-interface {v3, v7}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception v3

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    :goto_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 768
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getFormType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 769
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getGeneratedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    :cond_b
    if-eqz v2, :cond_d

    .line 772
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->getNoOfAttempt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 773
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 774
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setModifiedOn(Ljava/util/Date;)V

    .line 775
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 776
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setMessage(Ljava/lang/String;)V

    .line 779
    :cond_c
    :try_start_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception v1

    .line 781
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private fetchingInitializingData()V
    .locals 7

    .line 497
    const-string v0, "MPHW"

    const-string v1, "FHW"

    const-string v2, "Network Issue During Upload to server"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 499
    :try_start_0
    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 500
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 501
    :cond_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->syncMergedFamiliesInformationWithServer()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 504
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateAnswerBeanTokensAndUserIdsOnce()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v4, :cond_2

    .line 518
    :try_start_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadDataToServer()V

    .line 519
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteSyncedMedia()V

    .line 520
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadAllMediaToServer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error Occurs while uploadDataToServer : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    return-void

    .line 529
    :cond_2
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->lmsEventService:Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsEventServiceImpl;->uploadLmsEventToServer()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 537
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadUncaughtExceptionDetailToServer()V

    .line 540
    :try_start_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->postUserReadyToMoveProduction()V

    .line 541
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->moveToProductionService:Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/MoveToProductionServiceImpl;->saveFormAccessibilityBeansFromServer()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error Occurs while saving form accessibility beans."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    const-string v2, "Network Issue During Downloading Form Access"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 548
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->fetchLocationMasterData()V

    .line 549
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Asha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForASHA()V

    goto/16 :goto_7

    .line 551
    :cond_3
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 552
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHO-HWC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 553
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 554
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPHS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 555
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UAAM MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 558
    :cond_4
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Female Health Supervisor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 559
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Supervisor Staff Nurse Corporation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 561
    :cond_5
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 562
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForAWW()V

    goto/16 :goto_7

    .line 563
    :cond_6
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RBSK MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 564
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RBSK Pharmacist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 565
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Private Hospital -Paeditracican"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 567
    :cond_7
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO PHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 568
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO UPHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 570
    :cond_8
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ophthalmic Asst."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 571
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForOA()V

    goto :goto_7

    .line 572
    :cond_9
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha Facilitator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForASHAFacilitator()V

    goto :goto_7

    .line 569
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForMO()V

    goto :goto_7

    .line 566
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForRbsk()V

    goto :goto_7

    .line 560
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForFHSR()V

    goto :goto_7

    .line 556
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getDataForFHW()V

    .line 575
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->initLabelBeanMap()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 577
    const-string v1, "Network Issue During Fetching Data for User"

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void

    :catch_4
    move-exception v0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error Occurs while Upload LMS Event To Serverf : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    return-void

    :catch_5
    move-exception v0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const-string v0, "Network Issue During Internal Process"

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method private getLoggerBeanByFilter(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Lcom/argusoft/sewa/android/app/model/LoggerBean;
    .locals 1

    .line 603
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getLoggerBeansByFilter(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 604
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 605
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLoggerBeansByFilter(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/LoggerBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LoggerBean;",
            ">;"
        }
    .end annotation

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private getStoreAnswerBeansByFilter(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            ">;"
        }
    .end annotation

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private isMobileDateSameAsServerDate(Ljava/lang/Long;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 423
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 425
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 426
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 428
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private resetData(Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;Lcom/argusoft/sewa/android/app/model/LoginBean;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 157
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 158
    const-class v0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 159
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 160
    const-class v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 161
    const-class v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 162
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 163
    const-class v0, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 164
    const-class v0, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 165
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 166
    const-class v0, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 167
    const-class v0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 168
    const-class v0, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 169
    const-class v0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 170
    const-class v0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 171
    const-class v0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 172
    const-class v0, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 173
    const-class v0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 174
    const-class v0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 175
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 176
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 177
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 178
    const-class v0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 179
    const-class v0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfListValues(Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setFirstLogin(Z)V

    .line 183
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfLabels(Ljava/lang/Long;)V

    .line 185
    const-class v0, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    const-class p1, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 191
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfInventory(Ljava/lang/Long;)V

    .line 192
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 194
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 195
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 197
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->syncBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 205
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLastUpdateOfLabels(Ljava/lang/Long;)V

    .line 206
    const-class p1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private retriveSheetStatusesByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            ">;"
        }
    .end annotation

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->syncBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 999
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private setLiveUrlData()V
    .locals 1

    .line 1112
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setLiveContextUrl()V

    .line 1113
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->techo_app:I

    sput v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    .line 1114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    return-void
.end method

.method private setTrainingUrlData()V
    .locals 1

    .line 1118
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setTrainingContextUrl()V

    .line 1119
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    sput v0, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    .line 1120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    return-void
.end method

.method private updateUserTokenInStoreAnswerBeanForExistingUser(Lcom/argusoft/sewa/android/app/model/LoginBean;)V
    .locals 5

    .line 1304
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->revalidateUserTokenForUser()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addFireBaseToken()V
    .locals 3

    .line 406
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 407
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserId(Ljava/lang/Long;)V

    .line 409
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 410
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setFirebaseToken(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->addFireBaseToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public changeBeanStatusFromUploadingToPending()V
    .locals 3

    .line 1389
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getFilesWithStatusUploading()Ljava/util/List;

    move-result-object v0

    .line 1390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 1391
    const-string v2, "P"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changeBeanStatusToUpdating(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 1397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 1398
    const-string v2, "U"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;
    .locals 3

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 943
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 944
    const-string v0, "MAX(`_ID`)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 945
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1

    invoke-interface {p1}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 946
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 949
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public createNotificationBean(Lcom/argusoft/sewa/android/app/model/NotificationBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;
    .locals 3

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 913
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 914
    const-string v0, "MAX(`_ID`)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 915
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1

    invoke-interface {p1}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 916
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 919
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public createUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Ljava/lang/Integer;
    .locals 2

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 903
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public createUploadFileDataBean(Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    .line 1406
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1408
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1409
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1411
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1412
    new-instance v5, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;-><init>()V

    .line 1413
    invoke-virtual {v5, p3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setCheckSum(Ljava/lang/String;)V

    .line 1414
    sget-object v6, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setUserName(Ljava/lang/String;)V

    .line 1415
    sget-object v6, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v5, p2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFormType(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFileName(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setUniqueId(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v5, p4}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setMemberId(Ljava/lang/Integer;)V

    .line 1420
    invoke-virtual {v5, p5}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setPregnancyRegistrationId(Ljava/lang/Integer;)V

    .line 1421
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setRecordUrl(Ljava/lang/String;)V

    .line 1422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFilePath(Ljava/lang/String;)V

    .line 1423
    const-string v3, "P"

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setParentStatus(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setNoOfAttemp(I)V

    .line 1426
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getInstance()Lcom/argusoft/sewa/android/app/util/FileUtils;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/util/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setFileType(Ljava/lang/String;)V

    .line 1427
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "locationId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setLocationId(Ljava/lang/Integer;)V

    .line 1429
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1431
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method

.method public deleteLoggerBeanByLoggerBeanId(Ljava/lang/Long;)V
    .locals 3

    const-string v0, "DELETE LOGGER_BEAN ID : "

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "_ID"

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 965
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 966
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    .line 967
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result p1

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 971
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteNotificationByNotificationId(Ljava/lang/Long;)V
    .locals 3

    const-string v0, "DELETE NOTIFICATION ID : "

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "notificationId"

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1032
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1033
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 1034
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result p1

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1038
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteStoreAnswerBeanByStoreAnswerBeanId(Ljava/lang/Long;)V
    .locals 3

    const-string v0, "DELETE STORE_ANSWER_BEAN ID : "

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "_ID"

    invoke-interface {v1, v2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 928
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 929
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 930
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result p1

    .line 931
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 934
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public doAfterSuccessfulLogin(Z)V
    .locals 3

    .line 459
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getServerIsAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 461
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->fetchingInitializingData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successful login exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string p1, "Network Issue During Initial Data Download"

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public getAllAnnouncement()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            ">;"
        }
    .end annotation

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "publishedOn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getAllLabelBean()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            ">;"
        }
    .end annotation

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 3

    .line 437
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveAndroidVersionFromServer()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method public getCurrentLoggedInUser()Lcom/argusoft/sewa/android/app/model/LoginBean;
    .locals 3

    .line 1340
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LoginBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public getFieldValueMobDataBeanByDataMap(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v1, "field"

    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 852
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertListValueBeansToFieldValueDataBean(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 854
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getFileByFormType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "formType"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v0, "checkSum"

    invoke-virtual {p1, v0, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileWorkLog()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getFileWorkLog(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "checkSum"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getFilesToBeDeleted()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 276
    const-string v0, "S"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "parentStatus"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilesToBeUploaded()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "parentStatus"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilesWithStatusUploading()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;",
            ">;"
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "parentStatus"

    const-string v2, "S"

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "U"

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationsById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;
    .locals 2

    .line 1015
    new-instance v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/NotificationBean;-><init>()V

    .line 1016
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationId(Ljava/lang/Long;)V

    const/4 p1, 0x0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1020
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1023
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p1
.end method

.method public getServerIsAlive()Z
    .locals 3

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveServerIsAlive()Z

    move-result v0
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSheetStatusByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Lcom/argusoft/sewa/android/app/model/VersionBean;
    .locals 1

    .line 1006
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->retriveSheetStatusesByFiletr(Lcom/argusoft/sewa/android/app/model/VersionBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1007
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1008
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWorkLog()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LoggerBean;",
            ">;"
        }
    .end annotation

    .line 863
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x7

    .line 864
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 865
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 866
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 867
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 869
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loggerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 870
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 871
    const-string v4, "recordUrl"

    sget-object v5, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 872
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 874
    const-string v0, "_ID"

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 876
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public initLabelBeanMap()V
    .locals 4

    .line 488
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getAllLabelBean()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    .line 492
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LabelBean;->getMapIndex()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isOnline()Z
    .locals 4

    .line 472
    const-string v0, "Network Unavailable"

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 475
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 478
    const-string v1, "Network Available"

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public isUserInProduction(Ljava/lang/String;)I
    .locals 5

    .line 1056
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1058
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1059
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1060
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->setTrainingUrlData()V

    return v1

    .line 1063
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->setLiveUrlData()V

    return v2

    .line 1068
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->setLiveUrlData()V

    const/4 v0, 0x3

    .line 1072
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v3, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveUserInProductionFromServer(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 1087
    :cond_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->setTrainingUrlData()V

    .line 1090
    :try_start_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v3, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveUserInProductionFromServer(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1097
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 1103
    :cond_3
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 1106
    :cond_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->setLiveUrlData()V

    return v2

    :catch_0
    move-exception p1

    .line 1093
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception p1

    .line 1075
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public loadQuestionsBySheet(Ljava/lang/String;)V
    .locals 8

    .line 792
    const-string v0, "entity"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 793
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 795
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    .line 798
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v3, "field"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "formCode"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 799
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 800
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    .line 801
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getField()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 803
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 804
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getField()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertListValueBeansToFieldValueDataBean(Lcom/argusoft/sewa/android/app/model/ListValueBean;)Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    :cond_2
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v2, :cond_5

    .line 813
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ":"

    if-eqz v2, :cond_3

    .line 814
    :try_start_1
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 816
    :goto_2
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 817
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    move-object v2, v1

    move-object v3, v2

    :goto_3
    if-eqz v2, :cond_8

    .line 820
    array-length v4, v2

    if-lez v4, :cond_8

    .line 821
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 822
    :goto_4
    array-length v6, v2

    if-ge v5, v6, :cond_7

    .line 823
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v6}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 824
    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    if-eqz v3, :cond_6

    .line 826
    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 828
    :cond_6
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 830
    :cond_7
    new-instance v2, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 836
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    const-string v3, "ashaVillages"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    :cond_8
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 841
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 842
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertQuestionBeansToQueFormBeans(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 844
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public retrieveLocationByLevel(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 1130
    const-string v2, "level"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1131
    const-string p1, "name"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 1133
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public retrieveLocationByParent(Ljava/lang/Integer;)V
    .locals 5

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 1151
    const-string v2, "parent"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1152
    const-string v1, "name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 1156
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;-><init>()V

    .line 1157
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setIdOfValue(I)V

    .line 1158
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->setValue(Ljava/lang/String;)V

    .line 1159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1161
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public retrieveLoggerBeanByChecksum(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LoggerBean;
    .locals 1

    .line 956
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 957
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 958
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getLoggerBeanByFilter(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Lcom/argusoft/sewa/android/app/model/LoggerBean;

    move-result-object p1

    return-object p1
.end method

.method public retrieveNotificationById(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/NotificationBean;
    .locals 2

    const/4 v0, 0x0

    .line 1189
    :try_start_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/NotificationBean;-><init>()V

    .line 1190
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->setNotificationId(Ljava/lang/Long;)V

    .line 1191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1192
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/NotificationBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public revalidateUserTokenForUser()V
    .locals 3

    .line 1315
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 1316
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setToken(Ljava/lang/String;)V

    .line 1317
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getTokenValidity(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 1321
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPasswordPlain()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1322
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 1323
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserPassMap([Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->revalidateUserToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v0

    .line 1325
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNewToken()Ljava/lang/String;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 1327
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserToken(Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 1329
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setUserToken(Ljava/lang/String;)V

    .line 1331
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateLatestTokenInStoreAnswerBean()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public storeException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .line 1203
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1204
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1205
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1207
    const-string v0, "N/A"

    const/4 v1, 0x0

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->syncBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v3, "key"

    const-string v4, "FHW SHEET VERSION"

    invoke-interface {v2, v3, v4}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1210
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1211
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    :cond_0
    :goto_0
    new-instance v2, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;-><init>()V

    .line 1218
    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setStackTrace(Ljava/lang/String;)V

    .line 1219
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setUsername(Ljava/lang/String;)V

    .line 1220
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setAndroidVersion(Ljava/lang/String;)V

    .line 1221
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setManufacturer(Ljava/lang/String;)V

    .line 1222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Sheet Version:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setModel(Ljava/lang/String;)V

    .line 1223
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setOnDate(Ljava/util/Date;)V

    const/16 p1, 0xc0

    .line 1224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setRevisionNumber(Ljava/lang/Integer;)V

    .line 1225
    invoke-virtual {v2, p2}, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;->setExceptionType(Ljava/lang/String;)V

    .line 1228
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uncaughtExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public updateAnswerBeanTokensAndUserIdsOnce()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 1248
    const-string v0, "token"

    const-string v1, "recordUrl"

    const-string v2, "userId"

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1249
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 1250
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1251
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1253
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .line 1257
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 1258
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1261
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1262
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;-><init>()V

    .line 1263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;->setUserTokens(Ljava/util/List;)V

    .line 1264
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getUserIdAndTokenFromToken(Lcom/argusoft/sewa/android/app/databean/MobileRequestParamDto;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 1270
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1271
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    .line 1272
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v5

    .line 1273
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v6

    .line 1274
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v0, v7}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v6

    .line 1275
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1276
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v6, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1277
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 1282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public updateLatestTokenInStoreAnswerBean()V
    .locals 4

    .line 1288
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 1293
    :try_start_0
    const-string v1, "token"

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v1

    .line 1294
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "userId"

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "recordUrl"

    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1296
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V
    .locals 1

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uploadFileDataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1439
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateVersionBean(Lcom/argusoft/sewa/android/app/model/VersionBean;)V
    .locals 2

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->syncBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1047
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public uploadAllMediaToServer()V
    .locals 4

    .line 1366
    :try_start_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->isRunning:Z

    if-nez v0, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->changeBeanStatusFromUploadingToPending()V

    .line 1369
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->getFilesToBeUploaded()Ljava/util/List;

    move-result-object v0

    .line 1370
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->changeBeanStatusToUpdating(Ljava/util/List;)Ljava/util/List;

    .line 1371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1372
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1373
    const-string v2, "beans"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->context:Landroid/content/Context;

    const-string v1, "Network unreachable"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->context:Landroid/content/Context;

    const-string v1, "Please wait, service is already running"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uploadDataToServer()V
    .locals 7

    .line 621
    :try_start_0
    new-instance v0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>(Z)V

    .line 622
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 623
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->getStoreAnswerBeansByFilter(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 624
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 625
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 627
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    :cond_0
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 630
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 632
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 633
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 637
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 639
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 640
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 641
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 642
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    .line 644
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->pack()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 646
    :cond_4
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v3, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->recordEntryFromMobileToServer(Ljava/lang/String;[Ljava/lang/String;)[Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;

    move-result-object v2

    .line 647
    invoke-direct {p0, v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->evaluateResponse([Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public uploadUncaughtExceptionDetailToServer()V
    .locals 3

    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uncaughtExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->uploadUncaughtExceptionToServer(Ljava/lang/Long;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1174
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->uncaughtExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1179
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public validateUser(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 290
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 292
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    .line 300
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getUserEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 302
    :catch_1
    const-string p1, "Network Issue During User related Download"

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    return-object p1

    :cond_0
    move-object v1, v2

    .line 307
    :goto_1
    const-string v3, "Invalid username and/or password"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    .line 308
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 309
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Asha"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 310
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FHW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 311
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AWW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 312
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MPHW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 313
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "CHO-HWC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 314
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UAAM MO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 315
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Female Health Supervisor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 316
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "RBSK MO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 317
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "RBSK Pharmacist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 318
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Private Hospital -Paeditracican"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 319
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "LAB Technician"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 320
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MO PHC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 321
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MO UPHC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 322
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Supervisor Staff Nurse Corporation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 323
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Asha Facilitator"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 324
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Ophthalmic Asst."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 325
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MPHS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 365
    :cond_1
    const-string p1, "User is not authorised to login"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->setLoginFailureMsg(Ljava/lang/String;)V

    return-object p1

    .line 327
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->resetData(Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;Lcom/argusoft/sewa/android/app/model/LoginBean;)V

    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 330
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUserTokenInStoreAnswerBeanForExistingUser(Lcom/argusoft/sewa/android/app/model/LoginBean;)V

    .line 333
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/Encryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v3}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertUserInfoDataBeanToLoginBeanModel(Lcom/argusoft/sewa/android/app/databean/UserInfoDataBean;Lcom/argusoft/sewa/android/app/model/LoginBean;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setPasswordPlain(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1, p4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setRemember(Z)V

    if-ne p3, v5, :cond_4

    .line 337
    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setTrainingUser(Z)V

    .line 338
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sput-boolean p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x2

    if-ne p3, p2, :cond_5

    .line 340
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setTrainingUser(Z)V

    .line 341
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sput-boolean p2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->isUserInTraining:Z

    .line 345
    :cond_5
    :goto_3
    :try_start_3
    const-class p2, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->clearTable(Ljava/lang/Class;)V

    .line 346
    invoke-virtual {p1, v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 348
    sget-object p2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez p2, :cond_6

    .line 349
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result p2

    .line 350
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setId(Ljava/lang/Integer;)V

    goto :goto_4

    .line 352
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :goto_4
    sput-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 358
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateLatestTokenInStoreAnswerBean()V

    .line 360
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isMobileDateSameAsServerDate(Ljava/lang/Long;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u0aa4\u0aae\u0abe\u0ab0\u0abe \u0aae\u0acb\u0aac\u0abe\u0a87\u0ab2\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a85\u0aa8\u0ac7 \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0aac\u0a82\u0aa7\u0aac\u0ac7\u0ab8\u0aa4\u0ac0 \u0aa8\u0aa5\u0ac0. \u0a95\u0acb\u0aae\u0acd\u0aaa\u0acd\u0aaf\u0ac1\u0a82\u0a9f\u0ab0\u0aa8\u0ac0 \u0aa4\u0abe\u0ab0\u0ac0\u0a96 \u0a9b\u0ac7 : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getServerDate()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p3, p4, v4, v5, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 363
    :cond_7
    const-string p1, "Login Successful With Network"

    return-object p1

    :cond_8
    return-object v3

    :cond_9
    if-eqz v0, :cond_c

    .line 373
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 374
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/Encryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 375
    invoke-virtual {v0, v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setLoggedIn(Z)V

    .line 377
    :try_start_4
    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setFirstLogin(Z)V

    .line 378
    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setHidden(Z)V

    .line 379
    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->setPasswordPlain(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :goto_5
    sput-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 385
    const-string p1, "Login Successful Without Network"

    return-object p1

    .line 387
    :cond_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-nez p1, :cond_b

    .line 388
    const-string p1, "Either connect to the internet or Enter correct username/password for offline login."

    return-object p1

    :cond_b
    return-object v3

    .line 394
    :cond_c
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-nez p1, :cond_d

    .line 395
    const-string p1, "You are offline, please connect to the internet."

    return-object p1

    .line 397
    :cond_d
    const-string p1, "Network Unavailable"

    return-object p1
.end method
