.class public Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;
.super Ljava/lang/Object;
.source "MobileVerificationResponse.java"


# instance fields
.field mobileLinkedHid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MobileLinkedHidResponse;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileLinkedHid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MobileLinkedHidResponse;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->mobileLinkedHid:Ljava/util/List;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setMobileLinkedHid(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MobileLinkedHidResponse;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->mobileLinkedHid:Ljava/util/List;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MobileVerificationResponse;->txnId:Ljava/lang/String;

    return-void
.end method
