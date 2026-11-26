.class public Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean$Status;
.super Ljava/lang/Object;
.source "IncentiveMonthlyDetailsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final AF_APPROVED:Ljava/lang/String; = "AF_APPROVED"

.field public static final APPROVAL_PENDING:Ljava/lang/String; = "APPROVAL_PENDING"

.field public static final ASHA_APPROVED:Ljava/lang/String; = "ASHA_APPROVED"

.field public static final MO_APPROVED:Ljava/lang/String; = "MO_APPROVED"

.field public static final MO_COMPLETED:Ljava/lang/String; = "MO_COMPLETED"

.field public static final MO_REFERRED_TO_CHO:Ljava/lang/String; = "MO_REFERRED_TO_CHO"

.field public static final PENDING:Ljava/lang/String; = "PENDING"

.field public static final PENDING_STATUSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAPPROVAL_PENDING:Ljava/lang/String; = "REAPPROVAL_PENDING"

.field public static final REVERIFICATION:Ljava/lang/String; = "REVERIFICATION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean$Status;->getStatusList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean$Status;->PENDING_STATUSES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStatusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const-string v1, "PENDING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "REVERIFICATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
