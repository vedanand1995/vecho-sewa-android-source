.class public Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;
.super Ljava/lang/Object;
.source "DailyNutritionLogServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;


# static fields
.field private static final TAG:Ljava/lang/String; = "DNLService"


# instance fields
.field dailyNutritionLogBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOrUpdateDailyNutritionLogByLocationId(Ljava/lang/Integer;)V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;->dailyNutritionLogBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "locationId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->setLocationId(Ljava/lang/Integer;)V

    .line 43
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;->setSeviceDate(Ljava/lang/Long;)V

    .line 44
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;->dailyNutritionLogBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    const-string v0, "DNLService"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public retrieveDailyNutritionLogByLocationId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyNutritionLogServiceImpl;->dailyNutritionLogBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "locationId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 30
    const-string v0, "DNLService"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
