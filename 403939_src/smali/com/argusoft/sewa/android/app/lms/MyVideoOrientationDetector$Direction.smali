.class public final enum Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
.super Ljava/lang/Enum;
.source "MyVideoOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

.field public static final enum LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

.field public static final enum PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

.field public static final enum REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

.field public static final enum REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 3

    const/4 v0, 0x4

    .line 152
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    sget-object v1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const-string v1, "REVERSE_PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    new-instance v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const-string v1, "REVERSE_LANDSCAPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    .line 152
    invoke-static {}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->$values()[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->$VALUES:[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

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

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 152
    const-class v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;
    .locals 1

    .line 152
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->$VALUES:[Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    return-object v0
.end method
