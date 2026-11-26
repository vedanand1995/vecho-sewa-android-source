.class public final Lcom/argusoft/sewa/android/app/service/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0x0L

.field private static final MIN_TIME_BW_UPDATES:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "GPSTracker"

.field private static isGPSEnabled:Ljava/lang/Boolean;

.field private static isNetworkEnabled:Ljava/lang/Boolean;

.field public static latitude:Ljava/lang/Double;

.field public static longitude:Ljava/lang/Double;


# instance fields
.field private alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    .line 34
    sput-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/service/GPSTracker;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private registerLocationManager()V
    .locals 9

    .line 42
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 43
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isGPSEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GPSTracker"

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isNetworkEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :try_start_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 60
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->stopUsingLocationUpdates()V

    :cond_2
    :goto_0
    return-void
.end method

.method private stopUsingLocationUpdates()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocation()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 74
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isNetworkEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isGPSEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sput-object v1, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    .line 85
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    :cond_2
    return-void
.end method

.method public isLocationProviderEnabled()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isGPSEnabled:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isNetworkEnabled:Ljava/lang/Boolean;

    .line 107
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isGPSEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->isNetworkEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->registerLocationManager()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_0
    sput-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showSettingsAlert(Landroid/content/Context;)V
    .locals 7

    .line 111
    new-instance v4, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;

    invoke-direct {v4, p0, p1}, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;-><init>(Lcom/argusoft/sewa/android/app/service/GPSTracker;Landroid/content/Context;)V

    .line 122
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v3, "Location Service is not enabled. Enable it for filling this form"

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 126
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
