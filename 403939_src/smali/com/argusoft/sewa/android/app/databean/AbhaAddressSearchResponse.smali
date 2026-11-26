.class public Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;
.super Ljava/lang/Object;
.source "AbhaAddressSearchResponse.java"


# instance fields
.field private abhaAddress:Ljava/lang/String;

.field private authMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blockedAuthMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fullName:Ljava/lang/String;

.field private healthIdNumber:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->healthIdNumber:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->mobile:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->fullName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->message:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->status:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->blockedAuthMethods:Ljava/util/List;

    .line 86
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->authMethods:Ljava/util/List;

    .line 87
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->abhaAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbhaAddress()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->abhaAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->authMethods:Ljava/util/List;

    return-object v0
.end method

.method public getBlockedAuthMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->blockedAuthMethods:Ljava/util/List;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthIdNumber()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->healthIdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAbhaAddress(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->abhaAddress:Ljava/lang/String;

    return-void
.end method

.method public setAuthMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->authMethods:Ljava/util/List;

    return-void
.end method

.method public setBlockedAuthMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->blockedAuthMethods:Ljava/util/List;

    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->fullName:Ljava/lang/String;

    return-void
.end method

.method public setHealthIdNumber(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->healthIdNumber:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaAddressSearchResponse;->status:Ljava/lang/String;

    return-void
.end method
