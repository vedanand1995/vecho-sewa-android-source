.class public Lcom/argusoft/sewa/android/app/support/SupportApi;
.super Ljava/lang/Object;
.source "SupportApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
    }
.end annotation


# static fields
.field private static final AUDIO:Lokhttp3/MediaType;

.field private static final IMAGE:Lokhttp3/MediaType;

.field private static final JSON:Lokhttp3/MediaType;

.field private static final TEXT:Lokhttp3/MediaType;


# instance fields
.field apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi;->TEXT:Lokhttp3/MediaType;

    .line 57
    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi;->JSON:Lokhttp3/MediaType;

    .line 58
    const-string v0, "audio/mp4"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi;->AUDIO:Lokhttp3/MediaType;

    .line 59
    const-string v0, "image/jpeg"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi;->IMAGE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static diagnostics(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v1, "appVersion"

    const-string v2, "4.1.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "networkState"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->networkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string p0, "client"

    const-string v1, "techo-android"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    .line 223
    const-string v0, "offline"

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->networkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static networkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 211
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 213
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "wifi"

    goto :goto_1

    :cond_2
    const-string p0, "mobile"

    :goto_1
    return-object p0

    .line 214
    :cond_3
    :goto_2
    const-string p0, "offline"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 218
    :catch_0
    const-string p0, "unknown"

    return-object p0
.end method

.method private static run(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    .line 180
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 178
    :try_start_3
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 185
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result p0

    const/16 v1, 0x191

    if-eq p0, v1, :cond_6

    const/16 v1, 0x1f4

    if-ge p0, v1, :cond_5

    const/16 v1, 0x198

    if-eq p0, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p0, v1, :cond_4

    goto :goto_3

    .line 192
    :cond_4
    new-instance p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_5
    :goto_3
    new-instance p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_6
    new-instance p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->SESSION:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p0

    .line 172
    :catch_1
    new-instance p0, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p0
.end method

.method private static text(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/argusoft/sewa/android/app/support/SupportApi;->TEXT:Lokhttp3/MediaType;

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public attachments(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportAttachment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportAttachments(J)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public comments(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportComments(J)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public download(Landroid/content/Context;JLcom/argusoft/sewa/android/app/support/SupportAttachment;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "support/media"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 121
    new-instance p1, Ljava/io/File;

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->localName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-object p1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v1

    iget-object v2, p4, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p2, p3, v2, v3}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportAttachmentContent(JJ)Lretrofit2/Call;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 129
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/support/SupportAttachment;->localName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".part"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x4000

    .line 131
    :try_start_2
    new-array v2, v2, [B

    .line 133
    :goto_0
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p4, :cond_2

    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 141
    :cond_2
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 143
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    .line 144
    :cond_3
    new-instance p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object p2, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p1, p2, p3}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 130
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p4, :cond_4

    :try_start_7
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p4

    :try_start_8
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_3

    .line 138
    :catch_0
    :try_start_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    new-instance p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object p4, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->NETWORK:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p1, p4, p3}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 141
    :goto_3
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 142
    throw p1

    .line 127
    :cond_5
    new-instance p1, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;

    sget-object p2, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;->REFUSED:Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;

    invoke-direct {p1, p2, p3}, Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;-><init>(Lcom/argusoft/sewa/android/app/support/SupportApi$Failure$Kind;Ljava/lang/String;)V

    throw p1
.end method

.method public fixed(J)Lcom/argusoft/sewa/android/app/support/SupportTicket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportFixed(J)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;

    return-object p1
.end method

.method public mine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportMine()Lretrofit2/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public notFixed(JLjava/lang/String;)Lcom/argusoft/sewa/android/app/support/SupportTicket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "reason"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportNotFixed(JLjava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;

    return-object p1
.end method

.method public raise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/argusoft/sewa/android/app/support/SupportTicket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/support/SupportTicket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 66
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi;->AUDIO:Lokhttp3/MediaType;

    invoke-static {p5, v1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p5

    const-string v1, "voice"

    invoke-static {v1, v0, p5}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x0

    :goto_1
    move-object v5, p5

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_3

    .line 70
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_2
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/io/File;

    .line 71
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/argusoft/sewa/android/app/support/SupportApi;->IMAGE:Lokhttp3/MediaType;

    .line 73
    invoke-static {p6, v1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p6

    .line 72
    const-string v1, "photos"

    invoke-static {v1, v0, p6}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p6

    invoke-interface {v6, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_3
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p5}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    .line 79
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/support/SupportApi;->text(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 80
    invoke-static {p4}, Lcom/argusoft/sewa/android/app/support/SupportApi;->text(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->diagnostics(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/argusoft/sewa/android/app/support/SupportApi;->JSON:Lokhttp3/MediaType;

    invoke-static {p1, p3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    move-object v1, p2

    .line 77
    invoke-interface/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportRaise(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Ljava/util/List;)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;

    return-object p1
.end method

.method public reply(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v1, "body"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object p3

    invoke-interface {p3, p1, p2, v0}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportReply(JLjava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method

.method public ticket(J)Lcom/argusoft/sewa/android/app/support/SupportTicket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportTicket(J)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/support/SupportTicket;

    return-object p1
.end method

.method public voiceReply(JLjava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/argusoft/sewa/android/app/support/SupportApi$Failure;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportApi;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v0

    .line 106
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/argusoft/sewa/android/app/support/SupportApi;->AUDIO:Lokhttp3/MediaType;

    invoke-static {p3, v2}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    const-string v2, "voice"

    invoke-static {v2, v1, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    .line 105
    invoke-interface {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->supportVoiceReply(JLokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/support/SupportApi;->run(Lretrofit2/Call;)Ljava/lang/Object;

    return-void
.end method
