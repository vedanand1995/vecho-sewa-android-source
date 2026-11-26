.class public Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;
.super Ljava/lang/Object;
.source "MigrationOutDataBean.java"


# instance fields
.field private childrensUnder5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fromFamilyId:Ljava/lang/Long;

.field private fromLocationId:Ljava/lang/Long;

.field private locationknown:Ljava/lang/Boolean;

.field private memberId:Ljava/lang/Long;

.field private otherInfo:Ljava/lang/String;

.field private outOfState:Ljava/lang/Boolean;

.field private reportedOn:Ljava/lang/Long;

.field private toLocationId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildrensUnder5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->childrensUnder5:Ljava/util/List;

    return-object v0
.end method

.method public getFromFamilyId()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->fromFamilyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFromLocationId()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->fromLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocationknown()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->locationknown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOtherInfo()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->otherInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOfState()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->outOfState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReportedOn()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->reportedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getToLocationId()Ljava/lang/Long;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->toLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public setChildrensUnder5(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->childrensUnder5:Ljava/util/List;

    return-void
.end method

.method public setFromFamilyId(Ljava/lang/Long;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->fromFamilyId:Ljava/lang/Long;

    return-void
.end method

.method public setFromLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->fromLocationId:Ljava/lang/Long;

    return-void
.end method

.method public setLocationknown(Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->locationknown:Ljava/lang/Boolean;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setOtherInfo(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->otherInfo:Ljava/lang/String;

    return-void
.end method

.method public setOutOfState(Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->outOfState:Ljava/lang/Boolean;

    return-void
.end method

.method public setReportedOn(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->reportedOn:Ljava/lang/Long;

    return-void
.end method

.method public setToLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->toLocationId:Ljava/lang/Long;

    return-void
.end method
