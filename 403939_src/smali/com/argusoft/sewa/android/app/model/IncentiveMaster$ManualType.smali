.class public final enum Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
.super Ljava/lang/Enum;
.source "IncentiveMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/model/IncentiveMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum AM:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum BOOL:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum CNT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum CNT_DATE:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum CNT_DET:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum DEPENDENT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum LIST:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

.field public static final enum MAMTA_DAY:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    .locals 3

    const/16 v0, 0x8

    .line 58
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->BOOL:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT_DET:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT_DATE:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->LIST:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->DEPENDENT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->MAMTA_DAY:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->AM:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->BOOL:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 60
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "CNT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 61
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "CNT_DET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT_DET:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 62
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "CNT_DATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT_DATE:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 63
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "LIST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->LIST:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 64
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "DEPENDENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->DEPENDENT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 65
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "MAMTA_DAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->MAMTA_DAY:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 66
    new-instance v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    const-string v1, "AM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->AM:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    .line 58
    invoke-static {}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->$values()[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->$VALUES:[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    const-class v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    .locals 1

    .line 58
    sget-object v0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->$VALUES:[Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    return-object v0
.end method
