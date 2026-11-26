.class public final enum Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
.super Ljava/lang/Enum;
.source "MyVaccinationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GivenStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

.field public static final enum NO:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

.field public static final enum NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

.field public static final enum SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

.field public static final enum YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;


# instance fields
.field private status:C


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
    .locals 3

    const/4 v0, 0x4

    .line 194
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NO:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 196
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v1, 0x0

    const/16 v2, 0x54

    const-string v3, "YES"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->YES:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v1, 0x1

    const/16 v2, 0x46

    const-string v3, "NO"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NO:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v1, 0x2

    const/16 v2, 0x53

    const-string v3, "SKIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->SKIP:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    const/4 v1, 0x3

    const/16 v2, 0x20

    const-string v3, "NULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->NULL:Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    .line 194
    invoke-static {}, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->$values()[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->$VALUES:[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-char p3, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->status:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 194
    const-class v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;
    .locals 1

    .line 194
    sget-object v0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->$VALUES:[Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()C
    .locals 1

    .line 204
    iget-char v0, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->status:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GivenStatus{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/argusoft/sewa/android/app/component/MyVaccinationStatus$GivenStatus;->status:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
