.class public Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;
.super Ljava/lang/Object;
.source "MenuClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final selectedMenu:Ljava/lang/String;

.field private final userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->getUserRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->userRole:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->selectedMenu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserRole()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->selectedMenu:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "FHW_NCD_REGISTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ASHA_NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "FHW_NCD_SCREENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ASHA_CBAC_ENTRY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ASHA_NPCB_SCREENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "NPCB_SCREENING_TITLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "AWW_MY_PEOPLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "FHW_HIGH_RISK_WOMEN_AND_CHILD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "FHW_MOBILE_VERIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "INCENTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "LIBRARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "TAKE_HOME_RATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "ASHA_MY_PEOPLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "WORK_LOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "FHW_WORK_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "OPD_FACILITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "ASHA_HIGH_RISK_BENEFICIARIES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "AWW_FHS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "ABHA_NUMBER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ASHA_FHS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "HEAD_TO_TOE_SCREENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "ASHA_NCD_REGISTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "FHSR_PHONE_NUMBER_VERIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "FHW_NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "FHW_CFHC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "ASHA_WORK_REGISTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "ANNOUNCEMENTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "AWW_NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "FHW_DATA_QUALITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "FHW_VERY_HIGH_RISK_WOMEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "FHW_ASSIGN_FAMILY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1f
    const-string v0, "LMS_PROGRESS_REPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_20
    const-string v0, "LEARNING_MANAGEMENT_SYSTEM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_21
    const-string v0, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_22
    const-string v0, "FHW_WORK_REGISTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_0

    :cond_22
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_23
    const-string v0, "ASHA_CHO_INCENTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_24
    const-string v0, "FHW_MY_PEOPLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_0

    :cond_24
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_25
    const-string v0, "DAILY_NUTRITION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_0

    :cond_25
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 105
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 143
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NotificationAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 101
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 151
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NCDScreeningAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 159
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreening_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 109
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningFhw_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 177
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAwwActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 93
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 85
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MobileNumberValidationActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 167
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 121
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LibraryActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 189
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 139
    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 236
    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 117
    :pswitch_e
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 211
    :pswitch_f
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 147
    :pswitch_10
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 173
    :pswitch_11
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 231
    :pswitch_12
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string v0, "role"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->userRole:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 135
    :pswitch_13
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 217
    :pswitch_14
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HeadToToeScreeningActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 155
    :pswitch_15
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NcdRegisterAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 205
    :pswitch_16
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/PhoneNumberVerificationActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 89
    :pswitch_17
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 69
    :pswitch_18
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FHSActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 163
    :pswitch_19
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 125
    :pswitch_1a
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AnnouncementActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 181
    :pswitch_1b
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NotificationAwwActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 73
    :pswitch_1c
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 97
    :pswitch_1d
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 77
    :pswitch_1e
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AssignFamilyActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 227
    :pswitch_1f
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 223
    :pswitch_20
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 129
    :pswitch_21
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 113
    :pswitch_22
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 199
    :pswitch_23
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 81
    :pswitch_24
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 185
    :pswitch_25
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/MenuClickListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b47f74e -> :sswitch_25
        -0x7978db68 -> :sswitch_24
        -0x6c3160be -> :sswitch_23
        -0x69a202d9 -> :sswitch_22
        -0x5c5599c4 -> :sswitch_21
        -0x5a28c136 -> :sswitch_20
        -0x50786fc7 -> :sswitch_1f
        -0x4681ba36 -> :sswitch_1e
        -0x448bb9b4 -> :sswitch_1d
        -0x4281f28c -> :sswitch_1c
        -0x3dcd2e77 -> :sswitch_1b
        -0x24908c14 -> :sswitch_1a
        -0x20d27483 -> :sswitch_19
        -0x1ddd3538 -> :sswitch_18
        -0x19cf12eb -> :sswitch_17
        -0x890dd3e -> :sswitch_16
        -0x289ad39 -> :sswitch_15
        0xd2d4bc -> :sswitch_14
        0x56ebe3d -> :sswitch_13
        0x7c7f64e -> :sswitch_12
        0x7e0e573 -> :sswitch_11
        0xb3ad2dc -> :sswitch_10
        0x1cb580df -> :sswitch_f
        0x1eea7376 -> :sswitch_e
        0x30cd24f6 -> :sswitch_d
        0x30d74dee -> :sswitch_c
        0x3125456b -> :sswitch_b
        0x34b3b09b -> :sswitch_a
        0x4091ad4b -> :sswitch_9
        0x420d1b2e -> :sswitch_8
        0x4bea1676 -> :sswitch_7
        0x5160b4a4 -> :sswitch_6
        0x548e71f1 -> :sswitch_5
        0x579324cc -> :sswitch_4
        0x5cca1368 -> :sswitch_3
        0x6b4fc1dc -> :sswitch_2
        0x6cab3bff -> :sswitch_1
        0x76fc03dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
