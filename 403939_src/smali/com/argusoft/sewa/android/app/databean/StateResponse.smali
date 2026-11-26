.class public Lcom/argusoft/sewa/android/app/databean/StateResponse;
.super Ljava/lang/Object;
.source "StateResponse.java"


# instance fields
.field private code:Ljava/lang/String;

.field private districts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/StateResponseDistrict;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDistricts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/StateResponseDistrict;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->districts:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setDistricts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/StateResponseDistrict;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->districts:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/StateResponse;->name:Ljava/lang/String;

    return-void
.end method
