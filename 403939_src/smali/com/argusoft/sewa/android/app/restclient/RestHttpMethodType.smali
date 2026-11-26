.class public final enum Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;
.super Ljava/lang/Enum;
.source "RestHttpMethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

.field public static final enum HTTP_DELETE:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

.field public static final enum HTTP_GET:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

.field public static final enum HTTP_POST:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

.field public static final enum HTTP_PUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;
    .locals 3

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_GET:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_POST:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_PUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_DELETE:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const-string v1, "HTTP_GET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_GET:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    .line 14
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const-string v1, "HTTP_POST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_POST:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    .line 15
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const-string v1, "HTTP_PUT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_PUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    .line 16
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    const-string v1, "HTTP_DELETE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_DELETE:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    .line 11
    invoke-static {}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->$values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;
    .locals 1

    .line 11
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpRestMethodType{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
