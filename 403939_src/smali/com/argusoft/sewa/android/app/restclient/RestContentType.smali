.class public final enum Lcom/argusoft/sewa/android/app/restclient/RestContentType;
.super Ljava/lang/Enum;
.source "RestContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/restclient/RestContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestContentType;

.field public static final enum APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/restclient/RestContentType;
    .locals 3

    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    const/4 v1, 0x0

    const-string v2, "application/json"

    const-string v3, "APPLICATION_JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    .line 6
    invoke-static {}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->$values()[Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/restclient/RestContentType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/restclient/RestContentType;
    .locals 1

    .line 6
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/restclient/RestContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RestContentType{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
