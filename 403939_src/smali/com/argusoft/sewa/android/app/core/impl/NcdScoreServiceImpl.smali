.class public Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;
.super Ljava/lang/Object;
.source "NcdScoreServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/NcdScoreService;


# static fields
.field private static final BP_DIABETES_HISTORY_QUE_ID:Ljava/lang/Integer;

.field private static final CONSUME_ALCOHOL_QUE_ID:Ljava/lang/Integer;

.field private static final PHYSICAL_ACTIVITY_QUE_ID:Ljava/lang/Integer;

.field private static final SMOKE_CONSUME_PRODUCT_QUE_ID:Ljava/lang/Integer;

.field private static final WAIST_FEMALE_QUE_ID:Ljava/lang/Integer;

.field private static final WAIST_MALE_QUE_ID:Ljava/lang/Integer;


# instance fields
.field public memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->SMOKE_CONSUME_PRODUCT_QUE_ID:Ljava/lang/Integer;

    const/16 v0, 0xd

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->CONSUME_ALCOHOL_QUE_ID:Ljava/lang/Integer;

    const/16 v0, 0x5de

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->WAIST_MALE_QUE_ID:Ljava/lang/Integer;

    const/16 v0, 0x5dd

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->WAIST_FEMALE_QUE_ID:Ljava/lang/Integer;

    const/16 v0, 0x10

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->PHYSICAL_ACTIVITY_QUE_ID:Ljava/lang/Integer;

    const/16 v0, 0x11

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->BP_DIABETES_HISTORY_QUE_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateCbacScoreForMember()Ljava/lang/Integer;
    .locals 6

    .line 35
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "memberActualId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 46
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v2

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 49
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 50
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v5, v2

    const/16 v2, 0x28

    const/16 v3, 0x32

    if-lt v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    goto :goto_0

    :cond_1
    if-lt v5, v3, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 59
    :goto_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->SMOKE_CONSUME_PRODUCT_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 62
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "IN_PAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_3
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v4, v4, 0x2

    .line 70
    :cond_4
    :goto_1
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v3, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->CONSUME_ALCOHOL_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const-string v3, "1"

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 72
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 79
    :cond_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v2, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->WAIST_MALE_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 82
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v2, "91TO100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 85
    :cond_6
    const-string v2, "GT100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 90
    :cond_7
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v2, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->WAIST_FEMALE_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 92
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v2, "81TO90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 95
    :cond_8
    const-string v2, "GT90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_3
    add-int/lit8 v4, v4, 0x2

    .line 101
    :cond_9
    :goto_4
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v2, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->PHYSICAL_ACTIVITY_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_a

    .line 102
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 103
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "LESS_THAN_150"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v4, v4, 0x1

    .line 109
    :cond_a
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    sget-object v2, Lcom/argusoft/sewa/android/app/core/impl/NcdScoreServiceImpl;->BP_DIABETES_HISTORY_QUE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 111
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v4, v4, 0x2

    .line 117
    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SQL Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
