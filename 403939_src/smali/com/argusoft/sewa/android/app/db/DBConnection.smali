.class public Lcom/argusoft/sewa/android/app/db/DBConnection;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DBConnection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DATABASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sewa_final.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x116

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DBConnection super constructor called"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkIfColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/model/BaseEntity;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LIMIT 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 558
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :try_start_1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 561
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 558
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private checkIfTableExistsInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/model/BaseEntity;",
            ">;)Z"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 549
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_2

    if-eqz p1, :cond_0

    .line 552
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 548
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    if-eqz p1, :cond_3

    .line 552
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getDatabaseTableDrops(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/model/BaseEntity;",
            ">;>;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropable Table List"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa9

    if-ne p2, v1, :cond_0

    .line 495
    const-class v1, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0xb8

    if-ge p2, v1, :cond_1

    .line 498
    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v1, 0xda

    if-ge p2, v1, :cond_2

    .line 501
    const-class v1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_2
    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfTableExistsInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const-string v2, "modifiedOn"

    .line 505
    invoke-direct {p0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v1, 0xd8

    if-ge p2, v1, :cond_4

    .line 509
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v1, 0xdd

    if-ge p2, v1, :cond_5

    .line 515
    const-class v1, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0xde

    if-ge p2, v1, :cond_6

    .line 518
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v1, 0xe0

    if-ge p2, v1, :cond_7

    .line 521
    const-class v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v1, 0xe1

    if-ge p2, v1, :cond_8

    .line 524
    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v1, 0xe8

    if-ge p2, v1, :cond_9

    .line 527
    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v1, 0xe9

    if-ge p2, v1, :cond_a

    .line 531
    const-class v1, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v1, 0x114

    if-ge p2, v1, :cond_b

    .line 536
    const-class p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfTableExistsInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-class p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const-string v1, "englishName"

    .line 537
    invoke-direct {p0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfColumnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    const-class p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 538
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 539
    const-class p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method private getDatabaseTableList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/model/BaseEntity;",
            ">;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Table List"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3d

    .line 105
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v2, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    const/16 v3, 0x16

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;

    const/16 v3, 0x17

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    const/16 v3, 0x18

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/DailyNutritionLogBean;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/FileDownloadBean;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsEventBean;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-class v2, Lcom/argusoft/sewa/android/app/model/MenuBean;

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    const-class v2, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationTypeBean;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/SupportAttachmentBean;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-class v1, Lcom/argusoft/sewa/android/app/model/SupportActionBean;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDatabaseTableUpdatable(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/argusoft/sewa/android/app/model/BaseEntity;",
            ">;>;"
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Updatable Table List"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xb8

    if-ge p2, v0, :cond_0

    .line 318
    const-class v0, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-class v0, Lcom/argusoft/sewa/android/app/model/UncaughtExceptionBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-class v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-class v0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const-class v0, Lcom/argusoft/sewa/android/app/model/LabelBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const-class v0, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-class v0, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-class v0, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const-class v0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-class v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-class v0, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0xbf

    if-ge p2, v0, :cond_1

    .line 333
    const-class v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v0, 0xce

    if-ge p2, v0, :cond_2

    .line 336
    const-class v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v0, 0xdb

    if-ge p2, v0, :cond_3

    .line 339
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v0, 0xdc

    if-ge p2, v0, :cond_4

    .line 342
    const-class v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v0, 0xdf

    if-ge p2, v0, :cond_5

    .line 345
    const-class v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const-class v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v0, 0xe2

    if-ge p2, v0, :cond_6

    .line 349
    const-class v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v0, 0xee

    if-ge p2, v0, :cond_7

    .line 352
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v0, 0xef

    if-ge p2, v0, :cond_8

    .line 355
    const-class v0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v0, 0xf2

    if-ge p2, v0, :cond_9

    .line 358
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v0, 0xf3

    if-ge p2, v0, :cond_a

    .line 361
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v0, 0xf4

    if-ge p2, v0, :cond_b

    .line 364
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v0, 0xf5

    if-ge p2, v0, :cond_c

    .line 367
    const-class v0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    const/16 v0, 0xf6

    if-ge p2, v0, :cond_d

    .line 370
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v0, 0xf7

    if-ge p2, v0, :cond_e

    .line 373
    const-class v1, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-ge p2, v0, :cond_f

    .line 376
    const-class v1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-class v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-ge p2, v0, :cond_10

    .line 380
    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-ge p2, v0, :cond_11

    .line 383
    const-class v1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-ge p2, v0, :cond_12

    .line 386
    const-class v0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const-class v0, Lcom/argusoft/sewa/android/app/model/LocationTypeBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const/16 v0, 0xf8

    if-ge p2, v0, :cond_13

    .line 390
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    const/16 v0, 0xf9

    if-ge p2, v0, :cond_14

    .line 393
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    const/16 v0, 0xfa

    if-ge p2, v0, :cond_15

    .line 396
    const-class v0, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const/16 v0, 0xfb

    if-ge p2, v0, :cond_16

    .line 399
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    const/16 v0, 0xfd

    if-ge p2, v0, :cond_17

    .line 403
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    const/16 v0, 0xfe

    if-ge p2, v0, :cond_18

    .line 406
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const/16 v0, 0x101

    if-ge p2, v0, :cond_19

    .line 410
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const/16 v0, 0x102

    if-ge p2, v0, :cond_1a

    .line 413
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/16 v0, 0x103

    if-ge p2, v0, :cond_1b

    .line 417
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/16 v0, 0x104

    if-ge p2, v0, :cond_1c

    .line 420
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/16 v0, 0x105

    if-ge p2, v0, :cond_1d

    .line 423
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const/16 v0, 0x106

    if-ge p2, v0, :cond_1e

    .line 426
    const-class v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/16 v0, 0x109

    if-ge p2, v0, :cond_1f

    .line 429
    const-class v0, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const/16 v0, 0x110

    if-ge p2, v0, :cond_20

    .line 433
    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    const/16 v0, 0x10c

    if-ge p2, v0, :cond_21

    .line 436
    const-class v0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    const/16 v0, 0x111

    if-ge p2, v0, :cond_22

    .line 439
    const-class v0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    const/16 v0, 0x113

    if-ge p2, v0, :cond_23

    .line 443
    const-class v0, Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    const/16 v0, 0x115

    if-ge p2, v0, :cond_24

    .line 446
    const-class p2, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-object p1
.end method

.method private getPreviousData(Ljava/lang/Class;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 570
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 572
    :cond_0
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 573
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_1

    .line 575
    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 577
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previous Data is :: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 569
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 586
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method private removeColumns(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 6

    .line 480
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 481
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing column: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeDeletedMemberBeanColumns(Landroid/content/ContentValues;I)V
    .locals 13

    const/16 v0, 0x10b

    if-ge p2, v0, :cond_0

    .line 456
    const-string v11, "npcbStatus"

    const-string v12, "npcbScreeningDate"

    const-string v1, "hasAshaReferredCHO"

    const-string v2, "hasCHOReferredOA"

    const-string v3, "hasOASentToCHO"

    const-string v4, "hasCHOFollowUpSentToOA"

    const-string v5, "hasOAFollowUpSentToCHO"

    const-string v6, "isSentByAshaForNPCB"

    const-string v7, "isReferredByOA"

    const-string v8, "isNpcbFollowUpDone"

    const-string v9, "isExaminedByAsha"

    const-string v10, "isExaminedByCHO"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object p2

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->removeColumns(Landroid/content/ContentValues;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeImageValuesFromStoreAnswerBeans(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18

    move-object/from16 v1, p1

    .line 228
    const-string v2, "~"

    const-string v3, "answerEntity"

    const-string v4, "answer"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const-string v0, "SELECT _ID FROM StoreAnswerBean where answerEntity in (\'FHW_ANC\',\'FHW_CS\',\'ADOLESCENT_HEALTH_SCREENING\')"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 231
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_16

    :cond_0
    const/4 v8, 0x0

    .line 234
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _ID,answer,answerEntity FROM StoreAnswerBean where _ID = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v9, :cond_10

    .line 237
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    .line 240
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ge v11, v0, :cond_2

    .line 242
    :try_start_3
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    new-instance v0, Ljava/lang/String;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v0, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 246
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 254
    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 255
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 258
    invoke-static {v12, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 259
    array-length v14, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v15, 0x0

    :goto_3
    const-string v6, "!"

    if-ge v15, v14, :cond_3

    :try_start_5
    aget-object v8, v12, v15

    .line 260
    invoke-static {v8, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 261
    aget-object v17, v6, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v16, 0x1

    .line 262
    aget-object v6, v6, v16

    .line 263
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_3

    .line 265
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v12, -0x5c5599c4

    const/4 v14, 0x2

    if-eq v8, v12, :cond_6

    const v12, -0x938b5b4

    if-eq v8, v12, :cond_5

    const v12, 0x7b92d11a

    if-eq v8, v12, :cond_4

    goto :goto_4

    :cond_4
    const-string v8, "FHW_CS"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const-string v8, "FHW_ANC"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    const-string v8, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, -0x1

    :goto_5
    const/16 v12, 0x3f5

    if-eqz v8, :cond_a

    const/4 v13, 0x1

    if-eq v8, v13, :cond_9

    if-eq v8, v14, :cond_8

    goto :goto_6

    :cond_8
    const/16 v8, 0x458

    .line 274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 271
    :cond_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const/16 v8, 0x3f3

    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 284
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UPDATE StoreAnswerBean set answer = \""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\" where _ID = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_ID"

    .line 285
    invoke-virtual {v10, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 286
    invoke-virtual {v1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_d

    .line 287
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v6, :cond_c

    .line 286
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    throw v8

    :cond_d
    :goto_9
    if-eqz v6, :cond_e

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_e
    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v0

    if-eqz v9, :cond_f

    .line 236
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_a
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    throw v6

    :cond_10
    if-eqz v9, :cond_11

    .line 295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_11
    const/4 v6, 0x0

    goto :goto_d

    .line 298
    :catch_1
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM StoreAnswerBean where _ID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 299
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 300
    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v8, :cond_13

    .line 301
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_12

    .line 300
    :try_start_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_b
    throw v1

    :cond_13
    :goto_c
    if-eqz v8, :cond_14

    .line 304
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_14
    :goto_d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-nez v0, :cond_0

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_15

    .line 230
    :try_start_f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_e
    throw v1

    :cond_16
    :goto_f
    if-eqz v7, :cond_17

    .line 308
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDatabaseTableList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 175
    :try_start_0
    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    new-instance p2, Lcom/argusoft/sewa/android/app/exception/DataException;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/argusoft/sewa/android/app/exception/DataException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 185
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->welcomeContext:Landroid/content/Context;

    check-cast v0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;->showDbDowngradeAlert()V

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "OnUpgrade called"

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->removeImageValuesFromStoreAnswerBeans(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    sget-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->welcomeContext:Landroid/content/Context;

    check-cast p4, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;->showDBUpgradeProcessDialog()V

    const/4 p4, 0x0

    .line 196
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDatabaseTableDrops(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfTableExistsInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-static {p2, v1, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getDatabaseTableUpdatable(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/db/DBConnection;->checkIfTableExistsInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-direct {p0, v0, v1, p1}, Lcom/argusoft/sewa/android/app/db/DBConnection;->getPreviousData(Ljava/lang/Class;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 206
    invoke-static {p2, v0, v2}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 207
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p3

    .line 220
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    return-void

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/db/DBConnection;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 224
    throw p3
.end method
