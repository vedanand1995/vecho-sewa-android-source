.class public Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;
.super Ljava/lang/Object;
.source "RDServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;
    }
.end annotation


# static fields
.field private static final RC_RDSERVICE_CAPTURE_START_INDEX:I = 0x206c

.field private static final RC_RDSERVICE_DISCOVER_START_INDEX:I = 0x2134

.field private static final TAG:Ljava/lang/String; = "RDServiceManager"

.field private static final mapRDCaptureRC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapRDDiscoverRC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapRDDriverBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapRDDriverRCIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapRDDriverWhitelist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverRCIndex:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDiscoverRC:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDCaptureRC:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverWhitelist:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverBlacklist:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->access$000(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    .line 57
    sget-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverWhitelist:Ljava/util/Map;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->access$100(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    sget-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverBlacklist:Ljava/util/Map;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->access$200(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;-><init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)V

    return-void
.end method

.method private getRDServiceCaptureRC(I)I
    .locals 0

    add-int/lit16 p1, p1, 0x206c

    return p1
.end method

.method private getRDServiceDiscoverRC(I)I
    .locals 0

    add-int/lit16 p1, p1, 0x2134

    return p1
.end method

.method private onRDServiceCaptureIntentResponse(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    const-string v1, "PID_DATA"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceCaptureResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onRDServiceCaptureIntentResponse: Capture Info: \n\n PID-DATA = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    \n\nDeviceNotConnected = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DNC"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RDServiceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onRDServiceInfoResponse(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRDServiceInfoResponse: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "RD_SERVICE_INFO"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " //// "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RDServiceManager"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverWhitelist:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, p2, v5}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onRDServiceInfoResponse: Device Info: \n\n Device = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DEVICE_INFO"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    \n\nRDService = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public captureRdService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 200
    sget-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverRCIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RDServiceManager"

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->getRDServiceCaptureRC(I)I

    move-result v1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RDSERVICE BEFORE CAPTURE: pid_options: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v2, "in.gov.uidai.rdservice.fp.CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string p1, "PID_OPTIONS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    const/4 v0, 0x0

    const-string v1, "Package not found or not whitelisted"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v0, p1, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RDSERVICE CAPTURE ERROR: package not found or not whitelisted: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public discoverRdService()V
    .locals 14

    .line 141
    const-string v0, " ~ "

    new-instance v1, Landroid/content/Intent;

    const-string v2, "in.gov.uidai.rdservice.fp.INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverNotFound()V

    return-void

    .line 151
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 152
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 154
    sget-object v6, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverBlacklist:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 157
    :try_start_0
    sget-object v6, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDriverRCIndex:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0, v8}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->getRDServiceDiscoverRC(I)I

    move-result v9

    .line 162
    sget-object v10, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDiscoverRC:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0, v8}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->getRDServiceCaptureRC(I)I

    move-result v11

    .line 166
    sget-object v12, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDCaptureRC:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12, v11, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    const-string v11, "RDServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RD SERVICE Package Found: ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ~~ "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 175
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v4, v7, v5, v6}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    const-string v8, "Package not whitelisted"

    invoke-interface {v6, v4, v7, v5, v8}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0xa

    if-le v3, v5, :cond_1

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ~~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDDiscoverRC:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RDServiceManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-ne p2, v2, :cond_0

    .line 122
    invoke-direct {p0, p3, p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->onRDServiceInfoResponse(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    const-string v1, ""

    invoke-interface {v0, p2, p3, p1, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceDriverDiscoveryFailed(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mapRDCaptureRC:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-ne p2, v2, :cond_2

    .line 129
    invoke-direct {p0, p3, p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->onRDServiceCaptureIntentResponse(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;->mRDEvent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    invoke-interface {v0, p2, p3, p1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;->onRDServiceCaptureFailed(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
