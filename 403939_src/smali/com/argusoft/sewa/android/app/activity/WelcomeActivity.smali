.class public Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final MY_PERMISSIONS_REQUEST:I = 0x65

.field private static final WELCOME_TIME_OUT:I = 0xbb8


# instance fields
.field private dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoginBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field restRequest:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;

.field sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private createDirIfNotExists(Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is created!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already created!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private createDirectories()V
    .locals 1

    .line 151
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_IMAGE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_AUDIO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_VIDEO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DATABASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED_TEMP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY_TEMP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_BOOKMARK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS_TEMP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirIfNotExists(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->createDirectories()V

    .line 147
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->injectLoginBean()V

    return-void
.end method

.method private injectLoginBean()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - Injecting Login Bean Dao"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->loginBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LoginBean;

    sput-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 185
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->isTrainingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setLiveContextUrl()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setTrainingContextUrl()V

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - Login Bean Dao Is Injected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TeCHO - Login Bean Dao Is not Injected, Exception Occurs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - Login Bean Dao Is Not Injected, It Is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->setAdditionalData()V

    .line 200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->hideProcessDialog()V

    .line 201
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->switchToLoginActivity()V

    return-void
.end method

.method private setAdditionalData()V
    .locals 3

    .line 232
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - sewaService Is Injected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->initLabelBeanMap()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - Sewa Service Is Not Injected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    if-eqz v0, :cond_1

    .line 242
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->techoService:Lcom/argusoft/sewa/android/app/core/TechoService;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    if-eqz v0, :cond_2

    .line 246
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    if-eqz v0, :cond_3

    .line 249
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->restRequest:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;

    if-eqz v0, :cond_5

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xc0

    .line 256
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application-version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v1, :cond_4

    .line 258
    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userToken"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->restRequest:Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/restclient/impl/RestRequestImpl;->addFixedHeader(Ljava/util/Map;)V

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - restRequest Fixed Headers Added"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeCHO - restRequest Is Not Injected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public checkPermissions()V
    .locals 13

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const-string v5, "android.permission.RECORD_AUDIO"

    const-string v6, "android.permission.CALL_PHONE"

    const-string v7, "android.permission.READ_PHONE_STATE"

    const-string v8, "android.permission.VIBRATE"

    const-string v9, "android.permission.INTERNET"

    const-string v10, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    .line 101
    aget-object v5, v1, v4

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    new-array v1, v3, [Ljava/lang/String;

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x65

    .line 112
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->init()V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->requestWindowFeature(I)Z

    .line 75
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_welcome:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->setContentView(I)V

    .line 76
    sput-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->welcomeContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->checkPermissions()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 123
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 124
    aget v0, p3, p1

    if-eqz v0, :cond_0

    .line 126
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$1;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)V

    .line 134
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v4, "Please allow all the permissions for the application to run"

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 137
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->init()V

    return-void
.end method

.method public showDBUpgradeProcessDialog()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    const-string v1, "Upgrading database. Please wait, do not close the application."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    :cond_1
    return-void
.end method

.method public showDbDowngradeAlert()V
    .locals 7

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    .line 217
    :cond_0
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$2;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)V

    .line 225
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v4, "Can\'t downgrade database. Please make sure you have the latest application."

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->dialogForExit:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 228
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public switchToLoginActivity()V
    .locals 4

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
