.class public Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesFormUtil.java"


# static fields
.field public static final sortBeneficiaryMorbidityDetailsByBeneficiaryType:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$1;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortBeneficiaryMorbidityDetailsByBeneficiaryType:Ljava/util/Comparator;

    .line 24
    new-instance v0, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil$2;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static riskValueOf(Ljava/lang/String;)I
    .locals 1

    .line 32
    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 34
    :cond_0
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 36
    :cond_1
    const-string v0, "G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method
