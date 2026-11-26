.class public Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;
.super Ljava/lang/Object;
.source "HealthIdConfirmBioRequest.java"


# instance fields
.field private authType:Ljava/lang/String;

.field private bioType:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getBioType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->bioType:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->authType:Ljava/lang/String;

    return-void
.end method

.method public setBioType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->bioType:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->pid:Ljava/lang/String;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdConfirmBioRequest;->txnId:Ljava/lang/String;

    return-void
.end method
