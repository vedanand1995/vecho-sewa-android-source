.class public Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;
.super Ljava/lang/Object;
.source "MigrationInDataBean.java"


# instance fields
.field private aadharMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aadharNumber:Ljava/lang/String;

.field private areaId:Ljava/lang/Long;

.field private bankAccountNumber:Ljava/lang/String;

.field private childrensUnder5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private dob:Ljava/lang/Long;

.field private familyId:Ljava/lang/Long;

.field private fhwOrAshaName:Ljava/lang/String;

.field private fhwOrAshaPhone:Ljava/lang/String;

.field private firstname:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private healthId:Ljava/lang/String;

.field private hofFullName:Ljava/lang/String;

.field private ifscCode:Ljava/lang/String;

.field private isPregnant:Ljava/lang/Boolean;

.field private lastName:Ljava/lang/String;

.field private lmp:Ljava/lang/Long;

.field private maaVatsalyaNumber:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private nearestLocId:Ljava/lang/Long;

.field private outOfState:Ljava/lang/Boolean;

.field private phoneNumber:Ljava/lang/String;

.field private reportedOn:Ljava/lang/Long;

.field private rsbyNumber:Ljava/lang/String;

.field private stayingWithFamily:Ljava/lang/Boolean;

.field private totalLiveChildren:Ljava/lang/Integer;

.field private villageId:Ljava/lang/Long;

.field private villageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAadharMap()Ljava/util/Map;
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

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->aadharMap:Ljava/util/Map;

    return-object v0
.end method

.method public getAadharNumber()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->aadharNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaId()Ljava/lang/Long;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->areaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBankAccountNumber()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->bankAccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrensUnder5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->childrensUnder5:Ljava/util/List;

    return-object v0
.end method

.method public getDob()Ljava/lang/Long;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->dob:Ljava/lang/Long;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Long;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->familyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFhwOrAshaName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->fhwOrAshaName:Ljava/lang/String;

    return-object v0
.end method

.method public getFhwOrAshaPhone()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->fhwOrAshaPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getHofFullName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->hofFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIfscCode()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->ifscCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLmp()Ljava/lang/Long;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->lmp:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaaVatsalyaNumber()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNearestLocId()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->nearestLocId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOutOfState()Ljava/lang/Boolean;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->outOfState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPregnant()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->isPregnant:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReportedOn()Ljava/lang/Long;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->reportedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getRsbyNumber()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->rsbyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStayingWithFamily()Ljava/lang/Boolean;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->stayingWithFamily:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTotalLiveChildren()Ljava/lang/Integer;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->totalLiveChildren:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVillageId()Ljava/lang/Long;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->villageId:Ljava/lang/Long;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->villageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAadharMap(Ljava/util/Map;)V
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

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->aadharMap:Ljava/util/Map;

    return-void
.end method

.method public setAadharNumber(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->aadharNumber:Ljava/lang/String;

    return-void
.end method

.method public setAreaId(Ljava/lang/Long;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->areaId:Ljava/lang/Long;

    return-void
.end method

.method public setBankAccountNumber(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->bankAccountNumber:Ljava/lang/String;

    return-void
.end method

.method public setChildrensUnder5(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->childrensUnder5:Ljava/util/List;

    return-void
.end method

.method public setDob(Ljava/lang/Long;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->dob:Ljava/lang/Long;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Long;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->familyId:Ljava/lang/Long;

    return-void
.end method

.method public setFhwOrAshaName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->fhwOrAshaName:Ljava/lang/String;

    return-void
.end method

.method public setFhwOrAshaPhone(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->fhwOrAshaPhone:Ljava/lang/String;

    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->firstname:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setHofFullName(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->hofFullName:Ljava/lang/String;

    return-void
.end method

.method public setIfscCode(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->ifscCode:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLmp(Ljava/lang/Long;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->lmp:Ljava/lang/Long;

    return-void
.end method

.method public setMaaVatsalyaNumber(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->middleName:Ljava/lang/String;

    return-void
.end method

.method public setNearestLocId(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->nearestLocId:Ljava/lang/Long;

    return-void
.end method

.method public setOutOfState(Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->outOfState:Ljava/lang/Boolean;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPregnant(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->isPregnant:Ljava/lang/Boolean;

    return-void
.end method

.method public setReportedOn(Ljava/lang/Long;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->reportedOn:Ljava/lang/Long;

    return-void
.end method

.method public setRsbyNumber(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->rsbyNumber:Ljava/lang/String;

    return-void
.end method

.method public setStayingWithFamily(Ljava/lang/Boolean;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->stayingWithFamily:Ljava/lang/Boolean;

    return-void
.end method

.method public setTotalLiveChildren(Ljava/lang/Integer;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->totalLiveChildren:Ljava/lang/Integer;

    return-void
.end method

.method public setVillageId(Ljava/lang/Long;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->villageId:Ljava/lang/Long;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;->villageName:Ljava/lang/String;

    return-void
.end method
