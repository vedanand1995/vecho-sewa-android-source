.class public Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/NotificationService;


# static fields
.field private static final OBR_OF_DON_IS_NULL_DON_ASC:Ljava/lang/String; = "dateOfNotification IS NULL, dateOfNotification ASC"

.field private static final TAG:Ljava/lang/String; = "NotificationServiceImpl"

.field private static pendingStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private final sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 66
    const-string v1, "PENDING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    const-string v1, "RESCHEDULE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    return-void
.end method

.method private getChildrenAdolescentFeeding(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where dob between date(\'now\',\'-19 year\') and  date(\'now\',\'-10 year\') and  (((julianday(adolescentScreeningDate)-julianday(\'now\'))/(365/12)) > 6 or adolescentScreeningDate is null) and (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 0) and FamilyBean.state in ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(^.|.$)"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ", "

    const-string v4, "\',\'"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) and MemberBean.state not in ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 431
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "and NotificationBean.locationId in ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "["

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "and (MemberBean.uniqueHealthId like \'%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "%\' or MemberBean.firstName like \'%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "%\' or MemberBean.familyId like \'%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "%\' or MemberBean.mobileNumber like \'%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "%\' ) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " offset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance p3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$4;

    invoke-direct {p3, p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$4;-><init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    invoke-interface {p2, p1, p3, p4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1

    .line 453
    invoke-interface {p1}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object p1

    .line 455
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 457
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    const-string p5, "NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC"

    .line 458
    invoke-virtual {p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    .line 459
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    const-string p5, "memberId"

    invoke-virtual {p4, p5, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 457
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private getChildrenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    .line 353
    const-string v4, " ) "

    const-string v5, " ) and NotificationBean.notificationCode = \'"

    const-string v6, " ) and MemberBean.state not in ("

    const-string v7, "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.dob >= date(\'now\',\'-5 year\') and FamilyBean.state in ("

    const-string v8, "\',\'"

    const-string v9, ", "

    const-string v10, "(^.|.$)"

    const-string v11, "\'"

    if-eqz v3, :cond_0

    .line 354
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 355
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 361
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 362
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and NotificationBean.state in ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 365
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 367
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 372
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 373
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= date(\'now\') and NotificationBean.state in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 376
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_1

    .line 380
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and NotificationBean.locationId in ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v2, :cond_2

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and (MemberBean.uniqueHealthId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.firstName like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.familyId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.mobileNumber like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "%\' ) "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$3;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$3;-><init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v2

    .line 402
    invoke-interface {v2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 406
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const-string v6, "NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC"

    .line 407
    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 408
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "memberId"

    invoke-virtual {v5, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "notificationCode"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 406
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private getCovidTravellersNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 527
    const-string v2, "isActive"

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 528
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 529
    invoke-virtual {v1, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    const-string v6, "name"

    invoke-virtual {v1, v6, v4}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 532
    const-string v5, "mobileNumber"

    invoke-virtual {v1, v5, p3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    new-array v5, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 530
    invoke-virtual {v1, v4, p3, v5}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    new-array v4, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 528
    invoke-virtual {v1, v2, p3, v4}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 536
    :cond_0
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 539
    :goto_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p3

    .line 540
    const-string v1, "memberId"

    const-string v2, "actualId"

    invoke-virtual {p3, v1, v2, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 541
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    const-string p5, "dateOfNotification IS NULL, dateOfNotification ASC"

    .line 542
    invoke-virtual {p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    const-string p5, "beneficiaryName"

    const/4 p6, 0x1

    .line 543
    invoke-virtual {p4, p5, p6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p4

    .line 544
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    .line 545
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    const-string p7, "state"

    const-string v0, "scheduledDate"

    const-string v1, "notificationCode"

    if-eqz p5, :cond_1

    .line 547
    invoke-virtual {p4, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 548
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    new-array p5, p6, [Lcom/j256/ormlite/stmt/Where;

    sget-object p6, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 549
    invoke-virtual {p4, p7, p6}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p6

    aput-object p6, p5, v3

    .line 546
    invoke-virtual {p4, p1, p2, p5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_1

    .line 552
    :cond_1
    const-string p5, "locationId"

    .line 553
    invoke-virtual {p4, p5, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 554
    invoke-virtual {p4, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const/4 p5, 0x2

    new-array p5, p5, [Lcom/j256/ormlite/stmt/Where;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 555
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, p5, v3

    sget-object v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 556
    invoke-virtual {p4, p7, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p7

    aput-object p7, p5, p6

    .line 552
    invoke-virtual {p4, p1, p2, p5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 560
    :goto_1
    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultNotifications(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 655
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p3

    const-string p4, "dateOfNotification IS NULL, dateOfNotification ASC"

    .line 656
    invoke-virtual {p3, p4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p3

    .line 657
    const-string p4, "beneficiaryName"

    const/4 p5, 0x1

    invoke-virtual {p3, p4, p5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p3

    .line 658
    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    .line 659
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    const-string p6, "state"

    const-string v1, "scheduledDate"

    const/4 v2, 0x0

    const-string v3, "notificationCode"

    if-eqz p4, :cond_0

    .line 661
    invoke-virtual {p3, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 662
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    new-array p4, p5, [Lcom/j256/ormlite/stmt/Where;

    sget-object p5, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 663
    invoke-virtual {p3, p6, p5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p5

    aput-object p5, p4, v2

    .line 660
    invoke-virtual {p3, p1, p2, p4}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 666
    :cond_0
    const-string p4, "locationId"

    .line 667
    invoke-virtual {p3, p4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 668
    invoke-virtual {p3, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const/4 p4, 0x2

    new-array p4, p4, [Lcom/j256/ormlite/stmt/Where;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 669
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    aput-object v1, p4, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 670
    invoke-virtual {p3, p6, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p6

    aput-object p6, p4, p5

    .line 666
    invoke-virtual {p3, p1, p2, p4}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 674
    :goto_0
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getDptBooster2AlertNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    .line 1641
    const-string v4, " ) "

    const-string v5, " ) and NotificationBean.notificationCode = \'"

    const-string v6, " ) and MemberBean.state not in ("

    const-string v7, "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where FamilyBean.state in ("

    const-string v8, "\',\'"

    const-string v9, ", "

    const-string v10, "(^.|.$)"

    const-string v11, "\'"

    if-eqz v3, :cond_0

    .line 1642
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1643
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1644
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 1648
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1649
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and NotificationBean.state in ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 1652
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1654
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 1658
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1659
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= date(\'now\') and NotificationBean.state in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 1662
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_1

    .line 1665
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and NotificationBean.locationId in ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v2, :cond_2

    .line 1670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and (MemberBean.uniqueHealthId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.firstName like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.familyId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.mobileNumber like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "%\' ) "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1678
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1682
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$5;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$5;-><init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v2

    .line 1687
    invoke-interface {v2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v2

    .line 1689
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1691
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const-string v6, "NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC"

    .line 1692
    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 1693
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "memberId"

    invoke-virtual {v5, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1694
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "notificationCode"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 1691
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private getEligibleCoupleNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    .line 206
    const-string v4, "FHW_PNC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ASHA_PNC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const-string v4, "49"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "50"

    .line 210
    :goto_1
    const-string v5, " ) "

    const-string v6, " ) and NotificationBean.notificationCode = \'"

    const-string v7, " ) and MemberBean.state not in ("

    const-string v8, " year\') and (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 0) and (MemberBean.menopauseArrived is null or MemberBean.menopauseArrived = 0) and (MemberBean.hysterectomyDone is null or MemberBean.hysterectomyDone = 0) and FamilyBean.state in ("

    const-string v9, "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where MemberBean.gender = \'F\' and MemberBean.maritalStatus = \'629\' and MemberBean.dob <= date(\'now\',\'-18 year\') and MemberBean.dob >= date(\'now\',\'-"

    const-string v10, "\',\'"

    const-string v11, ", "

    const-string v12, "(^.|.$)"

    const-string v13, "\'"

    if-eqz v3, :cond_2

    .line 211
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 225
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and NotificationBean.state in ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 231
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 242
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 243
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= date(\'now\') and NotificationBean.state in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 246
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz p1, :cond_3

    .line 249
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and NotificationBean.locationId in ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_4

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and (MemberBean.uniqueHealthId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.firstName like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.familyId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.mobileNumber like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "%\' ) "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$1;

    invoke-direct {v4, v0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v2

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 275
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const-string v6, "NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC"

    .line 276
    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 277
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "memberId"

    invoke-virtual {v5, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "notificationCode"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v3
.end method

.method private getGeriartricsMemberNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 468
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    const-string v6, "state"

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 471
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 472
    const-string v5, "familyId"

    invoke-virtual {v4, v5, v5, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v7, -0x3c

    const/4 v8, 0x1

    .line 475
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 476
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 478
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const/4 v9, 0x2

    .line 479
    const-string v10, "dob"

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 480
    sget-object v12, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 481
    invoke-virtual {v7, v6, v12}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    .line 482
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v10, v8, [Lcom/j256/ormlite/stmt/Where;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 484
    const-string v15, "uniqueHealthId"

    invoke-virtual {v7, v15, v13}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 485
    const-string v8, "firstName"

    invoke-virtual {v7, v8, v15}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    new-array v15, v9, [Lcom/j256/ormlite/stmt/Where;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 486
    invoke-virtual {v7, v5, v9}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v15, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string v5, "mobileNumber"

    invoke-virtual {v7, v5, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v15, v5

    .line 483
    invoke-virtual {v7, v13, v8, v15}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    aput-object v2, v10, v11

    .line 480
    invoke-virtual {v7, v12, v4, v10}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 491
    :cond_0
    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 492
    invoke-virtual {v7, v6, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 493
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v5, v11, [Lcom/j256/ormlite/stmt/Where;

    .line 491
    invoke-virtual {v7, v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 497
    :goto_0
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 498
    const-string v4, "memberId"

    const-string v5, "actualId"

    invoke-virtual {v2, v4, v5, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 499
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "dateOfNotification IS NULL, dateOfNotification ASC"

    .line 500
    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "beneficiaryName"

    const/4 v5, 0x1

    .line 501
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 502
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 503
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v7, "scheduledDate"

    const-string v8, "notificationCode"

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {v3, v8, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 506
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    sget-object v7, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 507
    invoke-virtual {v3, v6, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    aput-object v6, v5, v11

    .line 504
    invoke-virtual {v3, v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_1

    .line 510
    :cond_1
    const-string v4, "locationId"

    move-object/from16 v5, p1

    .line 511
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 512
    invoke-virtual {v3, v8, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 513
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v5, v11

    sget-object v7, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 514
    invoke-virtual {v3, v6, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 510
    invoke-virtual {v3, v4, v1, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 518
    :goto_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPregnantWomenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    .line 288
    const-string v4, " ) "

    const-string v5, " ) and NotificationBean.notificationCode = \'"

    const-string v6, " ) and MemberBean.state not in ("

    const-string v7, "select distinct NotificationBean.memberId from NotificationBean join MemberBean on NotificationBean.memberId = MemberBean.actualId join FamilyBean on MemberBean.familyId = FamilyBean.FamilyId where (MemberBean.isPregnantFlag is null or MemberBean.isPregnantFlag = 1) and FamilyBean.state in ("

    const-string v8, "\',\'"

    const-string v9, ", "

    const-string v10, "(^.|.$)"

    const-string v11, "\'"

    if-eqz v3, :cond_0

    .line 289
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 297
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 298
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and NotificationBean.state in ("

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 301
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 303
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 308
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 309
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and STRFTIME(\'%Y-%m-%d\', NotificationBean.scheduledDate) <= date(\'now\') and NotificationBean.state in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 312
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_1

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and NotificationBean.locationId in ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v2, :cond_2

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and (MemberBean.uniqueHealthId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.firstName like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.familyId like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%\' or MemberBean.mobileNumber like \'%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "%\' ) "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$2;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl$2;-><init>(Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v2

    .line 337
    invoke-interface {v2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v2

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 341
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const-string v6, "NotificationBean.dateOfNotification IS NULL, NotificationBean.dateOfNotification ASC, NotificationBean.beneficiaryName ASC"

    .line 342
    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 343
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "memberId"

    invoke-virtual {v5, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "notificationCode"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 341
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private getSelfHelpGroupMemberNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 566
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 567
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    const-string v6, "state"

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 569
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 570
    const-string v5, "familyId"

    invoke-virtual {v4, v5, v5, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 572
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v7, -0x5

    const/4 v8, 0x1

    .line 573
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 574
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v9, -0xa

    .line 576
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 577
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 578
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, -0x13

    .line 579
    invoke-virtual {v9, v8, v10}, Ljava/util/Calendar;->add(II)V

    .line 580
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 582
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    .line 583
    const-string v12, "isPregnantFlag"

    const-string v13, "dob"

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    .line 584
    sget-object v15, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 585
    invoke-virtual {v10, v6, v15}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v15

    .line 588
    invoke-virtual {v10, v12}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 589
    invoke-virtual {v10, v12, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    new-array v12, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 587
    invoke-virtual {v10, v11, v8, v12}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 592
    invoke-virtual {v10, v13}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    .line 593
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v10, v13, v7}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const/4 v12, 0x1

    new-array v14, v12, [Lcom/j256/ormlite/stmt/Where;

    .line 594
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v13, v9}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v14, v12

    .line 591
    invoke-virtual {v10, v11, v7, v14}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const/4 v9, 0x1

    new-array v11, v9, [Lcom/j256/ormlite/stmt/Where;

    .line 597
    invoke-virtual {v10, v13}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v14

    .line 598
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v10, v13, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v13, v12, [Lcom/j256/ormlite/stmt/Where;

    .line 596
    invoke-virtual {v10, v14, v4, v13}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v11, v12

    .line 586
    invoke-virtual {v10, v8, v7, v11}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v7, v9, [Lcom/j256/ormlite/stmt/Where;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 602
    const-string v11, "uniqueHealthId"

    invoke-virtual {v10, v11, v8}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 603
    const-string v12, "firstName"

    invoke-virtual {v10, v12, v11}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Lcom/j256/ormlite/stmt/Where;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 604
    invoke-virtual {v10, v5, v12}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v13, v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    const-string v5, "mobileNumber"

    invoke-virtual {v10, v5, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v13, v5

    .line 601
    invoke-virtual {v10, v8, v11, v13}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    aput-object v2, v7, v14

    .line 584
    invoke-virtual {v10, v15, v4, v7}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 609
    :cond_0
    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 610
    invoke-virtual {v10, v6, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 613
    invoke-virtual {v10, v12}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 614
    invoke-virtual {v10, v12, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    new-array v11, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 612
    invoke-virtual {v10, v5, v8, v11}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 617
    invoke-virtual {v10, v13}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 618
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v10, v13, v7}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/j256/ormlite/stmt/Where;

    .line 619
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v13, v9}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    aput-object v9, v12, v14

    .line 616
    invoke-virtual {v10, v8, v7, v12}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    new-array v8, v11, [Lcom/j256/ormlite/stmt/Where;

    .line 622
    invoke-virtual {v10, v13}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 623
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v10, v13, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v11, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 621
    invoke-virtual {v10, v9, v4, v11}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v8, v14

    .line 611
    invoke-virtual {v10, v5, v7, v8}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v5, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 609
    invoke-virtual {v10, v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 629
    :goto_0
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 630
    const-string v4, "memberId"

    const-string v5, "actualId"

    invoke-virtual {v2, v4, v5, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 631
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "dateOfNotification IS NULL, dateOfNotification ASC"

    .line 632
    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "beneficiaryName"

    const/4 v5, 0x1

    .line 633
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 634
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 635
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v7, "scheduledDate"

    const-string v8, "notificationCode"

    if-eqz v4, :cond_1

    .line 637
    invoke-virtual {v3, v8, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 638
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    sget-object v7, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 639
    invoke-virtual {v3, v6, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    .line 636
    invoke-virtual {v3, v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 642
    const-string v4, "locationId"

    move-object/from16 v5, p1

    .line 643
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 644
    invoke-virtual {v3, v8, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 645
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v5, v9

    sget-object v7, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    .line 646
    invoke-virtual {v3, v6, v7}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 642
    invoke-virtual {v3, v4, v1, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 649
    :goto_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2

    .line 977
    const-string v0, "F"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "629"

    .line 978
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 979
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 980
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 981
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 982
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 983
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 984
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public checkIfThereArePendingNotificationsForMember(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1518
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1519
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "notificationCode"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    .line 1520
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v0, "state"

    sget-object v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {p2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    .line 1521
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v0, "memberId"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    .line 1524
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1527
    const-string p2, "NotificationServiceImpl"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    .line 1529
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getAdolescentChildrenInArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-nez p2, :cond_0

    .line 1550
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 1553
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string v5, "actualID"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 1556
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "parent"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    .line 1557
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 1558
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1562
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_2

    .line 1563
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1564
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1566
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1567
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1570
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, -0xa

    const/4 v5, 0x1

    .line 1571
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 1572
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1573
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1574
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v6, -0x13

    .line 1575
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1576
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1577
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1578
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    .line 1579
    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 1580
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1581
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1584
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    .line 1585
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 1586
    const-string v10, "familyId"

    invoke-virtual {v9, v10, v10, v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->join(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 1587
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    .line 1589
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 1590
    sget-object v11, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    .line 1591
    const-string v12, "state"

    invoke-virtual {v7, v12, v11}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const-string v13, "locationId"

    .line 1593
    invoke-virtual {v7, v13, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    const-string v14, "areaId"

    .line 1594
    invoke-virtual {v7, v14, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v14, 0x0

    new-array v15, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1592
    invoke-virtual {v7, v13, v4, v15}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v13, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1590
    invoke-virtual {v7, v11, v4, v13}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 1598
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 1599
    const-string v7, "dob"

    const-string v9, "isPregnantFlag"

    const-string v11, "adolescentScreeningDate"

    if-eqz v2, :cond_4

    .line 1601
    invoke-virtual {v4, v7, v3, v1}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1602
    invoke-virtual {v4, v12, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v7, 0x3

    new-array v12, v7, [Lcom/j256/ormlite/stmt/Where;

    .line 1604
    invoke-virtual {v4, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    .line 1605
    invoke-virtual {v4, v11, v6}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    new-array v11, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1603
    invoke-virtual {v4, v13, v6, v11}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    aput-object v6, v12, v14

    .line 1608
    invoke-virtual {v4, v9}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 1609
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    new-array v11, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1607
    invoke-virtual {v4, v6, v9, v11}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    aput-object v6, v12, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1612
    const-string v11, "firstName"

    invoke-virtual {v4, v11, v6}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1613
    const-string v13, "middleName"

    invoke-virtual {v4, v13, v11}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/j256/ormlite/stmt/Where;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1614
    const-string v7, "lastName"

    invoke-virtual {v4, v7, v15}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v13, v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1615
    const-string v14, "uniqueHealthId"

    invoke-virtual {v4, v14, v7}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v13, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1616
    invoke-virtual {v4, v10, v5}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    aput-object v5, v13, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1617
    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v13, v5

    .line 1611
    invoke-virtual {v4, v6, v11, v13}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    aput-object v2, v12, v8

    .line 1600
    invoke-virtual {v4, v1, v3, v12}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_2

    .line 1621
    :cond_4
    invoke-virtual {v4, v7, v3, v1}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1622
    invoke-virtual {v4, v12, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v3, v8, [Lcom/j256/ormlite/stmt/Where;

    .line 1624
    invoke-virtual {v4, v11}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 1625
    invoke-virtual {v4, v11, v6}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    new-array v8, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1623
    invoke-virtual {v4, v7, v6, v8}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    aput-object v6, v3, v14

    .line 1628
    invoke-virtual {v4, v9}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 1629
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    new-array v8, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 1627
    invoke-virtual {v4, v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1620
    invoke-virtual {v4, v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 1634
    :goto_2
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(Ljava/util/List;Ljava/util/Date;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1140
    const-string v0, "dob"

    const-string v1, "state"

    const-string v2, "familyId"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1141
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "areaId"

    .line 1148
    invoke-virtual {v4, v5, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 1149
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {p1, v1, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 1151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 1152
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1156
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1157
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, -0x5

    const/4 v4, 0x1

    .line 1158
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p2, -0x3

    const/4 v5, 0x2

    .line 1159
    invoke-virtual {p1, v5, p2}, Ljava/util/Calendar;->add(II)V

    .line 1160
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    const/16 v6, -0x15

    .line 1161
    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1162
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 1164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 1167
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 1169
    invoke-virtual {v6, v2, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1170
    invoke-virtual {v6, v1, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 1171
    invoke-virtual {v6, v0, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    aput-object p1, v3, v7

    .line 1172
    invoke-virtual {v6, v0, p2}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    aput-object p1, v3, v4

    .line 1173
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->not()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string p2, "immunisationGiven"

    const-string v0, "%DPT_BOOSTER_2#%"

    invoke-virtual {p1, p2, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    aput-object p1, v3, v5

    .line 1168
    invoke-virtual {v6, v2, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 1175
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 1198
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1199
    const-string p2, "DPT_BOOSTER_2_ALERT"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public retrieveCountForAshaReportedEventNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez p2, :cond_0

    .line 1280
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 1283
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "actualId"

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 1286
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v5, "parent"

    invoke-virtual {v3, v5, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 1287
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 1288
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1292
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 1293
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1294
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1295
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1298
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1299
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1300
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1305
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "scheduledDate"

    const-string v5, "familyId"

    const-string v6, "memberId"

    const-string v7, "notificationCode"

    const-string v8, "state"

    if-eqz v0, :cond_4

    .line 1306
    :try_start_2
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v7, v6, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v8, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/NotificationConstants;->ASHA_REPORTED_EVENT_NOTIFICATIONS:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 1312
    :cond_4
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v7, v6, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 1313
    invoke-virtual {v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v5, "locationId"

    invoke-virtual {v0, v5, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v8, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/NotificationConstants;->ASHA_REPORTED_EVENT_NOTIFICATIONS:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    .line 1320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v12, "FHW_MEMBER_MIGRATION"

    const-string v13, "FHW_DEATH_CONF"

    const-string v14, "FHW_FAMILY_SPLIT"

    const-string v15, "FHW_FAMILY_MIGRATION"

    const-string v2, "FHW_DELIVERY_CONF"

    move-object/from16 p2, v3

    const-string v3, "FHW_PREG_CONF"

    if-eqz v11, :cond_d

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    move-object/from16 v16, v0

    .line 1331
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v17

    move-object/from16 v18, v5

    const/4 v5, 0x1

    sparse-switch v17, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_7

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_7

    :sswitch_2
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_7

    :sswitch_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_7

    :sswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_7

    :sswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v0, -0x1

    :goto_7
    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    goto/16 :goto_8

    .line 1383
    :cond_6
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1384
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v0, :cond_c

    .line 1387
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v10, v0

    goto/16 :goto_9

    .line 1373
    :cond_7
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1374
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getFamilyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v0, :cond_c

    .line 1377
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v9, v0

    goto/16 :goto_9

    .line 1363
    :cond_8
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1364
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_c

    .line 1367
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v7, v0

    goto/16 :goto_9

    .line 1353
    :cond_9
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1354
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_c

    .line 1357
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v6, v0

    goto :goto_9

    .line 1343
    :cond_a
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1344
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_c

    .line 1347
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v5, v0

    goto :goto_a

    .line 1333
    :cond_b
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1334
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_c

    .line 1337
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_9

    :cond_c
    :goto_8
    move-object/from16 v3, p2

    :goto_9
    move-object/from16 v5, v18

    :goto_a
    move-object/from16 v0, v16

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_d
    move-object/from16 v18, v5

    .line 1396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p2

    .line 1397
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 1398
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    invoke-interface {v0, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1406
    const-string v2, "NotificationServiceImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d7b4a5b -> :sswitch_5
        -0x7cbd0843 -> :sswitch_4
        -0x3b71c977 -> :sswitch_3
        -0x34606727 -> :sswitch_2
        -0x1287f8b -> :sswitch_1
        0x47fc1b73 -> :sswitch_0
    .end sparse-switch
.end method

.method public retrieveCountForNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez p2, :cond_0

    .line 681
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 684
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "actualId"

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 687
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v5, "parent"

    invoke-virtual {v3, v5, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 688
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 689
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 693
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 695
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 696
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 698
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 699
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 703
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "scheduledDate"

    const-string v5, "memberId"

    const-string v6, "notificationCode"

    const-string v7, "state"

    if-eqz v0, :cond_4

    .line 704
    :try_start_2
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 709
    :cond_4
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v5, "locationId"

    invoke-virtual {v0, v5, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    .line 716
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 717
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 718
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 719
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 726
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 727
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 730
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 731
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 732
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 733
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 736
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 737
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 738
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 739
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 741
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 p1, v3

    .line 742
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 744
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 p2, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v57, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    move-object/from16 v6, v57

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v32
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "FHW_SAM_SCREENING_REF"

    move-object/from16 v34, v3

    const-string v3, "AMRUTPAN_UC"

    move-object/from16 v35, v5

    const-string v5, "FMI"

    move-object/from16 v36, v6

    const-string v6, "AMRUTPAN"

    move-object/from16 v37, v8

    const-string v8, "SAM_SCREENING"

    move-object/from16 v38, v9

    const-string v9, "ASHA_READ_ONLY"

    move-object/from16 v39, v10

    const-string v10, "FHW_CS"

    move-object/from16 v40, v14

    const-string v14, "FHW_PNC"

    move-object/from16 v41, v15

    const-string v15, "READ_ONLY"

    move-object/from16 v42, v2

    const-string v2, "DISCHARGE"

    move-object/from16 v43, v2

    const-string v2, "FHW_WPD"

    move-object/from16 v44, v6

    const-string v6, "MO"

    move-object/from16 v45, v14

    const-string v14, "FHW_ANC"

    move-object/from16 v46, v14

    const-string v14, "MI"

    move-object/from16 v47, v2

    const-string v2, "LMPFU"

    if-eqz v32, :cond_16

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    move-object/from16 v48, v0

    .line 747
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_5

    .line 748
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_4
    move-object/from16 v3, v34

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    move-object/from16 v0, v48

    :goto_5
    const/4 v2, 0x0

    goto :goto_3

    .line 751
    :cond_5
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 752
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_4

    .line 755
    :cond_6
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 756
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_4

    .line 759
    :cond_7
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 760
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_4

    .line 764
    :cond_8
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 765
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_4

    .line 768
    :cond_9
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NWC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 769
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    goto :goto_4

    .line 773
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TRAVELLERS_SCREENING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 774
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6

    .line 777
    :cond_b
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v2, "isActive"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    if-eqz v0, :cond_e

    .line 779
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getActive()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 782
    :cond_c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    goto/16 :goto_4

    .line 786
    :cond_d
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_6
    move-object/from16 v49, v4

    move-object/from16 v50, v7

    move-object/from16 v52, v12

    move-object/from16 v51, v13

    goto/16 :goto_15

    .line 790
    :cond_f
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v49, "isPregnantFlag"

    const-string v50, "familyId"

    const-string v51, "state"

    const-string v52, "dob"

    const-string v53, "gender"

    const-string v54, "maritalStatus"

    const-string v55, "menopauseArrived"

    const-string v56, "hysterectomyDone"

    filled-new-array/range {v49 .. v56}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_e

    .line 793
    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_6

    .line 797
    :cond_10
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 798
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "familyId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v5, :cond_e

    .line 799
    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_6

    .line 803
    :cond_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, -0x5

    .line 804
    invoke-virtual {v5, v14, v6}, Ljava/util/Calendar;->add(II)V

    .line 805
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 806
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v9, -0x3c

    .line 807
    invoke-virtual {v6, v14, v9}, Ljava/util/Calendar;->add(II)V

    .line 808
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 809
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v15, -0xa

    .line 810
    invoke-virtual {v9, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 811
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 812
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v49, v4

    const/16 v4, -0x13

    .line 813
    invoke-virtual {v15, v14, v4}, Ljava/util/Calendar;->add(II)V

    .line 814
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 815
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v50, v7

    const/16 v7, -0x12

    .line 816
    invoke-virtual {v15, v14, v7}, Ljava/util/Calendar;->add(II)V

    .line 817
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 818
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v51, v13

    const/16 v13, -0x31

    .line 819
    invoke-virtual {v15, v14, v13}, Ljava/util/Calendar;->add(II)V

    .line 820
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    .line 821
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v52, v12

    const/16 v12, -0x32

    .line 822
    invoke-virtual {v15, v14, v12}, Ljava/util/Calendar;->add(II)V

    .line 823
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 824
    invoke-virtual/range {v32 .. v32}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x4

    goto/16 :goto_8

    :sswitch_1
    const-string v2, "APPETITE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x9

    goto/16 :goto_8

    :sswitch_2
    const-string v2, "AWW_CS"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x12

    goto/16 :goto_8

    :sswitch_3
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x6

    goto/16 :goto_8

    :sswitch_4
    const-string v2, "ASHA_LMPFU"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xe

    goto/16 :goto_8

    :sswitch_5
    const-string v2, "CMAM_FOLLOWUP"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xb

    goto/16 :goto_8

    :sswitch_6
    const-string v2, "FHW_SAM_AFTER_CMAM"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xc

    goto/16 :goto_8

    :sswitch_7
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x8

    goto/16 :goto_8

    :sswitch_8
    const-string v2, "ASHA_PNC"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x10

    goto/16 :goto_8

    :sswitch_9
    const-string v2, "ASHA_ANC"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xf

    goto/16 :goto_8

    :sswitch_a
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_8

    :sswitch_b
    const-string v2, "ASHA_CS"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x11

    goto/16 :goto_8

    :sswitch_c
    const-string v2, "SHG"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x14

    goto :goto_8

    :sswitch_d
    const-string v2, "GMA"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    goto :goto_8

    :sswitch_e
    move-object/from16 v2, v47

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    goto :goto_8

    :sswitch_f
    move-object/from16 v2, v45

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    goto :goto_8

    :sswitch_10
    move-object/from16 v2, v46

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_8

    :sswitch_11
    move-object/from16 v2, v44

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x7

    goto :goto_8

    :sswitch_12
    move-object/from16 v2, v42

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xa

    goto :goto_8

    :sswitch_13
    move-object/from16 v2, v43

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x5

    goto :goto_8

    :sswitch_14
    const-string v2, "ASHA_SAM_SCREENING"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xd

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v2, -0x1

    :goto_8
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    .line 926
    :pswitch_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 927
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9
    move-object/from16 v2, p2

    move-object/from16 v31, v0

    goto/16 :goto_a

    .line 928
    :cond_13
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 929
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    .line 930
    :cond_14
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 931
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    .line 921
    :pswitch_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 922
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v28, v0

    goto/16 :goto_a

    .line 916
    :pswitch_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 917
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v23, v0

    goto :goto_a

    .line 911
    :pswitch_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 912
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v20, v0

    goto :goto_a

    .line 906
    :pswitch_4
    invoke-direct {v1, v0, v7, v12}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 907
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v19, v0

    goto :goto_a

    .line 901
    :pswitch_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 902
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v21, v0

    goto :goto_a

    .line 896
    :pswitch_6
    invoke-direct {v1, v0, v7, v13}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 897
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v18, v0

    :goto_a
    move-object/from16 v5, v35

    goto/16 :goto_b

    .line 891
    :pswitch_7
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 892
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v24, v0

    goto :goto_a

    .line 886
    :pswitch_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 887
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v26, v0

    goto :goto_a

    .line 881
    :pswitch_9
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 882
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v27, v0

    goto :goto_a

    .line 876
    :pswitch_a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 877
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v25, v0

    goto :goto_a

    .line 871
    :pswitch_b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 872
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object/from16 v16, v0

    goto/16 :goto_a

    .line 866
    :pswitch_c
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 867
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_a

    .line 861
    :pswitch_d
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 862
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_13

    .line 856
    :pswitch_e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 857
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v15, v0

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v14, v40

    goto/16 :goto_11

    .line 851
    :pswitch_f
    invoke-direct {v1, v0, v7, v13}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 852
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v14, v0

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    goto/16 :goto_10

    .line 846
    :pswitch_10
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 847
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v10, v0

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    goto/16 :goto_f

    .line 841
    :pswitch_11
    invoke-direct {v1, v0, v7, v12}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 842
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v9, v0

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    goto :goto_e

    .line 836
    :pswitch_12
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 837
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v8, v0

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    goto :goto_d

    .line 831
    :pswitch_13
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 832
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v6, v0

    move-object/from16 v5, v35

    goto :goto_c

    .line 826
    :pswitch_14
    invoke-direct {v1, v0, v7, v13}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 827
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p2

    move-object v5, v0

    :goto_b
    move-object/from16 v6, v36

    :goto_c
    move-object/from16 v8, v37

    :goto_d
    move-object/from16 v9, v38

    :goto_e
    move-object/from16 v10, v39

    :goto_f
    move-object/from16 v14, v40

    :goto_10
    move-object/from16 v15, v41

    :goto_11
    move-object/from16 v0, p1

    goto :goto_14

    :cond_15
    :goto_12
    move-object/from16 v0, p1

    :goto_13
    move-object/from16 v2, p2

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    :goto_14
    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 v3, v34

    goto :goto_16

    :goto_15
    move-object/from16 v3, v34

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    :goto_16
    move-object/from16 v0, v48

    move-object/from16 v4, v49

    move-object/from16 v7, v50

    move-object/from16 v13, v51

    move-object/from16 v12, v52

    goto/16 :goto_5

    :cond_16
    move-object/from16 v32, v9

    move-object/from16 v52, v12

    move-object/from16 v51, v13

    move-object/from16 v0, v42

    move-object/from16 v12, v43

    move-object/from16 v4, v44

    move-object/from16 v7, v45

    move-object/from16 v1, v46

    move-object/from16 v13, v47

    .line 938
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v33, v15

    move-object/from16 v15, v35

    .line 939
    invoke-interface {v9, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v2, "NEWLY_WED_COUPLES"

    move-object/from16 v15, v30

    invoke-interface {v9, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v36

    .line 941
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v37

    .line 942
    invoke-interface {v9, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v40

    .line 943
    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v38

    .line 944
    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v39

    .line 945
    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v41

    .line 946
    invoke-interface {v9, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p1

    .line 947
    invoke-interface {v9, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    .line 948
    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    .line 949
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v0, "APPETITE"

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v0, "FHW_SAM_AFTER_CMAM"

    move-object/from16 v1, v26

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v0, "CMAM_FOLLOWUP"

    move-object/from16 v1, v27

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    invoke-interface {v9, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v52

    .line 954
    invoke-interface {v9, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v51

    .line 955
    invoke-interface {v9, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v0, "ASHA_SAM_SCREENING"

    move-object/from16 v1, v24

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string v0, "ASHA_PNC"

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v0, "ASHA_CS"

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v0, "ASHA_ANC"

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v0, "ASHA_LMPFU"

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    .line 961
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    .line 962
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v0, "AWW_CS"

    move-object/from16 v1, v23

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v0, "GMA"

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v0, "TRAVELLERS_SCREENING"

    move-object/from16 v1, v29

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v0, "ADOLESCENT_HEALTH_SCREENING"

    move-object/from16 v1, v34

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v0, "SHG"

    move-object/from16 v1, v31

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v9

    :catch_0
    move-exception v0

    .line 971
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76aa913e -> :sswitch_14
        -0x618d6b5e -> :sswitch_13
        -0x2f4bc9e0 -> :sswitch_12
        -0x25d13468 -> :sswitch_11
        -0x938b5b4 -> :sswitch_10
        -0x9387d65 -> :sswitch_f
        -0x93862df -> :sswitch_e
        0x1141b -> :sswitch_d
        0x14092 -> :sswitch_c
        0x2cdc84 -> :sswitch_b
        0x4532ffe -> :sswitch_a
        0x56eac22 -> :sswitch_9
        0x56ee471 -> :sswitch_8
        0x2b9fdc95 -> :sswitch_7
        0x46b7b0e3 -> :sswitch_6
        0x4aea1e15 -> :sswitch_5
        0x650ef36a -> :sswitch_4
        0x662dd756 -> :sswitch_3
        0x73ddf68e -> :sswitch_2
        0x74963c0a -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveCountForNotificationTypeBasedOnCampaign(Ljava/util/List;Ljava/util/List;Ljava/util/Date;)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez p2, :cond_0

    .line 991
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 994
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "actualId"

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 996
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 997
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v5, "parent"

    invoke-virtual {v3, v5, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 998
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 999
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1003
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 1005
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1006
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1008
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1009
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1013
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "scheduledDate"

    const-string v5, "memberId"

    const-string v6, "notificationCode"

    const-string v7, "state"

    if-eqz v0, :cond_4

    .line 1014
    :try_start_2
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 1019
    :cond_4
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v5, "locationId"

    invoke-virtual {v0, v5, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v0, v7, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    .line 1026
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1027
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1029
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1030
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1031
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1032
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1033
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v13, "DPT_BOOSTER_2_ALERT"

    const-string v14, "ASHA_CS"

    const-string v15, "FHW_CS"

    const-string v2, "ASHA_PNC"

    move-object/from16 p2, v3

    const-string v3, "FHW_PNC"

    move-object/from16 p3, v6

    const-string v6, "ASHA_ANC"

    move-object/from16 v16, v9

    const-string v9, "FHW_ANC"

    if-eqz v12, :cond_c

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 1037
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_5

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v26, v11

    goto/16 :goto_f

    :cond_5
    move-object/from16 v17, v0

    .line 1041
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v18, "isPregnantFlag"

    const-string v19, "familyId"

    const-string v20, "state"

    const-string v21, "dob"

    const-string v22, "gender"

    const-string v23, "maritalStatus"

    const-string v24, "menopauseArrived"

    const-string v25, "hysterectomyDone"

    move-object/from16 v26, v11

    filled-new-array/range {v18 .. v25}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_b

    .line 1044
    sget-object v11, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    move-object/from16 v18, v4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_d

    .line 1048
    :cond_6
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 1049
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v11, "familyId"

    move-object/from16 v19, v7

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v11, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v4, :cond_a

    .line 1050
    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_c

    .line 1054
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v7, -0x5

    const/4 v11, 0x1

    .line 1055
    invoke-virtual {v4, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 1056
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 1057
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    move-object/from16 v20, v5

    const/16 v5, -0x3c

    .line 1058
    invoke-virtual {v7, v11, v5}, Ljava/util/Calendar;->add(II)V

    .line 1059
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1060
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v7, -0xa

    .line 1061
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 1062
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1063
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v7, -0x13

    .line 1064
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 1065
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1066
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v7, -0xf

    .line 1067
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 1068
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1069
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v7, -0x12

    .line 1070
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 1071
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 1072
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    move-object/from16 v21, v8

    const/16 v8, -0x32

    .line 1073
    invoke-virtual {v7, v11, v8}, Ljava/util/Calendar;->add(II)V

    .line 1074
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 1075
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    goto :goto_5

    :sswitch_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    goto :goto_5

    :sswitch_2
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    goto :goto_5

    :sswitch_3
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x6

    goto :goto_5

    :sswitch_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    :sswitch_6
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v2, -0x1

    :goto_5
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 1110
    :pswitch_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1111
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v10, v0

    goto/16 :goto_7

    .line 1105
    :pswitch_1
    invoke-direct {v1, v0, v5, v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1106
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v8, v0

    move-object/from16 v9, v16

    move-object/from16 v5, v20

    goto/16 :goto_a

    .line 1100
    :pswitch_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1101
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v5, v0

    move-object/from16 v9, v16

    goto/16 :goto_9

    .line 1097
    :pswitch_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v11, v0

    move-object/from16 v9, v16

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    goto :goto_b

    .line 1092
    :pswitch_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1093
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v9, v0

    goto :goto_8

    .line 1087
    :pswitch_5
    invoke-direct {v1, v0, v5, v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->isEligibleCoupleMember(Lcom/argusoft/sewa/android/app/model/MemberBean;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1088
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v6, v0

    goto :goto_7

    .line 1077
    :pswitch_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1078
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p3

    move-object v3, v0

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v3, p2

    move-object/from16 v6, p3

    :goto_7
    move-object/from16 v9, v16

    :goto_8
    move-object/from16 v5, v20

    :goto_9
    move-object/from16 v8, v21

    :goto_a
    move-object/from16 v11, v26

    :goto_b
    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    goto :goto_10

    :cond_a
    :goto_c
    move-object/from16 v20, v5

    goto :goto_e

    :cond_b
    move-object/from16 v18, v4

    :goto_d
    move-object/from16 v20, v5

    move-object/from16 v19, v7

    :goto_e
    move-object/from16 v21, v8

    :goto_f
    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v11, v26

    :goto_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v26, v11

    .line 1118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p2

    .line 1119
    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v20

    .line 1120
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p3

    .line 1122
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v21

    .line 1123
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v16

    .line 1125
    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v26

    .line 1128
    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1132
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x152213d7 -> :sswitch_6
        -0x938b5b4 -> :sswitch_5
        -0x9387d65 -> :sswitch_4
        0x2cdc84 -> :sswitch_3
        0x56eac22 -> :sswitch_2
        0x56ee471 -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveCountForOtherServicesNotificationType(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1414
    const-string v2, "IRON_SUCROSE_ALERT"

    const-string v3, "TT2_ALERT"

    const-string v4, "DPT_BOOSTER_2_ALERT"

    if-nez p2, :cond_0

    .line 1415
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    .line 1418
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "actualId"

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1419
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    .line 1420
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v8, "parent"

    invoke-virtual {v6, v8, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v6

    .line 1421
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 1422
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1426
    :cond_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 1427
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1428
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1429
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1432
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1433
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1434
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1438
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "scheduledDate"

    const-string v9, "memberId"

    const-string v10, "notificationCode"

    const-string v11, "state"

    if-eqz v5, :cond_4

    .line 1445
    :try_start_2
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 1446
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v6, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v5, v11, v6}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 1447
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5, v10, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1448
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 1450
    :cond_4
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 1451
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v9, "locationId"

    invoke-virtual {v5, v9, v6}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 1452
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v6, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->pendingStates:Ljava/util/List;

    invoke-virtual {v5, v11, v6}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 1453
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5, v10, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    :goto_4
    const/4 v5, 0x0

    .line 1459
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1460
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1461
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 1464
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v12

    if-nez v12, :cond_5

    goto/16 :goto_9

    .line 1469
    :cond_5
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v13, "dob"

    const-string v14, "familyId"

    if-eqz v12, :cond_6

    .line 1470
    :try_start_3
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    filled-new-array {v14, v11, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    .line 1471
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/MemberBean;

    goto :goto_6

    .line 1473
    :cond_6
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    const-string v15, "isPregnantFlag"

    filled-new-array {v15, v14, v11, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    .line 1474
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getMemberId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/MemberBean;

    :goto_6
    if-eqz v12, :cond_10

    .line 1477
    sget-object v13, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getState()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto/16 :goto_9

    .line 1481
    :cond_7
    iget-object v13, v1, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v13}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    .line 1482
    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v13, :cond_10

    .line 1483
    sget-object v14, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getState()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto/16 :goto_9

    .line 1487
    :cond_8
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/NotificationBean;->getNotificationCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x48dd5391

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v13, v14, :cond_b

    const v14, -0x152213d7

    if-eq v13, v14, :cond_a

    const v14, 0x230803f6

    if-eq v13, v14, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x2

    goto :goto_8

    :cond_b
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v10, -0x1

    :goto_8
    if-eqz v10, :cond_f

    if-eq v10, v5, :cond_e

    if-eq v10, v15, :cond_d

    goto :goto_9

    .line 1497
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v9, v5

    goto :goto_9

    .line 1494
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v8, v5

    goto :goto_9

    .line 1489
    :cond_f
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1490
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v5

    :cond_10
    :goto_9
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1503
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1504
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1510
    const-string v2, "NotificationServiceImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public retrieveMembersForDPTAlertForAshaAsPerCampaign(Ljava/util/List;Ljava/util/Date;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_1

    .line 1212
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    goto :goto_1

    .line 1213
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    const-string v7, "familyId"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v8, "areaId"

    .line 1221
    invoke-virtual {v6, v8, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 1222
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    const-string v8, "state"

    invoke-virtual {v3, v8, v6}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 1224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 1225
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1227
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1230
    invoke-static/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, -0x5

    const/4 v9, 0x1

    .line 1231
    invoke-virtual {v3, v9, v6}, Ljava/util/Calendar;->add(II)V

    const/4 v6, -0x3

    const/4 v10, 0x2

    .line 1232
    invoke-virtual {v3, v10, v6}, Ljava/util/Calendar;->add(II)V

    .line 1233
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    const/16 v11, -0x15

    .line 1234
    invoke-virtual {v3, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 1235
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1237
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v11}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    const-string v12, "dob"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    .line 1238
    const-string v14, "%DPT_BOOSTER_2#%"

    const-string v15, "immunisationGiven"

    const-string v10, "%"

    if-eqz v1, :cond_3

    .line 1240
    invoke-virtual {v11, v7, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v9, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1241
    invoke-virtual {v11, v8, v9}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/j256/ormlite/stmt/Where;

    .line 1242
    invoke-virtual {v11, v12, v3}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v9, v13

    .line 1243
    invoke-virtual {v11, v12, v6}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v9, v6

    .line 1244
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->not()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v15, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v9, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1245
    const-string v6, "uniqueHealthId"

    invoke-virtual {v11, v6, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1246
    const-string v12, "firstName"

    invoke-virtual {v11, v12, v6}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/j256/ormlite/stmt/Where;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1247
    invoke-virtual {v11, v7, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v12, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1248
    const-string v7, "mobileNumber"

    invoke-virtual {v11, v7, v1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v12, v7

    .line 1245
    invoke-virtual {v11, v3, v6, v12}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v9, v3

    .line 1239
    invoke-virtual {v11, v5, v8, v9}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    .line 1253
    invoke-virtual {v11, v7, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 1254
    invoke-virtual {v11, v8, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    new-array v1, v1, [Lcom/j256/ormlite/stmt/Where;

    .line 1255
    invoke-virtual {v11, v12, v3}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v1, v13

    .line 1256
    invoke-virtual {v11, v12, v6}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v1, v6

    .line 1257
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->not()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v15, v14}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 1252
    invoke-virtual {v11, v5, v7, v1}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    :goto_3
    if-eqz v2, :cond_4

    .line 1260
    const-string v1, "isQrCodeScan"

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "true"

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1261
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1262
    const-string v5, "healthId"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v5, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1263
    const-string v6, "healthIdNumber"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v6, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-array v5, v13, [Lcom/j256/ormlite/stmt/Where;

    .line 1261
    invoke-virtual {v1, v3, v2, v5}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 1266
    :cond_4
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 1268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1269
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v4
.end method

.method public retrieveNotificationsForUser(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    move-object v2, p3

    if-nez p2, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v3, v9, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "actualID"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "parent"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 84
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "FHW_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x19

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "APPETITE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x18

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "AWW_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x17

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "SAM_SCREENING"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x16

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "ASHA_LMPFU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "CMAM_FOLLOWUP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "FHW_SAM_AFTER_CMAM"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "AMRUTPAN_UC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "IRON_SUCROSE_ALERT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "ASHA_PNC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v1, 0x10

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "ASHA_ANC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "LMPFU"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "ASHA_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "SHG"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_e
    const-string v0, "GMA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "FHW_WPD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "FHW_PNC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "FHW_ANC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "DPT_BOOSTER_2_ALERT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2

    :cond_16
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_13
    const-string v0, "AMRUTPAN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2

    :cond_17
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_14
    const-string v0, "FHW_SAM_SCREENING_REF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2

    :cond_18
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_15
    const-string v0, "TRAVELLERS_SCREENING"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2

    :cond_19
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_16
    const-string v0, "TT2_ALERT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2

    :cond_1a
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_17
    const-string v0, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_2

    :cond_1b
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_18
    const-string v0, "DISCHARGE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_2

    :cond_1c
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_19
    const-string v0, "ASHA_SAM_SCREENING"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_2

    :cond_1d
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getDefaultNotifications(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :pswitch_0
    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 136
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getSelfHelpGroupMemberNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :pswitch_1
    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 129
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getGeriartricsMemberNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :pswitch_2
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 139
    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getDptBooster2AlertNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :pswitch_3
    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 133
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getCovidTravellersNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :pswitch_4
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 103
    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getPregnantWomenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :pswitch_5
    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getChildrenAdolescentFeeding(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :pswitch_6
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 110
    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getEligibleCoupleNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :pswitch_7
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 123
    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getChildrenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v1, v10, v0}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertNotificationModelToNotificationDataBean(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76aa913e -> :sswitch_19
        -0x618d6b5e -> :sswitch_18
        -0x5c5599c4 -> :sswitch_17
        -0x48dd5391 -> :sswitch_16
        -0x39bf7f15 -> :sswitch_15
        -0x2f4bc9e0 -> :sswitch_14
        -0x25d13468 -> :sswitch_13
        -0x152213d7 -> :sswitch_12
        -0x938b5b4 -> :sswitch_11
        -0x9387d65 -> :sswitch_10
        -0x93862df -> :sswitch_f
        0x1141b -> :sswitch_e
        0x14092 -> :sswitch_d
        0x2cdc84 -> :sswitch_c
        0x4532ffe -> :sswitch_b
        0x56eac22 -> :sswitch_a
        0x56ee471 -> :sswitch_9
        0x230803f6 -> :sswitch_8
        0x2b9fdc95 -> :sswitch_7
        0x46b7b0e3 -> :sswitch_6
        0x4aea1e15 -> :sswitch_5
        0x650ef36a -> :sswitch_4
        0x662dd756 -> :sswitch_3
        0x73ddf68e -> :sswitch_2
        0x74963c0a -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public retrieveNotificationsForUserAsPerCampaignDate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    move-object v2, p3

    if-nez p2, :cond_0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 159
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v3, v9, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "actualID"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "parent"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 164
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "FHW_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_1
    const-string v0, "AWW_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_2
    const-string v0, "ASHA_PNC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_3
    const-string v0, "ASHA_ANC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_4
    const-string v0, "ASHA_CS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_5
    const-string v0, "FHW_PNC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_6
    const-string v0, "FHW_ANC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_7
    const-string v0, "DPT_BOOSTER_2_ALERT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getDefaultNotifications(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 189
    :pswitch_0
    invoke-static/range {p9 .. p9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getChildrenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 184
    :pswitch_1
    invoke-static/range {p9 .. p9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getEligibleCoupleNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 180
    :pswitch_2
    invoke-static/range {p9 .. p9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getPregnantWomenNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 192
    :pswitch_3
    invoke-static/range {p9 .. p9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->endOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getDptBooster2AlertNotifications(Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, v9, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v1, v10, v0}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertNotificationModelToNotificationDataBean(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x152213d7 -> :sswitch_7
        -0x938b5b4 -> :sswitch_6
        -0x9387d65 -> :sswitch_5
        0x2cdc84 -> :sswitch_4
        0x56eac22 -> :sswitch_3
        0x56ee471 -> :sswitch_2
        0x73ddf68e -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
