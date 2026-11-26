.class public Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$IPv4OnlyDns;
    }
.end annotation


# instance fields
.field private apiService:Lcom/argusoft/sewa/android/app/restclient/ApiService;

.field private final gson:Lcom/google/gson/Gson;

.field private final okHttpClient:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$IPv4OnlyDns;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$IPv4OnlyDns;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 64
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 65
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->okHttpClient:Lokhttp3/OkHttpClient$Builder;

    .line 73
    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda2;-><init>()V

    .line 93
    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda3;-><init>()V

    .line 94
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/util/Date;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->gson:Lcom/google/gson/Gson;

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->createApiService()V

    return-void
.end method

.method public static handleTimeSyncException(Landroid/content/Context;)V
    .locals 2

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$handleTimeSyncException$3(Landroid/content/Context;)V
    .locals 1

    .line 165
    const-string v0, "Your device\'s date and time don\'t match the server\'s date and time.Please correct it or contact support if the issue continues."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([+-]\\d{2})(\\d{2})$"

    const-string v2, "$1:$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const/16 v2, 0xc0

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application-version"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 84
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "null"

    .line 84
    :goto_1
    const-string v3, "userToken"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 87
    const-string v2, "X-Client-Date-Time"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 89
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$1(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public createApiService()V
    .locals 2

    .line 102
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->okHttpClient:Lokhttp3/OkHttpClient$Builder;

    .line 104
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->gson:Lcom/google/gson/Gson;

    .line 105
    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/restclient/ApiService;

    .line 107
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/restclient/ApiService;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->apiService:Lcom/argusoft/sewa/android/app/restclient/ApiService;

    return-void
.end method

.method public execute(Lretrofit2/Call;)Ljava/lang/Object;
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
            Lcom/argusoft/sewa/android/app/restclient/RestHttpException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const-string v1, "Internal server problem"

    if-eqz v0, :cond_3

    .line 122
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v0, "message"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 128
    invoke-static {}, Lcom/argusoft/sewa/android/app/SewaApplication_;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->handleTimeSyncException(Landroid/content/Context;)V

    .line 129
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_FORBIDDEN:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v1, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_BAD_REQUEST:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v1, v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_2
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_3
    new-instance p1, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    sget-object v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;->SC_INTERNAL_SERVER_ERROR:Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Lcom/argusoft/sewa/android/app/restclient/RestHttpResponseCode;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v0, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->apiService:Lcom/argusoft/sewa/android/app/restclient/ApiService;

    return-object v0
.end method
