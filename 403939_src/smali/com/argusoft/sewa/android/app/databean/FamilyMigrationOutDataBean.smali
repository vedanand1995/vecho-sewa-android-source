.class public Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;
.super Ljava/lang/Object;
.source "FamilyMigrationOutDataBean.java"


# instance fields
.field private existingHeadSelected:Ljava/lang/Boolean;

.field private familyId:Ljava/lang/Long;

.field private fromLocationId:Ljava/lang/Long;

.field private isCurrentLocation:Ljava/lang/Boolean;

.field private isSplit:Ljava/lang/Boolean;

.field private locationKnown:Ljava/lang/Boolean;

.field private memberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private newHead:Ljava/lang/Long;

.field private otherInfo:Ljava/lang/String;

.field private outOfState:Ljava/lang/Boolean;

.field private relationWithHofMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reportedOn:Ljava/lang/Long;

.field private toLocationId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentLocation()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->isCurrentLocation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExistingHeadSelected()Ljava/lang/Boolean;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->existingHeadSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Long;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->familyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFromLocationId()Ljava/lang/Long;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->fromLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocationKnown()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->locationKnown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMemberIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->memberIds:Ljava/util/List;

    return-object v0
.end method

.method public getNewHead()Ljava/lang/Long;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->newHead:Ljava/lang/Long;

    return-object v0
.end method

.method public getOtherInfo()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->otherInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOfState()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->outOfState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRelationWithHofMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->relationWithHofMap:Ljava/util/Map;

    return-object v0
.end method

.method public getReportedOn()Ljava/lang/Long;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->reportedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getSplit()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->isSplit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getToLocationId()Ljava/lang/Long;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->toLocationId:Ljava/lang/Long;

    return-object v0
.end method

.method public setCurrentLocation(Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->isCurrentLocation:Ljava/lang/Boolean;

    return-void
.end method

.method public setExistingHeadSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->existingHeadSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->familyId:Ljava/lang/Long;

    return-void
.end method

.method public setFromLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->fromLocationId:Ljava/lang/Long;

    return-void
.end method

.method public setLocationKnown(Ljava/lang/Boolean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->locationKnown:Ljava/lang/Boolean;

    return-void
.end method

.method public setMemberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->memberIds:Ljava/util/List;

    return-void
.end method

.method public setNewHead(Ljava/lang/Long;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->newHead:Ljava/lang/Long;

    return-void
.end method

.method public setOtherInfo(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->otherInfo:Ljava/lang/String;

    return-void
.end method

.method public setOutOfState(Ljava/lang/Boolean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->outOfState:Ljava/lang/Boolean;

    return-void
.end method

.method public setRelationWithHofMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->relationWithHofMap:Ljava/util/Map;

    return-void
.end method

.method public setReportedOn(Ljava/lang/Long;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->reportedOn:Ljava/lang/Long;

    return-void
.end method

.method public setSplit(Ljava/lang/Boolean;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->isSplit:Ljava/lang/Boolean;

    return-void
.end method

.method public setToLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->toLocationId:Ljava/lang/Long;

    return-void
.end method
