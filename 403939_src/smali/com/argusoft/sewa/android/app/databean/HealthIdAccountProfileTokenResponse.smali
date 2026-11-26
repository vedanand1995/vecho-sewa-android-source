.class public Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;
.super Ljava/lang/Object;
.source "HealthIdAccountProfileTokenResponse.java"


# instance fields
.field private expiresIn:Ljava/lang/String;

.field private refreshExpiresIn:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->expiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshExpiresIn()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->refreshExpiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->expiresIn:Ljava/lang/String;

    return-void
.end method

.method public setRefreshExpiresIn(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->refreshExpiresIn:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdAccountProfileTokenResponse;->token:Ljava/lang/String;

    return-void
.end method
