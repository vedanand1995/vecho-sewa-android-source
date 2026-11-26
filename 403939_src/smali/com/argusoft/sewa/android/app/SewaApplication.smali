.class public Lcom/argusoft/sewa/android/app/SewaApplication;
.super Landroid/app/Application;
.source "SewaApplication.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 36
    const-string v0, "APPS_INSTALLED"

    const-string v1, "Configurations Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/SewaApplication;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    new-instance v0, Lcom/argusoft/sewa/android/app/SewaApplication$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/SewaApplication$1;-><init>(Lcom/argusoft/sewa/android/app/SewaApplication;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/SewaApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/SewaApplication;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public static firebaseAnalyticsInstance()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 33
    sget-object v0, Lcom/argusoft/sewa/android/app/SewaApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 59
    sget-object v0, Lcom/argusoft/sewa/android/app/SewaApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    const-string v0, "APPS_INSTALLED"

    const-string v1, "onCreate of Main"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setLiveContextUrl()V

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/SewaApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/SewaApplication;->context:Landroid/content/Context;

    .line 55
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/SewaApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 65
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    return-void
.end method
