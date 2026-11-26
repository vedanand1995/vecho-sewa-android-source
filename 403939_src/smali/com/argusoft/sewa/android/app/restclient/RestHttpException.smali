.class public Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
.super Ljava/lang/Exception;
.source "RestHttpException.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final statusCode:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->message:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->statusCode:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->message:Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->statusCode:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->statusCode:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpRestException{message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->statusCode:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
