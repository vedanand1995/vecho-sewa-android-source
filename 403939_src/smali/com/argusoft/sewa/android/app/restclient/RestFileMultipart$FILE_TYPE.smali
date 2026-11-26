.class public final enum Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
.super Ljava/lang/Enum;
.source "RestFileMultipart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

.field public static final enum AUDIO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

.field public static final enum DOCUMENT:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

.field public static final enum IMAGE:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

.field public static final enum VIDEO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
    .locals 3

    const/4 v0, 0x4

    .line 58
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->IMAGE:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->AUDIO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->VIDEO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->DOCUMENT:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v1, 0x0

    const-string v2, "image"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->IMAGE:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    .line 61
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v1, 0x1

    const-string v2, "audio"

    const-string v3, "AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->AUDIO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    .line 62
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v1, 0x2

    const-string v2, "video"

    const-string v3, "VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->VIDEO:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    .line 63
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    const/4 v1, 0x3

    const-string v2, "document"

    const-string v3, "DOCUMENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->DOCUMENT:Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    .line 58
    invoke-static {}, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->$values()[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
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
    const-class v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;
    .locals 1

    .line 58
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FILE_TYPE{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestFileMultipart$FILE_TYPE;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
