.class public Lcom/argusoft/sewa/android/app/model/UserBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "UserBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private State:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private aadharNumberEncrypted:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private activationDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private address:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private convoxId:Ljava/lang/String;
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

.field private dob:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private emailId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private freeSpaceMb:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private imeiNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private infrastructureId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private latitude:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private loginCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private longitude:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberMasterId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private middleName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfAttempts:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pincode:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private preferedLanguage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rchInstitutionMasterId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private reportedPreferredLanguage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private roleId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sdkVersion:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private searchText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private serverType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private techoPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
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

.field private userId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    move-object v0, p0

    .line 134
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    move v1, p1

    .line 135
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->userId:I

    move-object v1, p2

    .line 136
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->code:Ljava/lang/String;

    move-object v1, p3

    .line 137
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->contactNumber:Ljava/lang/String;

    move-object v1, p4

    .line 138
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->dob:Ljava/util/Date;

    move-object v1, p5

    .line 139
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->emailId:Ljava/lang/String;

    move-object v1, p6

    .line 140
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->firstName:Ljava/lang/String;

    move-object v1, p7

    .line 141
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->gender:Ljava/lang/String;

    move-object v1, p8

    .line 142
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->lastName:Ljava/lang/String;

    move-object v1, p9

    .line 143
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->middleName:Ljava/lang/String;

    move-object v1, p10

    .line 144
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->password:Ljava/lang/String;

    move-object v1, p11

    .line 145
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->preferedLanguage:Ljava/lang/String;

    move v1, p12

    .line 146
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->roleId:I

    move-object v1, p13

    .line 147
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->State:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 148
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->userName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 149
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->serverType:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 150
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->searchText:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 151
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->title:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 152
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->imeiNumber:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 153
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->techoPhoneNumber:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 154
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->aadharNumberEncrypted:Ljava/lang/String;

    move/from16 v1, p21

    .line 155
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->noOfAttempts:I

    move/from16 v1, p22

    .line 156
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->rchInstitutionMasterId:I

    move/from16 v1, p23

    .line 157
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->infrastructureId:I

    move/from16 v1, p24

    .line 158
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->sdkVersion:I

    move/from16 v1, p25

    .line 159
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->freeSpaceMb:I

    move-object/from16 v1, p26

    .line 160
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->latitude:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 161
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->longitude:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 162
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->reportedPreferredLanguage:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 163
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->loginCode:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 164
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->convoxId:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 165
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->activationDate:Ljava/util/Date;

    move/from16 v1, p32

    .line 166
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->memberMasterId:I

    move/from16 v1, p34

    .line 167
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->locationId:I

    move/from16 v1, p35

    .line 168
    iput v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->pincode:I

    move-object/from16 v1, p36

    .line 169
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->pin:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 170
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->address:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 171
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdBy:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 172
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedBy:Ljava/lang/String;

    move-object/from16 v1, p40

    .line 173
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdOn:Ljava/util/Date;

    move-object/from16 v1, p41

    .line 174
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedOn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getAadharNumberEncrypted()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->aadharNumberEncrypted:Ljava/lang/String;

    return-object v0
.end method

.method public getActivationDate()Ljava/util/Date;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->activationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->contactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConvoxId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->convoxId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->dob:Ljava/util/Date;

    return-object v0
.end method

.method public getEmailId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpaceMb()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->freeSpaceMb:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->userId:I

    return v0
.end method

.method public getImeiNumber()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->imeiNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getInfrastructureId()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->infrastructureId:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->locationId:I

    return v0
.end method

.method public getLoginCode()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->loginCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberMasterId()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->memberMasterId:I

    return v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfAttempts()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->noOfAttempts:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPincode()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->pincode:I

    return v0
.end method

.method public getPreferedLanguage()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->preferedLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getRchInstitutionMasterId()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->rchInstitutionMasterId:I

    return v0
.end method

.method public getReportedPreferredLanguage()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->reportedPreferredLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->roleId:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 362
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->sdkVersion:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getServerType()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->serverType:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->State:Ljava/lang/String;

    return-object v0
.end method

.method public getTechoPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->techoPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Ljava/util/Date;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAadharNumberEncrypted(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->aadharNumberEncrypted:Ljava/lang/String;

    return-void
.end method

.method public setActivationDate(Ljava/util/Date;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->activationDate:Ljava/util/Date;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->contactNumber:Ljava/lang/String;

    return-void
.end method

.method public setConvoxId(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->convoxId:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setDob(Ljava/util/Date;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->dob:Ljava/util/Date;

    return-void
.end method

.method public setEmailId(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->emailId:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFreeSpaceMb(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->freeSpaceMb:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->userId:I

    return-void
.end method

.method public setImeiNumber(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->imeiNumber:Ljava/lang/String;

    return-void
.end method

.method public setInfrastructureId(I)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->infrastructureId:I

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocationId(I)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->locationId:I

    return-void
.end method

.method public setLoginCode(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->loginCode:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setMemberMasterId(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->memberMasterId:I

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->middleName:Ljava/lang/String;

    return-void
.end method

.method public setNoOfAttempts(I)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->noOfAttempts:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->pin:Ljava/lang/String;

    return-void
.end method

.method public setPincode(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->pincode:I

    return-void
.end method

.method public setPreferedLanguage(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->preferedLanguage:Ljava/lang/String;

    return-void
.end method

.method public setRchInstitutionMasterId(I)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->rchInstitutionMasterId:I

    return-void
.end method

.method public setReportedPreferredLanguage(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->reportedPreferredLanguage:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->roleId:I

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->sdkVersion:I

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->searchText:Ljava/lang/String;

    return-void
.end method

.method public setServerType(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->serverType:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->State:Ljava/lang/String;

    return-void
.end method

.method public setTechoPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->techoPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedOn(Ljava/util/Date;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->updatedOn:Ljava/util/Date;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/UserBean;->userName:Ljava/lang/String;

    return-void
.end method
