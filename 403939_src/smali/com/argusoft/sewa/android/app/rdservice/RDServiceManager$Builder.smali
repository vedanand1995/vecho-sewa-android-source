.class public Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;
.super Ljava/lang/Object;
.source "RDServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private _rdevent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

.field private mapBlacklistedRDDrivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapNewWhitelistedRDDrivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->_rdevent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapNewWhitelistedRDDrivers:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapBlacklistedRDDrivers:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->_rdevent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->_rdevent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Ljava/util/Map;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapNewWhitelistedRDDrivers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;)Ljava/util/Map;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapBlacklistedRDDrivers:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public blacklistRDDrivers(Ljava/util/Map;)Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapBlacklistedRDDrivers:Ljava/util/Map;

    return-object p0
.end method

.method public create()Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->_rdevent:Lcom/argusoft/sewa/android/app/rdservice/RDServiceEvents;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager;-><init>(Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$1;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "First set your Activity that implements RDServiceEvent by calling setRDServiceEventActivity()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelistRDDrivers(Ljava/util/Map;)Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/rdservice/RDServiceManager$Builder;->mapNewWhitelistedRDDrivers:Ljava/util/Map;

    return-object p0
.end method
