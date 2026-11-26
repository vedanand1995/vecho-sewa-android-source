.class public Lcom/argusoft/sewa/android/app/constants/NotificationConstants;
.super Ljava/lang/Object;
.source "NotificationConstants.java"


# static fields
.field public static final ASHA_NOTIFICATION_READ_ONLY:Ljava/lang/String; = "ASHA_READ_ONLY"

.field public static final ASHA_REPORTED_EVENT_NOTIFICATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FHW_ADOLESCENT_HEALTH_SCREENING:Ljava/lang/String; = "ADOLESCENT_HEALTH_SCREENING"

.field public static final FHW_MEASELS_AND_RUBELLA_DRIVE:Ljava/lang/String; = "MR_VACCINATION"

.field public static final FHW_NOTIFICATION_AMRUTPAN:Ljava/lang/String; = "AMRUTPAN"

.field public static final FHW_NOTIFICATION_AMRUTPAN_MISSED:Ljava/lang/String; = "AMRUTPAN_MISSED"

.field public static final FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD:Ljava/lang/String; = "AMRUTPAN_UC"

.field public static final FHW_NOTIFICATION_ANC:Ljava/lang/String; = "FHW_ANC"

.field public static final FHW_NOTIFICATION_APPETITE:Ljava/lang/String; = "APPETITE"

.field public static final FHW_NOTIFICATION_CHILD_SERVICES:Ljava/lang/String; = "FHW_CS"

.field public static final FHW_NOTIFICATION_DISCHARGE:Ljava/lang/String; = "DISCHARGE"

.field public static final FHW_NOTIFICATION_DPT_BOOSTER_2:Ljava/lang/String; = "DPT_BOOSTER_2_ALERT"

.field public static final FHW_NOTIFICATION_FAMILY_MIGRATION_IN:Ljava/lang/String; = "FMI"

.field public static final FHW_NOTIFICATION_FAMILY_MIGRATION_OUT:Ljava/lang/String; = "FMO"

.field public static final FHW_NOTIFICATION_GERIATRICS_MEDICATION:Ljava/lang/String; = "GMA"

.field public static final FHW_NOTIFICATION_IRON_SUCROSE:Ljava/lang/String; = "IRON_SUCROSE_ALERT"

.field public static final FHW_NOTIFICATION_LMP_FOLLOW_UP:Ljava/lang/String; = "LMPFU"

.field public static final FHW_NOTIFICATION_MIGRATION_IN:Ljava/lang/String; = "MI"

.field public static final FHW_NOTIFICATION_MIGRATION_OUT:Ljava/lang/String; = "MO"

.field public static final FHW_NOTIFICATION_NEWLY_WED_COUPLES:Ljava/lang/String; = "NEWLY_WED_COUPLES"

.field public static final FHW_NOTIFICATION_NS:Ljava/lang/String; = "FHW_NS"

.field public static final FHW_NOTIFICATION_PNC:Ljava/lang/String; = "FHW_PNC"

.field public static final FHW_NOTIFICATION_READ_ONLY:Ljava/lang/String; = "READ_ONLY"

.field public static final FHW_NOTIFICATION_SAM_SCREENING:Ljava/lang/String; = "SAM_SCREENING"

.field public static final FHW_NOTIFICATION_TRAVELLERS_SCREENING:Ljava/lang/String; = "TRAVELLERS_SCREENING"

.field public static final FHW_NOTIFICATION_TT2:Ljava/lang/String; = "TT2_ALERT"

.field public static final FHW_NOTIFICATION_WORK_PLAN_FOR_DELIVERY:Ljava/lang/String; = "FHW_WPD"

.field public static final FHW_WORK_PLAN_ASHA_REPORTED_EVENT:Ljava/lang/String; = "REPORTED_EVENT_BY_ASHA"

.field public static final FHW_WORK_PLAN_MAMTA_DAY:Ljava/lang/String; = "MAMTA_DAY"

.field public static final FHW_WORK_PLAN_OTHER_SERVICES:Ljava/lang/String; = "OTHER_SERVICES"

.field public static final NOTIFICATION_FHW_DEATH_CONF:Ljava/lang/String; = "FHW_DEATH_CONF"

.field public static final NOTIFICATION_FHW_DELIVERY_CONF:Ljava/lang/String; = "FHW_DELIVERY_CONF"

.field public static final NOTIFICATION_FHW_FAMILY_MIGRATION:Ljava/lang/String; = "FHW_FAMILY_MIGRATION"

.field public static final NOTIFICATION_FHW_FAMILY_SPLIT:Ljava/lang/String; = "FHW_FAMILY_SPLIT"

.field public static final NOTIFICATION_FHW_MEMBER_MIGRATION:Ljava/lang/String; = "FHW_MEMBER_MIGRATION"

.field public static final NOTIFICATION_FHW_PREGNANCY_CONF:Ljava/lang/String; = "FHW_PREG_CONF"

.field public static final NOTIFICATION_STATE_PENDING:Ljava/lang/String; = "PENDING"

.field public static final NOTIFICATION_STATE_RESCHEDULE:Ljava/lang/String; = "RESCHEDULE"

.field public static final SELF_HELP_GROUP:Ljava/lang/String; = "SHG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/NotificationConstants;->getAshaReportedEventNotifications()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/NotificationConstants;->ASHA_REPORTED_EVENT_NOTIFICATIONS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAshaReportedEventNotifications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string v1, "FHW_PREG_CONF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "FHW_DELIVERY_CONF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "FHW_DEATH_CONF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "FHW_MEMBER_MIGRATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "FHW_FAMILY_MIGRATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "FHW_FAMILY_SPLIT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
