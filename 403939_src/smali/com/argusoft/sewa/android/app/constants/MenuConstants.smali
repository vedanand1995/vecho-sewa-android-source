.class public Lcom/argusoft/sewa/android/app/constants/MenuConstants;
.super Ljava/lang/Object;
.source "MenuConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/constants/MenuConstants$Action;
    }
.end annotation


# static fields
.field public static final ABHA_NUMBER:Ljava/lang/String; = "ABHA_NUMBER"

.field public static final ADOLESCENT_HEALTH_SCREENING:Ljava/lang/String; = "ADOLESCENT_HEALTH_SCREENING"

.field public static final ANNOUNCEMENTS:Ljava/lang/String; = "ANNOUNCEMENTS"

.field public static final ASHA_CBAC_ENTRY:Ljava/lang/String; = "ASHA_CBAC_ENTRY"

.field public static final ASHA_CHO_INCENTIVE:Ljava/lang/String; = "ASHA_CHO_INCENTIVE"

.field public static final ASHA_FHS:Ljava/lang/String; = "ASHA_FHS"

.field public static final ASHA_HIGH_RISK_BENEFICIARIES:Ljava/lang/String; = "ASHA_HIGH_RISK_BENEFICIARIES"

.field public static final ASHA_MY_PEOPLE:Ljava/lang/String; = "ASHA_MY_PEOPLE"

.field public static final ASHA_NCD_REGISTER:Ljava/lang/String; = "ASHA_NCD_REGISTER"

.field public static final ASHA_NOTIFICATION:Ljava/lang/String; = "ASHA_NOTIFICATION"

.field public static final ASHA_NPCB_SCREENING:Ljava/lang/String; = "ASHA_NPCB_SCREENING"

.field public static final ASHA_WORK_REGISTER:Ljava/lang/String; = "ASHA_WORK_REGISTER"

.field public static final AWW_FHS:Ljava/lang/String; = "AWW_FHS"

.field public static final AWW_MY_PEOPLE:Ljava/lang/String; = "AWW_MY_PEOPLE"

.field public static final AWW_NOTIFICATION:Ljava/lang/String; = "AWW_NOTIFICATION"

.field public static final DAILY_NUTRITION:Ljava/lang/String; = "DAILY_NUTRITION"

.field public static final FHSR_PHONE_NUMBER_VERIFICATION:Ljava/lang/String; = "FHSR_PHONE_NUMBER_VERIFICATION"

.field public static final FHW_ASSIGN_FAMILY:Ljava/lang/String; = "FHW_ASSIGN_FAMILY"

.field public static final FHW_CFHC:Ljava/lang/String; = "FHW_CFHC"

.field public static final FHW_DATA_QUALITY:Ljava/lang/String; = "FHW_DATA_QUALITY"

.field public static final FHW_HIGH_RISK_WOMEN_AND_CHILD:Ljava/lang/String; = "FHW_HIGH_RISK_WOMEN_AND_CHILD"

.field public static final FHW_MOBILE_VERIFICATION:Ljava/lang/String; = "FHW_MOBILE_VERIFICATION"

.field public static final FHW_MY_PEOPLE:Ljava/lang/String; = "FHW_MY_PEOPLE"

.field public static final FHW_NCD_REGISTER:Ljava/lang/String; = "FHW_NCD_REGISTER"

.field public static final FHW_NCD_SCREENING:Ljava/lang/String; = "FHW_NCD_SCREENING"

.field public static final FHW_NOTIFICATION:Ljava/lang/String; = "FHW_NOTIFICATION"

.field public static final FHW_VERY_HIGH_RISK_WOMEN:Ljava/lang/String; = "FHW_VERY_HIGH_RISK_WOMEN"

.field public static final FHW_WORK_REGISTER:Ljava/lang/String; = "FHW_WORK_REGISTER"

.field public static final FHW_WORK_STATUS:Ljava/lang/String; = "FHW_WORK_STATUS"

.field public static final HEAD_TO_TOE_SCREENING:Ljava/lang/String; = "HEAD_TO_TOE_SCREENING"

.field public static final INCENTIVE:Ljava/lang/String; = "INCENTIVE"

.field public static final LEARNING_MANAGEMENT_SYSTEM:Ljava/lang/String; = "LEARNING_MANAGEMENT_SYSTEM"

.field public static final LIBRARY:Ljava/lang/String; = "LIBRARY"

.field public static final LMS_PROGRESS_REPORT:Ljava/lang/String; = "LMS_PROGRESS_REPORT"

.field public static final MARK_PRESENCE_AT_HWC:Ljava/lang/String; = "MARK_PRESENCE_AT_HWC"

.field public static final NPCB_SCREENING_TITLE:Ljava/lang/String; = "NPCB_SCREENING_TITLE"

.field public static final OPD_FACILITY:Ljava/lang/String; = "OPD_FACILITY"

.field public static final TAKE_HOME_RATION:Ljava/lang/String; = "TAKE_HOME_RATION"

.field public static final WORK_LOG:Ljava/lang/String; = "WORK_LOG"

.field private static menuIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFormCodeFromMenuConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "ASHA_FHS"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "FHW_NCD_REGISTER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "ASHA_NOTIFICATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "FHW_NCD_SCREENING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ASHA_CBAC_ENTRY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "FHW_HIGH_RISK_WOMEN_AND_CHILD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x8

    goto :goto_0

    :sswitch_5
    const-string v1, "ASHA_MY_PEOPLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "ASHA_HIGH_RISK_BENEFICIARIES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "ASHA_NCD_REGISTER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "FHW_NOTIFICATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "FHW_CFHC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "FHW_VERY_HIGH_RISK_WOMEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "FHW_MY_PEOPLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v0

    .line 162
    :pswitch_0
    const-string p0, "ASHA_RCH"

    return-object p0

    :pswitch_1
    return-object v2

    .line 167
    :pswitch_2
    const-string p0, "NCD"

    return-object p0

    .line 151
    :pswitch_3
    const-string p0, "FHS"

    return-object p0

    .line 158
    :pswitch_4
    const-string p0, "RCH"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7978db68 -> :sswitch_c
        -0x448bb9b4 -> :sswitch_b
        -0x1ddd3538 -> :sswitch_a
        -0x19cf12eb -> :sswitch_9
        -0x289ad39 -> :sswitch_8
        0x56ebe3d -> :sswitch_7
        0xb3ad2dc -> :sswitch_6
        0x30d74dee -> :sswitch_5
        0x4bea1676 -> :sswitch_4
        0x5cca1368 -> :sswitch_3
        0x6b4fc1dc -> :sswitch_2
        0x6cab3bff -> :sswitch_1
        0x76fc03dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMenuIcons(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 77
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    .line 80
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_CFHC"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_reverification:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_DATA_QUALITY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_assign_family:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_ASSIGN_FAMILY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_my_people:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_MY_PEOPLE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_aadhar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_MOBILE_VERIFICATION"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_NOTIFICATION"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_HIGH_RISK_WOMEN_AND_CHILD"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_preg_woman:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_VERY_HIGH_RISK_WOMEN"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_screening:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_NCD_SCREENING"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_NCD_REGISTER"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NPCB_SCREENING_TITLE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_WORK_REGISTER"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FHW_WORK_STATUS"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_adolescent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ADOLESCENT_HEALTH_SCREENING"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_FHS"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_my_people:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_MY_PEOPLE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_NOTIFICATION"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_high_risk_mother_child:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_HIGH_RISK_BENEFICIARIES"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_screening:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_CBAC_ENTRY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_NCD_REGISTER"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_npcb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_NPCB_SCREENING"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_report:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_WORK_REGISTER"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INCENTIVE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ASHA_CHO_INCENTIVE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_fhs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "AWW_FHS"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_my_people:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "AWW_MY_PEOPLE"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_schedule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "AWW_NOTIFICATION"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_ncd_reg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "DAILY_NUTRITION"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_assign_family:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "TAKE_HOME_RATION"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_absent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "MARK_PRESENCE_AT_HWC"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_reverification:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "FHSR_PHONE_NUMBER_VERIFICATION"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lab_test:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "OPD_FACILITY"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_head_to_toe_screening:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "HEAD_TO_TOE_SCREENING"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "LEARNING_MANAGEMENT_SYSTEM"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_lms_report:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "LMS_PROGRESS_REPORT"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_library:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "LIBRARY"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_announcement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ANNOUNCEMENTS"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->menu_work_status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "WORK_LOG"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_medical_card:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ABHA_NUMBER"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->incentive:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/MenuConstants;->menuIcons:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_2
    return-object v0
.end method
