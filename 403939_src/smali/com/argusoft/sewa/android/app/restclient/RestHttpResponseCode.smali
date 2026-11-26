.class public final enum Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;
.super Ljava/lang/Enum;
.source "RestHttpResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_NOT_ACCEPTABLE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_NOT_FOUND:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_NOT_IMPLEMENTED_STILL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_NO_HTTP_METHOD_TYPE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_OK:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_OK_NO_CONTENT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_OTHER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_PERAMETER_NOT_PROPER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_REQUEST_TIMEOUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_RESPONSE_NOT_FORMATED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_UNAUTHORIZED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

.field public static final enum SC_URL_NULL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;
    .locals 3

    const/16 v0, 0x10

    .line 11
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK_NO_CONTENT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_UNAUTHORIZED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_FOUND:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_ACCEPTABLE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_REQUEST_TIMEOUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_PERAMETER_NOT_PROPER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_RESPONSE_NOT_FORMATED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_URL_NULL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_IMPLEMENTED_STILL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NO_HTTP_METHOD_TYPE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OTHER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "SC_OK"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 14
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x1

    const/16 v2, 0xcc

    const-string v3, "SC_OK_NO_CONTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK_NO_CONTENT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 15
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x2

    const/16 v2, 0x190

    const-string v3, "SC_BAD_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 16
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x3

    const/16 v2, 0x191

    const-string v3, "SC_UNAUTHORIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_UNAUTHORIZED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 17
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x4

    const/16 v2, 0x193

    const-string v3, "SC_FORBIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 18
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x5

    const/16 v2, 0x194

    const-string v3, "SC_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_FOUND:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 19
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x6

    const/16 v2, 0x196

    const-string v3, "SC_NOT_ACCEPTABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_ACCEPTABLE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 20
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/4 v1, 0x7

    const/16 v2, 0x198

    const-string v3, "SC_REQUEST_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_REQUEST_TIMEOUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 21
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    const-string v3, "SC_INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 23
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0x9

    const/16 v2, 0x258

    const-string v3, "SC_PERAMETER_NOT_PROPER"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_PERAMETER_NOT_PROPER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 24
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xa

    const/16 v2, 0x259

    const-string v3, "SC_RESPONSE_NOT_FORMATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_RESPONSE_NOT_FORMATED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 25
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xb

    const/16 v2, 0x25a

    const-string v3, "SC_URL_NULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_URL_NULL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 26
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xc

    const/16 v2, 0x25b

    const-string v3, "SC_NOT_IMPLEMENTED_STILL"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_IMPLEMENTED_STILL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 27
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xd

    const/16 v2, 0x25c

    const-string v3, "SC_NO_HTTP_METHOD_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NO_HTTP_METHOD_TYPE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 28
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xe

    const/16 v2, 0x25d

    const-string v3, "SC_ERROR_IN_READING_RESONSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 29
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const/16 v1, 0xf

    const/16 v2, 0x29a

    const-string v3, "SC_OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OTHER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    .line 11
    invoke-static {}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->$values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;
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
    const-class v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;
    .locals 1

    .line 11
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->$VALUES:[Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RestHttpResponseCode{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
