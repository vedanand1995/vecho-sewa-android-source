.class public Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;
.super Ljava/lang/Object;
.source "HealthIdSearchResponse.java"


# instance fields
.field private authMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private healthId:Ljava/lang/String;

.field private healthIdNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tags:Lcom/argusoft/sewa/android/app/databean/HealthIdTags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 14
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->authMethods:Ljava/util/List;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthIdNumber()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->healthIdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Lcom/argusoft/sewa/android/app/databean/HealthIdTags;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->tags:Lcom/argusoft/sewa/android/app/databean/HealthIdTags;

    return-object v0
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

    .line 18
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->authMethods:Ljava/util/List;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setHealthIdNumber(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->healthIdNumber:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public setTags(Lcom/argusoft/sewa/android/app/databean/HealthIdTags;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/HealthIdSearchResponse;->tags:Lcom/argusoft/sewa/android/app/databean/HealthIdTags;

    return-void
.end method
