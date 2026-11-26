.class public Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;
.super Ljava/lang/Object;
.source "HealthIdProfileLoginVerifyResponse.java"


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;",
            ">;"
        }
    .end annotation
.end field

.field private authResult:Ljava/lang/String;

.field private expiresIn:Ljava/lang/Integer;

.field private message:Ljava/lang/String;

.field private refreshExpiresIn:Ljava/lang/Integer;

.field private refreshToken:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->txnId:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->message:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->authResult:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->token:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->expiresIn:Ljava/lang/Integer;

    .line 85
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->accounts:Ljava/util/List;

    .line 86
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshExpiresIn:Ljava/lang/Integer;

    .line 87
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public getAuthResult()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->authResult:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->expiresIn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshExpiresIn()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshExpiresIn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginAccount;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->accounts:Ljava/util/List;

    return-void
.end method

.method public setAuthResult(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->authResult:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->expiresIn:Ljava/lang/Integer;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setRefreshExpiresIn(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshExpiresIn:Ljava/lang/Integer;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdProfileLoginVerifyResponse;->txnId:Ljava/lang/String;

    return-void
.end method
