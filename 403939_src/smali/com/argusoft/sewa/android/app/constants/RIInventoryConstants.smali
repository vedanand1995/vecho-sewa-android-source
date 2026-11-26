.class public Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;
.super Ljava/lang/Object;
.source "RIInventoryConstants.java"


# static fields
.field public static final BCG:Ljava/lang/String; = "BCG"

.field public static final BCG_DILUENT:Ljava/lang/String; = "BCG_DILUENT"

.field public static final DPT:Ljava/lang/String; = "DPT"

.field public static final FIPV:Ljava/lang/String; = "FIPV"

.field public static final HEP_B:Ljava/lang/String; = "HEP_B"

.field private static final INVENTORY_VACCINE_FULL_FORM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVENTORY_WITH_10_VIAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVENTORY_WITH_OPEN_VIAL_POLICY_NO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final JE:Ljava/lang/String; = "JE"

.field public static final MR:Ljava/lang/String; = "MR"

.field public static final MR_DILUENT:Ljava/lang/String; = "MR_DILUENT"

.field public static final OPV:Ljava/lang/String; = "OPV"

.field public static final PCV:Ljava/lang/String; = "PCV"

.field public static final PENTAVALENT:Ljava/lang/String; = "PENTAVALENT"

.field public static final ROTA_VIRUS:Ljava/lang/String; = "ROTA_VIRUS"

.field public static final SYRINGE_0_1_ML:Ljava/lang/String; = "SYRINGE_0_1_ML"

.field public static final SYRINGE_0_5_ML:Ljava/lang/String; = "SYRINGE_0_5_ML"

.field public static final SYRINGE_5_ML:Ljava/lang/String; = "SYRINGE_5_ML"

.field public static final TD:Ljava/lang/String; = "TD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->getInventoryWithOpenVialPolicyNo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->INVENTORY_WITH_OPEN_VIAL_POLICY_NO:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->getInventoryWith10Vial()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->INVENTORY_WITH_10_VIAL:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->INVENTORY_VACCINE_FULL_FORM:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFullFormOfInventoryVaccines(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 59
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->INVENTORY_VACCINE_FULL_FORM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "BCG"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "MR"

    const-string v2, "Measles Rubella"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "DPT"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "TD"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "PENTAVALENT"

    const-string v2, "Pentavalent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "FIPV"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "PCV"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "JE"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "OPV"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "ROTA_VIRUS"

    const-string v2, "Rota Virus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "HEP_B"

    const-string v2, "Hepatitis B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "BCG_DILUENT"

    const-string v2, "BCG Diluent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "MR_DILUENT"

    const-string v2, "MR Diluent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "SYRINGE_0_1_ML"

    const-string v2, "Syringe 0.1 ml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "SYRINGE_0_5_ML"

    const-string v2, "Syringe 0.5 ml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "SYRINGE_5_ML"

    const-string v2, "Syringe 5 ml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method private static getInventoryWith10Vial()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    const-string v1, "TD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "DPT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getInventoryWithOpenVialPolicyNo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 43
    const-string v1, "BCG"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "MR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
