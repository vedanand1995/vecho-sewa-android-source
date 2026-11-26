.class public Lcom/argusoft/sewa/android/app/constants/HealthInfraConstants;
.super Ljava/lang/Object;
.source "HealthInfraConstants.java"


# static fields
.field public static final BLOCK_PHC:Ljava/lang/String; = "Block PHC"

.field public static final INFRA_TYPES_FOR_RI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFRA_TYPE_COMMUNITY_HEALTH_CENTER:Ljava/lang/String; = "Community Health Center"

.field public static final INFRA_TYPE_DISTRICT_HOSPITAL:Ljava/lang/String; = "District Hospital"

.field public static final INFRA_TYPE_MEDICAL_COLLEGE_HOSPITAL:Ljava/lang/String; = "Medical College Hospital"

.field public static final INFRA_TYPE_PRIMARY_HEALTH_CENTRE:Ljava/lang/String; = "Primary Health Centre"

.field public static final URBAN_CHC:Ljava/lang/String; = "Urban CHC"

.field public static final URBAN_PHC:Ljava/lang/String; = "Urban PHC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/HealthInfraConstants;->getInfraTypesForRi()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/HealthInfraConstants;->INFRA_TYPES_FOR_RI:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInfraTypesForRi()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    const-string v1, "District Hospital"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "Community Health Center"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "Primary Health Centre"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "Medical College Hospital"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "Urban PHC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "Urban CHC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "Block PHC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
