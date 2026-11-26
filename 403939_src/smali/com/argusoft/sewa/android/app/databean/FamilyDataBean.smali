.class public Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
.super Ljava/lang/Object;
.source "FamilyDataBean.java"


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private anganwadiId:Ljava/lang/String;

.field private anganwadiUpdateFlag:Ljava/lang/Boolean;

.field private annualIncome:Ljava/lang/String;

.field private anyMemberCbacDone:Ljava/lang/Boolean;

.field private areaId:Ljava/lang/String;

.field private assignedTo:Ljava/lang/Long;

.field private bplCardNumber:Ljava/lang/String;

.field private bplFlag:Ljava/lang/Boolean;

.field private caste:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private contactPersonId:Ljava/lang/Long;

.field private createdBy:Ljava/lang/String;

.field private createdOn:Ljava/util/Date;

.field private drinkingWaterSource:Ljava/lang/String;

.field private electricityAvailability:Ljava/lang/String;

.field private familyId:Ljava/lang/String;

.field private filariaFilled:Ljava/lang/Boolean;

.field private fuelForCooking:Ljava/lang/String;

.field private headMemberName:Ljava/lang/String;

.field private houseNumber:Ljava/lang/String;

.field private houseOwnershipStatus:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isReverificationFlag:Ljava/lang/Boolean;

.field private isVerifiedFlag:Ljava/lang/Boolean;

.field private lastFhsDate:Ljava/lang/Long;

.field private lastFilariaDate:Ljava/lang/Long;

.field private lastIdsp2ScreeningDate:Ljava/lang/Long;

.field private lastIdspScreeningDate:Ljava/lang/Long;

.field private lastMemberNcdScreeningDate:Ljava/lang/Long;

.field private lcdc02Filled:Ljava/lang/Boolean;

.field private lcdcFilled:Ljava/lang/Boolean;

.field private locationId:Ljava/lang/String;

.field private maaVatsalyaNumber:Ljava/lang/String;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAbhaCount:I

.field private pvtgFlag:Ljava/lang/Boolean;

.field private rationCardNumber:Ljava/lang/String;

.field private religion:Ljava/lang/String;

.field private rsbyCardNumber:Ljava/lang/String;

.field private seasonalMigrantFlag:Ljava/lang/Boolean;

.field private state:Ljava/lang/String;

.field private toiletAvailableFlag:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private typeOfHouse:Ljava/lang/String;

.field private typeOfToilet:Ljava/lang/String;

.field private updatedBy:Ljava/lang/String;

.field private updatedOn:Ljava/util/Date;

.field private upgradedMaaToPmjay:Ljava/lang/Boolean;

.field private vehicleDetails:Ljava/lang/String;

.field private vulnerableFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/FamilyBean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getActualId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->id:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->familyId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseNumber:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLocationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->locationId:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAddress1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address1:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAddress2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address2:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->religion:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->caste:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pvtgFlag:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplFlag:Ljava/lang/Boolean;

    .line 136
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    .line 138
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getIsVerifiedFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->type:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->state:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getCreatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdBy:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getUpdatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedBy:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getCreatedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdOn:Ljava/util/Date;

    .line 144
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getUpdatedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedOn:Ljava/util/Date;

    .line 145
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAssignedTo()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->assignedTo:Ljava/lang/Long;

    .line 146
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getMaaVatsalyaNumber()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getRsbyCardNumber()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rsbyCardNumber:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getComment()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->comment:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vulnerableFlag:Ljava/lang/Boolean;

    .line 151
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    .line 152
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getReverificationFlag()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isReverificationFlag:Ljava/lang/Boolean;

    .line 153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAreaId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->areaId:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->contactPersonId:Ljava/lang/Long;

    .line 155
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAnganwadiUpdateFlag()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    .line 156
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAnyMemberCbacDone()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    .line 157
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLastFhsDate()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFhsDate:Ljava/lang/Long;

    .line 158
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLcdcFilled()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdcFilled:Ljava/lang/Boolean;

    .line 159
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLcdc02Filled()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdc02Filled:Ljava/lang/Boolean;

    .line 160
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFilariaFilled()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->filariaFilled:Ljava/lang/Boolean;

    .line 161
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLastFilariaDate()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFilariaDate:Ljava/lang/Long;

    .line 162
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLastMemberNcdScreeningDate()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    .line 163
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getRationCardNumber()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rationCardNumber:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getBplCardNumber()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplCardNumber:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLastIdspScreeningDate()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdspScreeningDate:Ljava/lang/Long;

    .line 166
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getLastIdsp2ScreeningDate()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    .line 167
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getTypeOfHouse()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfHouse:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getTypeOfToilet()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfToilet:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getElectricityAvailability()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->electricityAvailability:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getDrinkingWaterSource()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->drinkingWaterSource:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFuelForCooking()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->fuelForCooking:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getVehicleDetails()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vehicleDetails:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getHouseOwnershipStatus()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseOwnershipStatus:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getAnnualIncome()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->annualIncome:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getPendingAbhaCount()I

    move-result p2

    iput p2, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pendingAbhaCount:I

    .line 176
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnganwadiId()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiId:Ljava/lang/String;

    return-object v0
.end method

.method public getAnganwadiUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAnnualIncome()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->annualIncome:Ljava/lang/String;

    return-object v0
.end method

.method public getAnyMemberCbacDone()Ljava/lang/Boolean;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignedTo()Ljava/lang/Long;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->assignedTo:Ljava/lang/Long;

    return-object v0
.end method

.method public getBplCardNumber()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBplFlag()Ljava/lang/Boolean;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCaste()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->caste:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPersonId()Ljava/lang/Long;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->contactPersonId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getDrinkingWaterSource()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->drinkingWaterSource:Ljava/lang/String;

    return-object v0
.end method

.method public getElectricityAvailability()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->electricityAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilariaFilled()Ljava/lang/Boolean;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->filariaFilled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFuelForCooking()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->fuelForCooking:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadMemberName()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->headMemberName:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseNumber()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseOwnershipStatus()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseOwnershipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVerifiedFlag()Ljava/lang/Boolean;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastFhsDate()Ljava/lang/Long;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFhsDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastFilariaDate()Ljava/lang/Long;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFilariaDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastIdsp2ScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastIdspScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdspScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastMemberNcdScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLcdc02Filled()Ljava/lang/Boolean;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdc02Filled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLcdcFilled()Ljava/lang/Boolean;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdcFilled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaaVatsalyaNumber()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    return-object v0
.end method

.method public getPendingAbhaCount()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pendingAbhaCount:I

    return v0
.end method

.method public getPvtgFlag()Ljava/lang/Boolean;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pvtgFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRationCardNumber()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rationCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->religion:Ljava/lang/String;

    return-object v0
.end method

.method public getReverificationFlag()Ljava/lang/Boolean;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isReverificationFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRsbyCardNumber()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rsbyCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonalMigrantFlag()Ljava/lang/Boolean;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getToiletAvailableFlag()Ljava/lang/Boolean;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeOfHouse()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfHouse:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeOfToilet()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfToilet:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Ljava/util/Date;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getUpgradedMaaToPmjay()Ljava/lang/Boolean;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVehicleDetails()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vehicleDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiedFlag()Ljava/lang/Boolean;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVulnerableFlag()Ljava/lang/Boolean;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vulnerableFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address1:Ljava/lang/String;

    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address2:Ljava/lang/String;

    return-void
.end method

.method public setAnganwadiId(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiId:Ljava/lang/String;

    return-void
.end method

.method public setAnganwadiUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnnualIncome(Ljava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->annualIncome:Ljava/lang/String;

    return-void
.end method

.method public setAnyMemberCbacDone(Ljava/lang/Boolean;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    return-void
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->areaId:Ljava/lang/String;

    return-void
.end method

.method public setAssignedTo(Ljava/lang/Long;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->assignedTo:Ljava/lang/Long;

    return-void
.end method

.method public setBplCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setBplFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setCaste(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->caste:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setContactPersonId(Ljava/lang/Long;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->contactPersonId:Ljava/lang/Long;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setDrinkingWaterSource(Ljava/lang/String;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->drinkingWaterSource:Ljava/lang/String;

    return-void
.end method

.method public setElectricityAvailability(Ljava/lang/String;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->electricityAvailability:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setFilariaFilled(Ljava/lang/Boolean;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->filariaFilled:Ljava/lang/Boolean;

    return-void
.end method

.method public setFuelForCooking(Ljava/lang/String;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->fuelForCooking:Ljava/lang/String;

    return-void
.end method

.method public setHeadMemberName(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->headMemberName:Ljava/lang/String;

    return-void
.end method

.method public setHouseNumber(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseNumber:Ljava/lang/String;

    return-void
.end method

.method public setHouseOwnershipStatus(Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseOwnershipStatus:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsVerifiedFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastFhsDate(Ljava/lang/Long;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFhsDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastFilariaDate(Ljava/lang/Long;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFilariaDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastIdsp2ScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastIdspScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdspScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastMemberNcdScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLcdc02Filled(Ljava/lang/Boolean;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdc02Filled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLcdcFilled(Ljava/lang/Boolean;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lcdcFilled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->locationId:Ljava/lang/String;

    return-void
.end method

.method public setMaaVatsalyaNumber(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    return-void
.end method

.method public setPendingAbhaCount(I)V
    .locals 0

    .line 559
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pendingAbhaCount:I

    return-void
.end method

.method public setPvtgFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pvtgFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setRationCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rationCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setReligion(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->religion:Ljava/lang/String;

    return-void
.end method

.method public setReverificationFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isReverificationFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setRsbyCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rsbyCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setSeasonalMigrantFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setToiletAvailableFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setTypeOfHouse(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfHouse:Ljava/lang/String;

    return-void
.end method

.method public setTypeOfToilet(Ljava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->typeOfToilet:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedOn(Ljava/util/Date;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedOn:Ljava/util/Date;

    return-void
.end method

.method public setUpgradedMaaToPmjay(Ljava/lang/Boolean;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    return-void
.end method

.method public setVehicleDetails(Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vehicleDetails:Ljava/lang/String;

    return-void
.end method

.method public setVerifiedFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setVulnerableFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vulnerableFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FamilyDataBean{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', familyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', houseNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->houseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', locationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->locationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', address1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', address2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->address2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', religion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->religion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', caste=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->caste:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bplFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anganwadiId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', toiletAvailableFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVerifiedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isVerifiedFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', createdBy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', updatedBy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', createdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->createdOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->updatedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assignedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->assignedTo:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maaVatsalyaNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->maaVatsalyaNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rsbyCardNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rsbyCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', comment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', vulnerableFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->vulnerableFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonalMigrantFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReverificationFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->isReverificationFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headMemberName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->headMemberName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', areaId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->areaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', contactPersonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->contactPersonId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anganwadiUpdateFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anyMemberCbacDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastFhsDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastFhsDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMemberNcdScreeningDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rationCardNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->rationCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bplCardNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->bplCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastIdspScreeningDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdspScreeningDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastIdsp2ScreeningDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingAbhacount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->pendingAbhaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
