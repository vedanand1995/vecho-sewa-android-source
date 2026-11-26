.class public final Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;
.super Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;
.source "FileUploadForegroundService_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;-><init>()V

    return-void
.end method

.method private init_()V
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    .line 25
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager_;->getInstance_(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->apiManager:Lcom/argusoft/sewa/android/app/restclient/impl/ApiManager;

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;
    .locals 1

    .line 20
    new-instance v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->init_()V

    .line 31
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService;->onCreate()V

    return-void
.end method
