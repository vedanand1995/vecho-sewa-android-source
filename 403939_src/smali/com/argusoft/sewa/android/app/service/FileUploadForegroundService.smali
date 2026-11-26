.class public Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;
.super Landroid/app/Service;
.source "FileUploadForegroundService.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "FileUploadServiceChannel"

.field public static final EXTRA_BEANS_LIST:Ljava/lang/String; = "beans"

.field public static isRunning:Z = false


# instance fields
.field apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 159
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "FileUploadServiceChannel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Uploading media file"

    .line 160
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_upload:I

    .line 162
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel()V
    .locals 3

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 174
    const-string v0, "File Upload Service Channel"

    const/4 v1, 0x2

    const-string v2, "FileUploadServiceChannel"

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 179
    const-class v1, Landroid/app/NotificationManager;

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 181
    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->buildNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 169
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private uploadFile(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const-string v0, "FileUploadService"

    .line 0
    const-string v1, "Server returned error code "

    const-string v2, "File not found: "

    .line 119
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 122
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setToken(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;->getInstance()Lcom/argusoft/sewa/android/app/restclient/ApiService;

    move-result-object v2

    const-string v3, "file"

    const-string v7, "application/octet-stream"

    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    invoke-static {v6, v7}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/argusoft/sewa/android/app/restclient/ApiService;->uploadMediaToServer(Lokhttp3/MultipartBody$Part;Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Lretrofit2/Call;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;

    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v3

    .line 137
    invoke-virtual {v2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v6, "P"

    invoke-virtual {p1, v6}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v6, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    .line 141
    invoke-virtual {v2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 144
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response body: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "Failed: File does not exist."

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->updateNotification(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 152
    const-string v2, "Error uploading file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->updateNotification(Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method synthetic lambda$onStartCommand$0$com-argusoft-sewa-android-app-service-FileUploadForegroundService(Ljava/util/ArrayList;Landroid/os/ResultReceiver;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 81
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 83
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->updateNotification(Ljava/lang/String;)V

    .line 84
    const-string v2, "U"

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->uploadFile(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    .line 90
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/RecordStatusBean;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 101
    :cond_1
    const-string p1, "Network Connection Error"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 107
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p2, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->stopForeground(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->isRunning:Z

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 188
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 189
    sput-boolean v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->isRunning:Z

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    const-string p2, "receiver"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    .line 72
    const-string p3, "beans"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance p3, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$1;

    invoke-direct {p3, p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$1;-><init>(Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;)V

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 74
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->createNotificationChannel()V

    .line 76
    const-string p3, "Uploading file..."

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->buildNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p3

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0, p3}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 79
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return v0

    :cond_0
    return p2
.end method
