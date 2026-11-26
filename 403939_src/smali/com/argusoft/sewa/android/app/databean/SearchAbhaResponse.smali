.class public Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;
.super Ljava/lang/Object;
.source "SearchAbhaResponse.java"


# instance fields
.field private ABHA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;",
            ">;"
        }
    .end annotation
.end field

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getABHA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->ABHA:Ljava/util/List;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setABHA(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SearchABHADetails;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->ABHA:Ljava/util/List;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/SearchAbhaResponse;->txnId:Ljava/lang/String;

    return-void
.end method
