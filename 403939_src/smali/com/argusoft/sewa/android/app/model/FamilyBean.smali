.class public Lcom/argusoft/sewa/android/app/model/FamilyBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "FamilyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private address1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private address2:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private anganwadiId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private anganwadiUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private annualIncome:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private anyMemberCbacDone:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private areaId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private assignedTo:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bplCardNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bplFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private caste:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactPersonId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private createdBy:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private createdOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private drinkingWaterSource:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private electricityAvailability:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private familyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private filariaFilled:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fuelForCooking:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private houseNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private houseOwnershipStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isReverificationFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isVerifiedFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastFhsDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastFilariaDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastIdsp2ScreeningDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastIdspScreeningDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastMemberNcdScreeningDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lcdc02Filled:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lcdcFilled:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        indexName = "family_bean_state_location_id_idx"
    .end annotation
.end field

.field private maaVatsalyaNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pendingAbhaCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pvtgFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rationCardNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private religion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rsbyCardNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private seasonalMigrantFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        indexName = "family_bean_state_location_id_idx"
    .end annotation
.end field

.field private toiletAvailableFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private typeOfHouse:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private typeOfToilet:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private updatedBy:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private updatedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private upgradedMaaToPmjay:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vehicleDetails:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vulnerableFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->actualId:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->familyId:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHouseNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseNumber:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->locationId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address1:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address2:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->religion:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->caste:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pvtgFlag:Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplFlag:Ljava/lang/Boolean;

    .line 184
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiId:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    .line 186
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getIsVerifiedFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    .line 187
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->type:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->state:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCreatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdBy:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpdatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedBy:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCreatedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdOn:Ljava/util/Date;

    .line 192
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpdatedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedOn:Ljava/util/Date;

    .line 193
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAssignedTo()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->assignedTo:Ljava/lang/Long;

    .line 194
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMaaVatsalyaNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->maaVatsalyaNumber:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRsbyCardNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rsbyCardNumber:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->comment:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vulnerableFlag:Ljava/lang/Boolean;

    .line 198
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReverificationFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isReverificationFlag:Ljava/lang/Boolean;

    .line 200
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->areaId:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getContactPersonId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->contactPersonId:Ljava/lang/Long;

    .line 202
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    .line 203
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnyMemberCbacDone()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    .line 204
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFhsDate()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFhsDate:Ljava/lang/Long;

    .line 205
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastMemberNcdScreeningDate()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    .line 206
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRationCardNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rationCardNumber:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplCardNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplCardNumber:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastIdspScreeningDate()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdspScreeningDate:Ljava/lang/Long;

    .line 209
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastIdsp2ScreeningDate()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    .line 210
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfHouse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfHouse:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getTypeOfToilet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfToilet:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getElectricityAvailability()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->electricityAvailability:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getDrinkingWaterSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->drinkingWaterSource:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFuelForCooking()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->fuelForCooking:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVehicleDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vehicleDetails:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHouseOwnershipStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseOwnershipStatus:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnnualIncome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->annualIncome:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPendingAbhaCount()I

    move-result v0

    iput v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pendingAbhaCount:I

    .line 219
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    .line 220
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLcdcFilled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdcFilled:Ljava/lang/Boolean;

    .line 221
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFilariaFilled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->filariaFilled:Ljava/lang/Boolean;

    .line 222
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFilariaDate()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFilariaDate:Ljava/lang/Long;

    .line 223
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLcdc02Filled()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdc02Filled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 645
    :cond_1
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v1, :cond_2

    .line 646
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 647
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 650
    :cond_2
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    if-eqz v1, :cond_3

    .line 651
    check-cast p1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 652
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public getActualId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->actualId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnganwadiId()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiId:Ljava/lang/String;

    return-object v0
.end method

.method public getAnganwadiUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAnnualIncome()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->annualIncome:Ljava/lang/String;

    return-object v0
.end method

.method public getAnyMemberCbacDone()Ljava/lang/Boolean;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignedTo()Ljava/lang/Long;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->assignedTo:Ljava/lang/Long;

    return-object v0
.end method

.method public getBplCardNumber()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBplFlag()Ljava/lang/Boolean;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCaste()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->caste:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPersonId()Ljava/lang/Long;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->contactPersonId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getDrinkingWaterSource()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->drinkingWaterSource:Ljava/lang/String;

    return-object v0
.end method

.method public getElectricityAvailability()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->electricityAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilariaFilled()Ljava/lang/Boolean;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->filariaFilled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFuelForCooking()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->fuelForCooking:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseNumber()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseOwnershipStatus()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseOwnershipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsVerifiedFlag()Ljava/lang/Boolean;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastFhsDate()Ljava/lang/Long;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFhsDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastFilariaDate()Ljava/lang/Long;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFilariaDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastIdsp2ScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastIdspScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdspScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastMemberNcdScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLcdc02Filled()Ljava/lang/Boolean;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdc02Filled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLcdcFilled()Ljava/lang/Boolean;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdcFilled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaaVatsalyaNumber()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingAbhaCount()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pendingAbhaCount:I

    return v0
.end method

.method public getPvtgFlag()Ljava/lang/Boolean;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pvtgFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRationCardNumber()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rationCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->religion:Ljava/lang/String;

    return-object v0
.end method

.method public getReverificationFlag()Ljava/lang/Boolean;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isReverificationFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRsbyCardNumber()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rsbyCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonalMigrantFlag()Ljava/lang/Boolean;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getToiletAvailableFlag()Ljava/lang/Boolean;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeOfHouse()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfHouse:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeOfToilet()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfToilet:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Ljava/util/Date;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getUpgradedMaaToPmjay()Ljava/lang/Boolean;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVehicleDetails()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vehicleDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiedFlag()Ljava/lang/Boolean;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVulnerableFlag()Ljava/lang/Boolean;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vulnerableFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->actualId:Ljava/lang/String;

    return-void
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address1:Ljava/lang/String;

    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address2:Ljava/lang/String;

    return-void
.end method

.method public setAnganwadiId(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiId:Ljava/lang/String;

    return-void
.end method

.method public setAnganwadiUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnnualIncome(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->annualIncome:Ljava/lang/String;

    return-void
.end method

.method public setAnyMemberCbacDone(Ljava/lang/Boolean;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anyMemberCbacDone:Ljava/lang/Boolean;

    return-void
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->areaId:Ljava/lang/String;

    return-void
.end method

.method public setAssignedTo(Ljava/lang/Long;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->assignedTo:Ljava/lang/Long;

    return-void
.end method

.method public setBplCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setBplFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setCaste(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->caste:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setContactPersonId(Ljava/lang/Long;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->contactPersonId:Ljava/lang/Long;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setDrinkingWaterSource(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->drinkingWaterSource:Ljava/lang/String;

    return-void
.end method

.method public setElectricityAvailability(Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->electricityAvailability:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setFilariaFilled(Ljava/lang/Boolean;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->filariaFilled:Ljava/lang/Boolean;

    return-void
.end method

.method public setFuelForCooking(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->fuelForCooking:Ljava/lang/String;

    return-void
.end method

.method public setHouseNumber(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseNumber:Ljava/lang/String;

    return-void
.end method

.method public setHouseOwnershipStatus(Ljava/lang/String;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseOwnershipStatus:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIsVerifiedFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastFhsDate(Ljava/lang/Long;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFhsDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastFilariaDate(Ljava/lang/Long;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastFilariaDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastIdsp2ScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdsp2ScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastIdspScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastIdspScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastMemberNcdScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lastMemberNcdScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setLcdc02Filled(Ljava/lang/Boolean;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdc02Filled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLcdcFilled(Ljava/lang/Boolean;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->lcdcFilled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->locationId:Ljava/lang/String;

    return-void
.end method

.method public setMaaVatsalyaNumber(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->maaVatsalyaNumber:Ljava/lang/String;

    return-void
.end method

.method public setPendingAbhaCount(I)V
    .locals 0

    .line 597
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pendingAbhaCount:I

    return-void
.end method

.method public setPvtgFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pvtgFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setRationCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rationCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setReligion(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->religion:Ljava/lang/String;

    return-void
.end method

.method public setReverificationFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isReverificationFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setRsbyCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->rsbyCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setSeasonalMigrantFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->seasonalMigrantFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setToiletAvailableFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setTypeOfHouse(Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfHouse:Ljava/lang/String;

    return-void
.end method

.method public setTypeOfToilet(Ljava/lang/String;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->typeOfToilet:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedOn(Ljava/util/Date;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedOn:Ljava/util/Date;

    return-void
.end method

.method public setUpgradedMaaToPmjay(Ljava/lang/Boolean;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->upgradedMaaToPmjay:Ljava/lang/Boolean;

    return-void
.end method

.method public setVehicleDetails(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vehicleDetails:Ljava/lang/String;

    return-void
.end method

.method public setVerifiedFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setVulnerableFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->vulnerableFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FamilyBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->actualId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", familyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", houseNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->houseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->locationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->address2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", religion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->religion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caste="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->caste:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bplFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->bplFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anganwadiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->anganwadiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toiletAvailableFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->toiletAvailableFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVerifiedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->isVerifiedFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->createdOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->updatedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assignedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->assignedTo:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingAbhacount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/FamilyBean;->pendingAbhaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
