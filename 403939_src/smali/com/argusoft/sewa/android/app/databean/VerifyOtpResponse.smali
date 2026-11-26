.class public Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;
.super Ljava/lang/Object;
.source "VerifyOtpResponse.java"


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/Accounts;",
            ">;"
        }
    .end annotation
.end field

.field private authResult:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/Accounts;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public getAuthResult()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->authResult:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/Accounts;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->accounts:Ljava/util/List;

    return-void
.end method

.method public setAuthResult(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->authResult:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/VerifyOtpResponse;->txnId:Ljava/lang/String;

    return-void
.end method
