.class public Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;
.super Ljava/lang/Object;
.source "EnrollUsingAadhaar.java"


# instance fields
.field private healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

.field private txnId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    .line 25
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->txnId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHealthIdAccountProfileResponse()Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public setHealthIdAccountProfileResponse(Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->healthIdAccountProfileResponse:Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileResponse;

    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/EnrollUsingAadhaar;->txnId:Ljava/lang/String;

    return-void
.end method
