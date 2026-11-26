.class public final enum Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;
.super Ljava/lang/Enum;
.source "SupportStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/support/SupportStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

.field public static final enum DONE:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

.field public static final enum IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

.field public static final enum NEEDS_ANSWER:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

.field public static final enum TO_CHECK:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;
    .locals 3

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->NEEDS_ANSWER:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->TO_CHECK:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->DONE:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const-string v1, "NEEDS_ANSWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->NEEDS_ANSWER:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const-string v1, "TO_CHECK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->TO_CHECK:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->IN_PROGRESS:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    new-instance v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    const-string v1, "DONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->DONE:Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-static {}, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->$values()[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->$VALUES:[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    const-class v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;
    .locals 1

    .line 20
    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->$VALUES:[Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/support/SupportStatus$Group;

    return-object v0
.end method
