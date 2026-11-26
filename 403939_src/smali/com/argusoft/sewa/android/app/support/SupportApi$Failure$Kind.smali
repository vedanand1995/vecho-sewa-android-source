.class public final enum Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;
.super Ljava/lang/Enum;
.source "SupportApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

.field public static final enum NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

.field public static final enum REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

.field public static final enum SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;
    .locals 3

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const-string v1, "SESSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    const-string v1, "REFUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->$values()[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->$VALUES:[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    const-class v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;
    .locals 1

    .line 46
    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->$VALUES:[Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    return-object v0
.end method
