.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityCHO.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private array:[I

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

.field dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

.field private final images:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private markPresenceIconIndex:I

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
    .locals 17

    move-object/from16 v0, p0

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 73
    new-instance v1, Ljava/util/LinkedList;

    const-string v13, "Filariasis Campaign"

    const-string v14, "Leprosy Routine Survey"

    const-string v2, "Mark Presence @ HWC"

    const-string v3, "High Risk Women & Child"

    const-string v4, "Learning Management System"

    const-string v5, "LMS Progress Report"

    const-string v6, "Library"

    const-string v7, "Announcement"

    const-string v8, "Work Register"

    const-string v9, "Work Status"

    const-string v10, "Abha Number"

    const-string v11, "NPCB Screening"

    const-string v12, "Lab Test Screening"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->items:Ljava/util/LinkedList;

    .line 92
    new-instance v1, Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms:I

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms_report:I

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->ic_medical_card:I

    .line 104
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    .line 107
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    .line 108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/argusoft/sewa/android/app/R$drawable;->vhnd:I

    .line 109
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xd

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/4 v2, 0x1

    aput-object v3, v15, v2

    const/4 v2, 0x2

    aput-object v4, v15, v2

    const/4 v2, 0x3

    aput-object v5, v15, v2

    const/4 v2, 0x4

    aput-object v6, v15, v2

    const/4 v2, 0x5

    aput-object v7, v15, v2

    const/4 v2, 0x6

    aput-object v8, v15, v2

    const/4 v2, 0x7

    aput-object v9, v15, v2

    const/16 v2, 0x8

    aput-object v10, v15, v2

    const/16 v2, 0x9

    aput-object v11, v15, v2

    const/16 v2, 0xa

    aput-object v12, v15, v2

    const/16 v2, 0xb

    aput-object v13, v15, v2

    const/16 v2, 0xc

    aput-object v14, v15, v2

    .line 93
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->images:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->changeActivity(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->markPresenceIconIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setTimer()V

    return-void
.end method

.method private changeActivity(I)V
    .locals 2

    .line 186
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    const-string v0, "CHO"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 284
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 278
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 273
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 268
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 260
    :pswitch_4
    const-string p1, "CHO_NPCB"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 261
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 262
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string v1, "role"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 212
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialogShown:Z

    if-nez p1, :cond_0

    .line 213
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :pswitch_d
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkNetworkAvailability()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method private checkLastActivity()V
    .locals 4

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->removePreviousReport()V

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->dailyPresenceReportBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/DailyPresenceReport;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->array:[I

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->markPresenceIconIndex:I

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_present:I

    aput v2, v0, v1

    .line 300
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setTimer()V

    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->array:[I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->markPresenceIconIndex:I

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    aput v3, v0, v2

    .line 308
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private init()V
    .locals 5

    .line 125
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setContentView(I)V

    .line 126
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 127
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setActionBarDesign()V

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setNavigationView()V

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->isAdolescentFeatureReleased()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->items:Ljava/util/LinkedList;

    const-string v1, "Adolescent Health Screening"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->images:Ljava/util/LinkedList;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_adolescent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->images:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->array:[I

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->images:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 137
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->array:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->items:Ljava/util/LinkedList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->array:[I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private isAdolescentFeatureReleased()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    const-string v3, "featuresList"

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 148
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADOLESCENT_FEATURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setTimer()V
    .locals 7

    .line 375
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    .line 377
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->choAttendanceTimer:Ljava/util/Timer;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkGps()V
    .locals 2

    .line 330
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->setVisit()V

    :goto_0
    return-void
.end method

.method public checkNetworkAvailability()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    .line 318
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 319
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkGps()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkNetworkAvailability$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityCHO(Landroid/view/View;)V
    .locals 0

    .line 317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$checkNetworkAvailability$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityCHO(Landroid/content/DialogInterface;)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 368
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkGps()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 173
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    .line 179
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 180
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 118
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->context:Landroid/content/Context;

    .line 119
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->items:Ljava/util/LinkedList;

    const-string v0, "Mark Presence @ HWC"

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->markPresenceIconIndex:I

    .line 120
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->init()V

    .line 121
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->checkLastActivity()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 160
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 162
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;I)V

    .line 168
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$1;->start()V

    return-void
.end method

.method public setVisit()V
    .locals 2

    .line 340
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->createReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 342
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 343
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->dailyPresenceReportService:Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/DailyPresenceReportServiceImpl;->closeReport()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityCHO;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
