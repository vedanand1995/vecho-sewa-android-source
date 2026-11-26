.class public Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;
.super Ljava/lang/Object;
.source "RestRequestImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/restclient/RestRequest;


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "Accept"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final dateDeserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final dateSerializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private final fixedHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final httpParams:Lorg/apache/http/params/HttpParams;

.field private myCookieStore:Lorg/apache/http/client/CookieStore;

.field private final resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$1;-><init>(Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->dateSerializer:Lcom/google/gson/JsonSerializer;

    .line 75
    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$2;-><init>(Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->dateDeserializer:Lcom/google/gson/JsonDeserializer;

    .line 92
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v2, Ljava/util/Date;

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    .line 101
    const-string v0, ".sewa.data"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fileName:Ljava/lang/String;

    .line 105
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DATABASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fileName:Ljava/lang/String;

    .line 107
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fixedHeader:Ljava/util/Map;

    const v1, 0x2bf20

    .line 110
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    return-void
.end method

.method private executeHttp(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 318
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 320
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    .line 321
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->writeCookies()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enable to write cookies. . . . . "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2
.end method

.method private executeRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/google/gson/stream/JsonReader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 257
    const-string v0, "Internal server problem"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-direct {p0, v2, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->executeHttp(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p1, :cond_a

    .line 265
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 266
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 268
    sget-object v4, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v4

    const-string v5, "Error in reading response"

    if-ne v2, v4, :cond_0

    .line 270
    :try_start_1
    new-instance p1, Lcom/google/gson/stream/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 272
    :catch_0
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v0, v5}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_0
    sget-object v4, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OK_NO_CONTENT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_1

    return-object v1

    .line 277
    :cond_1
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 278
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->getErrorMessage(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 280
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {v0, v1, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string v1, "Request not matching or parameter is not proper"

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_3
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_UNAUTHORIZED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-eq v2, v1, :cond_9

    .line 291
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-eq v2, v1, :cond_8

    .line 298
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_FOUND:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-eq v2, v1, :cond_7

    .line 300
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_REQUEST_TIMEOUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-eq v2, v1, :cond_6

    .line 302
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-ne v2, v1, :cond_5

    .line 303
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->getErrorMessage(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 305
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {v0, v1, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_5
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_OTHER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_6
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_REQUEST_TIMEOUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string v1, "timeout error.  increase the request Time out"

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_7
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_FOUND:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string v1, "Service not available or check the http method type"

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_8
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw v0

    .line 295
    :catch_1
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v0, v5}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_9
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 290
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_UNAUTHORIZED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw v0

    .line 288
    :catch_2
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_ERROR_IN_READING_RESONSE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v0, v5}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_a
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1
.end method

.method private getErrorMessage(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 397
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_0

    .line 400
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 406
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private readCookies()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :try_start_1
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    new-instance v2, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$3;-><init>(Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;)V

    .line 366
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 368
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 370
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 371
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3, v2}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 362
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " No cookies Read"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method private readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .locals 3

    if-eqz p1, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 333
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    return-object p1

    .line 343
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    return-object p1
.end method

.method private declared-synchronized writeCookies()V
    .locals 3

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 385
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 386
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->myCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->writeData(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 385
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    .line 389
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " No cookies write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 392
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method private writeData(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 350
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 351
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 352
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 353
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No Write in File"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addFixedHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fixedHeader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public callWebService(Ljava/lang/String;Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_f

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    const-string p1, "UTF-8"

    if-eqz p3, :cond_1

    .line 151
    :try_start_0
    const-string v1, "?"

    .line 152
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "&"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    new-instance p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "********** Rest Url Called : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "********** Params : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_3

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "********** Body : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    sget-object p3, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_GET:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "Accept"

    if-eqz p3, :cond_4

    .line 174
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    if-eqz p2, :cond_a

    .line 176
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 178
    :cond_4
    sget-object p3, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_POST:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, "check parameter it is not proper"

    if-eqz p3, :cond_7

    .line 179
    new-instance p2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    if-eqz p3, :cond_6

    .line 181
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 185
    :try_start_1
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 186
    new-instance p3, Lorg/apache/http/entity/StringEntity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_5
    new-instance p3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_1
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_PERAMETER_NOT_PROPER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, p2, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    move-object p1, p2

    goto :goto_4

    .line 198
    :cond_7
    sget-object p3, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_PUT:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 199
    new-instance p2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {p2, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    if-eqz p3, :cond_6

    .line 201
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 205
    :try_start_2
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 206
    new-instance p3, Lorg/apache/http/entity/StringEntity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_8
    new-instance p3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_3
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 214
    :catch_2
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_PERAMETER_NOT_PROPER:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, p2, v2}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_9
    sget-object p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->HTTP_DELETE:Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpMethodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 219
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    if-eqz p2, :cond_a

    .line 221
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->fixedHeader:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 232
    :cond_b
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->executeRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/google/gson/stream/JsonReader;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    .line 234
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->resContentType:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    const-string p4, "Response is not proper formatted that we want"

    if-eqz p3, :cond_c

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->APPLICATION_JSON:Lcom/argusoft/sewa/android/app/restclient/RestContentType;

    invoke-virtual {p3, v0}, Lcom/argusoft/sewa/android/app/restclient/RestContentType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 236
    :try_start_3
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p3, p1, p5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_RESPONSE_NOT_FORMATED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, p2, p4}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_c
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_RESPONSE_NOT_FORMATED:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, p2, p4}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    :cond_d
    return-object p2

    .line 224
    :cond_e
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NOT_IMPLEMENTED_STILL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string p3, "Still there is no implementation of these thing"

    invoke-direct {p1, p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_f
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_NO_HTTP_METHOD_TYPE:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string p3, "Provide Http method it should be provide"

    invoke-direct {p1, p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_10
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object p2, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_URL_NULL:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    const-string p3, "Url is null"

    invoke-direct {p1, p2, p3}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1
.end method
