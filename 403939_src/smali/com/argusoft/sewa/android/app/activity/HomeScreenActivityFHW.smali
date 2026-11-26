.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityFHW.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
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
    .locals 23

    move-object/from16 v0, p0

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 55
    new-instance v1, Ljava/util/LinkedList;

    const-string v20, "IFA Supplementation"

    const-string v21, "Surveillance"

    const-string v2, "CFHC"

    const-string v3, "Data Quality"

    const-string v4, "Assign Family"

    const-string v5, "My People"

    const-string v6, "Your Schedule"

    const-string v7, "High Risk Women & Child"

    const-string v8, "NPCB Screening"

    const-string v9, "Learning Management System"

    const-string v10, "LMS Progress Report"

    const-string v11, "Library"

    const-string v12, "Announcement"

    const-string v13, "Work Register"

    const-string v14, "Work Status"

    const-string v15, "Abha Number"

    const-string v16, "Asha Incentive"

    const-string v17, "Very High Risk Women"

    const-string v18, "Namoshree"

    const-string v19, "Campaign Immunisation"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->items:Ljava/util/LinkedList;

    .line 83
    new-instance v1, Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_reverification:I

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_assign_family:I

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->menu_my_people:I

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms:I

    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms_report:I

    .line 95
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    .line 96
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    .line 97
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    .line 98
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    .line 99
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v15, Lcom/argusoft/sewa/android/app/R$drawable;->ic_medical_card:I

    .line 100
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget v16, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    .line 101
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget v17, Lcom/argusoft/sewa/android/app/R$drawable;->menu_preg_woman:I

    .line 102
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget v18, Lcom/argusoft/sewa/android/app/R$drawable;->menu_namoshree:I

    .line 103
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    sget v19, Lcom/argusoft/sewa/android/app/R$drawable;->vhnd:I

    .line 104
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sget v20, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    .line 105
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    sget v21, Lcom/argusoft/sewa/android/app/R$drawable;->menu_vbd:I

    .line 107
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v22, 0x0

    aput-object v2, v0, v22

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object v5, v0, v2

    const/4 v2, 0x4

    aput-object v6, v0, v2

    const/4 v2, 0x5

    aput-object v7, v0, v2

    const/4 v2, 0x6

    aput-object v8, v0, v2

    const/4 v2, 0x7

    aput-object v9, v0, v2

    const/16 v2, 0x8

    aput-object v10, v0, v2

    const/16 v2, 0x9

    aput-object v11, v0, v2

    const/16 v2, 0xa

    aput-object v12, v0, v2

    const/16 v2, 0xb

    aput-object v13, v0, v2

    const/16 v2, 0xc

    aput-object v14, v0, v2

    const/16 v2, 0xd

    aput-object v15, v0, v2

    const/16 v2, 0xe

    aput-object v16, v0, v2

    const/16 v2, 0xf

    aput-object v17, v0, v2

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v19, v0, v2

    const/16 v2, 0x12

    aput-object v20, v0, v2

    const/16 v2, 0x13

    aput-object v21, v0, v2

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;)Ljava/util/LinkedList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->items:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->changeActivity(Ljava/lang/String;)V

    return-void
.end method

.method private changeActivity(Ljava/lang/String;)V
    .locals 5

    .line 186
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Very High Risk Women"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Adolescent Health Screening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Assign Family"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "Your Schedule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Library"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Campaign Immunisation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "Work Register"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "Work Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Surveillance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "Announcement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "Abha Number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "High Risk Women & Child"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "CFHC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "IFA Supplementation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "My People"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "Data Quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "LMS Progress Report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "Namoshree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_12
    const-string v0, "NPCB Screening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_13
    const-string v0, "Learning Management System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_14
    const-string v0, "Asha Incentive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_15
    const-string v0, "Year End Summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x0

    :goto_0
    const-string p1, "FHW"

    const-string v0, "role"

    const-string v2, "MPHW"

    const-string v3, "RCH"

    const-string v4, "FHS"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 309
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 330
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 207
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 208
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 209
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 232
    :pswitch_3
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 233
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 234
    :cond_16
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 235
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 280
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 318
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 290
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 295
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 334
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/VBDSActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 285
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 300
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 241
    :pswitch_b
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 242
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 243
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 191
    :pswitch_c
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 192
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 193
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/FHSActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 322
    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 215
    :pswitch_e
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 216
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 217
    :cond_17
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 218
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 199
    :pswitch_f
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 200
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialogShown:Z

    if-nez p1, :cond_18

    .line 201
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 275
    :pswitch_10
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 314
    :pswitch_11
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 265
    :pswitch_12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 270
    :pswitch_13
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 305
    :pswitch_14
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 339
    :pswitch_15
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->showYearEndSummaryAlert(Landroid/content/Context;Ljava/lang/String;)V

    :cond_18
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a8efa22 -> :sswitch_15
        -0x5be717ca -> :sswitch_14
        -0x48aaabb6 -> :sswitch_13
        -0x36f0f7e9 -> :sswitch_12
        -0x2cdd7778 -> :sswitch_11
        -0x296dfea7 -> :sswitch_10
        -0x24c41177 -> :sswitch_f
        -0x22ede07d -> :sswitch_e
        -0x4c18ba0 -> :sswitch_d
        0x1f849e -> :sswitch_c
        0x7dc59ed -> :sswitch_b
        0x12d2f94f -> :sswitch_a
        0x1323a167 -> :sswitch_9
        0x180deab9 -> :sswitch_8
        0x28221fe1 -> :sswitch_7
        0x305c3ed2 -> :sswitch_6
        0x386da2b9 -> :sswitch_5
        0x6d20bc9b -> :sswitch_4
        0x799cdfe4 -> :sswitch_3
        0x7cfc43b5 -> :sswitch_2
        0x7ea8a15c -> :sswitch_1
        0x7ecc85c1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
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

.method private init()V
    .locals 4

    .line 122
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->setContentView(I)V

    .line 123
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->setActionBarDesign()V

    .line 126
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->setNavigationView()V

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->isShowYearEndSummaryFeatureAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->items:Ljava/util/LinkedList;

    const-string v2, "Year End Summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_trophy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->isAdolescentFeatureReleased()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->items:Ljava/util/LinkedList;

    const-string v2, "Adolescent Health Screening"

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_adolescent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->images:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->items:Ljava/util/LinkedList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private isAdolescentFeatureReleased()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    const-string v3, "featuresList"

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 153
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADOLESCENT_FEATURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 178
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;)V

    .line 179
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 180
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 115
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isFromLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->init()V

    .line 118
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->showYearEndSummaryAlert(Z)V

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

    .line 165
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 166
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 167
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW;I)V

    .line 173
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityFHW$1;->start()V

    return-void
.end method
