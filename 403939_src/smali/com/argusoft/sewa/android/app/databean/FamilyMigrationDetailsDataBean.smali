.class public Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;
.super Ljava/lang/Object;
.source "FamilyMigrationDetailsDataBean.java"


# instance fields
.field private areaDetails:Ljava/lang/String;

.field private familyId:Ljava/lang/Long;

.field private familyIdString:Ljava/lang/String;

.field private fhwDetails:Ljava/lang/String;

.field private locationDetails:Ljava/lang/String;

.field private memberDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private migrationId:Ljava/lang/Long;

.field private otherInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaDetails()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->areaDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Long;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->familyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFamilyIdString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->familyIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getFhwDetails()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->fhwDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDetails()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->locationDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->memberDetails:Ljava/util/List;

    return-object v0
.end method

.method public getMigrationId()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->migrationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOtherInfo()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->otherInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaDetails(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->areaDetails:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Long;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->familyId:Ljava/lang/Long;

    return-void
.end method

.method public setFamilyIdString(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->familyIdString:Ljava/lang/String;

    return-void
.end method

.method public setFhwDetails(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->fhwDetails:Ljava/lang/String;

    return-void
.end method

.method public setLocationDetails(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->locationDetails:Ljava/lang/String;

    return-void
.end method

.method public setMemberDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->memberDetails:Ljava/util/List;

    return-void
.end method

.method public setMigrationId(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->migrationId:Ljava/lang/Long;

    return-void
.end method

.method public setOtherInfo(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;->otherInfo:Ljava/lang/String;

    return-void
.end method
