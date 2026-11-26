.class public Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;
.super Ljava/lang/Object;
.source "DailyPresenceReportServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/DailyPresenceReportService;


# instance fields
.field dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLocations()V
    .locals 6

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    .line 94
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 95
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getLocations()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;)V

    .line 96
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 99
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setLocations(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public closeReport()Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    .line 117
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 119
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getLocations()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$2;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$2;-><init>(Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;)V

    .line 121
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 120
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 123
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 124
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;

    sget-object v5, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setEndTime(Ljava/util/Date;)V

    .line 128
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setLocations(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 131
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getLocations()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getAttendanceId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->storeAttendanceForTheDay(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 134
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 136
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    const/4 v1, 0x1

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public createReport()Ljava/lang/Boolean;
    .locals 5

    .line 61
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 63
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 64
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;

    sget-object v3, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/argusoft/sewa/android/app/databean/CurrentLocationDto;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->markAttendanceForTheDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 73
    new-instance v4, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;-><init>()V

    .line 74
    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setStartTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setLocations(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->setAttendanceId(Ljava/lang/Integer;)V

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const/4 v0, 0x1

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public removePreviousReport()V
    .locals 4

    .line 45
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 50
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 52
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
