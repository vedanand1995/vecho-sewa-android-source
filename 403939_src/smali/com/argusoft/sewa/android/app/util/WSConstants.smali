.class public Lcom/argusoft/sewa/android/app/util/WSConstants;
.super Ljava/lang/Object;
.source "WSConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/util/WSConstants$ApiCalls;
    }
.end annotation


# static fields
.field public static CONTEXT_URL_TECHO:Ljava/lang/String; = "https://techo.gujarat.gov.in/"

.field public static CONTEXT_URL_TECHO_LIVE:Ljava/lang/String; = "https://techo.gujarat.gov.in/"

.field public static CONTEXT_URL_TECHO_TRAINING:Ljava/lang/String; = "https://techotraining.gujarat.gov.in/"

.field public static REST_TECHO_NDHM_SERVICE_URL:Ljava/lang/String;

.field public static REST_TECHO_SERVICE_URL:Ljava/lang/String;

.field private static lastUrlTecho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/mobile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ndhm/healthid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_NDHM_SERVICE_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setAfterContextConfig()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/mobile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    return-void
.end method

.method public static setLastContextUrlStore()V
    .locals 1

    .line 47
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->lastUrlTecho:Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setAfterContextConfig()V

    return-void
.end method

.method public static setLiveContextUrl()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->storeLastContextUrl()V

    .line 29
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO_LIVE:Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setAfterContextConfig()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "********** Setting Live URL TeCHO :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WSConstants"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setTrainingContextUrl()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->storeLastContextUrl()V

    .line 36
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO_TRAINING:Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setAfterContextConfig()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "********** Setting Training URL TeCHO :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WSConstants"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static storeLastContextUrl()V
    .locals 1

    .line 42
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    sput-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->lastUrlTecho:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/WSConstants;->setAfterContextConfig()V

    return-void
.end method
