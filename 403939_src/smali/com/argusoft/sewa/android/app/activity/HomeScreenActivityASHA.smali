.class public Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;
.super Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;
.source "HomeScreenActivityASHA.java"

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


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;-><init>()V

    .line 34
    new-instance v1, Ljava/util/LinkedList;

    const-string v17, "Lab Test Screening"

    const-string v18, "ILA Baseline survey"

    const-string v2, "Family Health Survey"

    const-string v3, "My People ASHA"

    const-string v4, "Your Schedule"

    const-string v5, "High Risk Beneficiaries"

    const-string v6, "Learning Management System"

    const-string v7, "LMS Progress Report"

    const-string v8, "Library"

    const-string v9, "Announcement"

    const-string v10, "Work Register"

    const-string v11, "Work Status"

    const-string v12, "Abha Number"

    const-string v13, "Incentive"

    const-string v14, "NPCB Screening"

    const-string v15, "Due List"

    const-string v16, "Campaign Immunisation"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->items:Ljava/util/LinkedList;

    .line 56
    new-instance v1, Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->menu_my_people:I

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms:I

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms_report:I

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    .line 66
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->ic_medical_card:I

    .line 70
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    .line 71
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    .line 72
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v15, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    .line 73
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget v16, Lcom/argusoft/sewa/android/app/R$drawable;->vhnd:I

    .line 74
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget v17, Lcom/argusoft/sewa/android/app/R$drawable;->test:I

    .line 75
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sget v18, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    .line 76
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v19, 0x0

    aput-object v2, v0, v19

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

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->images:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)Ljava/util/LinkedList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->items:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->changeActivity(Ljava/lang/String;)V

    return-void
.end method

.method private changeActivity(Ljava/lang/String;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Your Schedule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Due List"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Library"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "My People ASHA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Campaign Immunisation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Work Register"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "Work Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "Family Health Survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Announcement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "Abha Number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "Incentive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_b
    const-string v0, "LMS Progress Report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_c
    const-string v0, "High Risk Beneficiaries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_d
    const-string v0, "NPCB Screening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_e
    const-string v0, "Learning Management System"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_f
    const-string v0, "ILA Baseline survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_10
    const-string v0, "Lab Test Screening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_11
    const-string v0, "Year End Summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x0

    :goto_0
    const-string p1, "ASHA_RCH"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 157
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 158
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialogShown:Z

    if-nez p1, :cond_14

    .line 159
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 245
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DueList/DueListActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 207
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 149
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 150
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialogShown:Z

    if-nez p1, :cond_14

    .line 151
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 249
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 217
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 222
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 141
    :pswitch_7
    const-string p1, "ASHA_FHS"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 142
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialogShown:Z

    if-nez p1, :cond_14

    .line 143
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 212
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 227
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v0, "role"

    const-string v1, "ASHA"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 233
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 202
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 165
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 166
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialogShown:Z

    if-nez p1, :cond_14

    .line 167
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 238
    :pswitch_d
    const-string p1, "ASHA_NPCB"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->checkIfFormIsAccessibleToUser(Ljava/lang/String;)V

    .line 239
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialogShown:Z

    if-nez p1, :cond_14

    .line 240
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 197
    :pswitch_e
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    :pswitch_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->getBaselineModuleCourseIds()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    .line 261
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 264
    :cond_12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    const-string v1, "ILA_BASELINE"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForFormType(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 265
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 269
    :cond_13
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/BaseLineActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 254
    :pswitch_10
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 274
    :pswitch_11
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->showYearEndSummaryAlert(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a8efa22 -> :sswitch_11
        -0x54145305 -> :sswitch_10
        -0x48acab2d -> :sswitch_f
        -0x48aaabb6 -> :sswitch_e
        -0x36f0f7e9 -> :sswitch_d
        -0x2ac36e30 -> :sswitch_c
        -0x296dfea7 -> :sswitch_b
        0x11ebbd4b -> :sswitch_a
        0x12d2f94f -> :sswitch_9
        0x1323a167 -> :sswitch_8
        0x14b10e02 -> :sswitch_7
        0x28221fe1 -> :sswitch_6
        0x305c3ed2 -> :sswitch_5
        0x386da2b9 -> :sswitch_4
        0x45d5d728 -> :sswitch_3
        0x6d20bc9b -> :sswitch_2
        0x73498b8a -> :sswitch_1
        0x799cdfe4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 90
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_home_screen:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->setContentView(I)V

    .line 91
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 92
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 93
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->setActionBarDesign()V

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->setNavigationView()V

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->isShowYearEndSummaryFeatureAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->items:Ljava/util/LinkedList;

    const-string v2, "Year End Summary"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->images:Ljava/util/LinkedList;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_trophy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->images:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->images:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->images:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->items:Ljava/util/LinkedList;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->setCardView(Landroid/content/Context;[Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$changeActivity$0$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHA()V
    .locals 1

    .line 262
    const-string v0, "You have already completed your baseline survey"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$changeActivity$1$com-argusoft-sewa-android-app-activity-HomeScreenActivityASHA()V
    .locals 1

    .line 266
    const-string v0, "Your baseline survey is filled and pending sync"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 123
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)V

    .line 129
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to exit from application?"

    .line 130
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x98

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 83
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isFromLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 85
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->init()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->showYearEndSummaryAlert(Z)V

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

    .line 110
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string p2, "Please wait...."

    invoke-direct {p1, p0, p2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 112
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;

    invoke-direct {p1, p0, p3}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;I)V

    .line 118
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$1;->start()V

    return-void
.end method
