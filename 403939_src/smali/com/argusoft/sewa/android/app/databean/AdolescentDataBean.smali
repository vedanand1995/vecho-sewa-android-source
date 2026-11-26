.class public Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;
.super Ljava/lang/Object;
.source "AdolescentDataBean.java"


# instance fields
.field private absorbentMaterialUsed:Ljava/lang/String;

.field private additionalInfo:Ljava/lang/String;

.field private adolescentScreeningDate:Ljava/util/Date;

.field private albandazoleGivenInLastSixMonths:Ljava/lang/Boolean;

.field private anganwadiId:Ljava/lang/Long;

.field private areaId:Ljava/lang/String;

.field private caste:Ljava/lang/String;

.field private concatWs:Ljava/lang/String;

.field private counsellingDone:Ljava/lang/String;

.field private currentSchool:Ljava/lang/Long;

.field private currentStudyingStandard:Ljava/lang/Integer;

.field private dob:Ljava/util/Date;

.field private familyId:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private haemoglobin:Ljava/lang/Float;

.field private haemoglobinMeasured:Ljava/lang/Boolean;

.field private havingMenstrualProblem:Ljava/lang/Boolean;

.field private height:Ljava/lang/Float;

.field private ifaTabTakenLastMonth:Ljava/lang/Integer;

.field private ifaTabTakenNow:Ljava/lang/Integer;

.field private issueWithMenstruation:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private memberId:Ljava/lang/Long;

.field private middleName:Ljava/lang/String;

.field private noOfSanitaryPadsGiven:Ljava/lang/Integer;

.field private periodStarted:Ljava/lang/Boolean;

.field private religion:Ljava/lang/String;

.field private sanitaryPadGiven:Ljava/lang/Boolean;

.field private schoolActualId:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private tdInjectionDate:Ljava/util/Date;

.field private tdInjectionGiven:Ljava/lang/Boolean;

.field private uniqueHealthId:Ljava/lang/String;

.field private weight:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->uniqueHealthId:Ljava/lang/String;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->familyId:Ljava/lang/String;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->firstName:Ljava/lang/String;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->middleName:Ljava/lang/String;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->lastName:Ljava/lang/String;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->dob:Ljava/util/Date;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->gender:Ljava/lang/String;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->state:Ljava/lang/String;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->memberId:Ljava/lang/Long;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->counsellingDone:Ljava/lang/String;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->height:Ljava/lang/Float;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->weight:Ljava/lang/Float;

    move-object v1, p13

    .line 93
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobinMeasured:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->additionalInfo:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobin:Ljava/lang/Float;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenLastMonth:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 97
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenNow:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 98
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->periodStarted:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 99
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->absorbentMaterialUsed:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 100
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->sanitaryPadGiven:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    .line 101
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->noOfSanitaryPadsGiven:Ljava/lang/Integer;

    move-object/from16 v1, p22

    .line 102
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->havingMenstrualProblem:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 103
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->issueWithMenstruation:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 104
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionGiven:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    .line 105
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionDate:Ljava/util/Date;

    move-object/from16 v1, p26

    .line 106
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->albandazoleGivenInLastSixMonths:Ljava/lang/Boolean;

    move-object/from16 v1, p27

    .line 107
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->adolescentScreeningDate:Ljava/util/Date;

    move-object/from16 v1, p28

    .line 108
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentStudyingStandard:Ljava/lang/Integer;

    move-object/from16 v1, p29

    .line 109
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentSchool:Ljava/lang/Long;

    move-object/from16 v1, p30

    .line 110
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->caste:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 111
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->religion:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 112
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->anganwadiId:Ljava/lang/Long;

    move-object/from16 v1, p33

    .line 113
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->areaId:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 114
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->concatWs:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 115
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->schoolActualId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbsorbentMaterialUsed()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->absorbentMaterialUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAdolescentScreeningDate()Ljava/util/Date;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->adolescentScreeningDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAlbandazoleGivenInLastSixMonths()Ljava/lang/Boolean;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->albandazoleGivenInLastSixMonths:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAnganwadiId()Ljava/lang/Long;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->anganwadiId:Ljava/lang/Long;

    return-object v0
.end method

.method public getAreaId()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->areaId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaste()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->caste:Ljava/lang/String;

    return-object v0
.end method

.method public getConcatWs()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->concatWs:Ljava/lang/String;

    return-object v0
.end method

.method public getCounsellingDone()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->counsellingDone:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSchool()Ljava/lang/Long;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentSchool:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentStudyingStandard()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentStudyingStandard:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->dob:Ljava/util/Date;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHaemoglobin()Ljava/lang/Float;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobin:Ljava/lang/Float;

    return-object v0
.end method

.method public getHaemoglobinMeasured()Ljava/lang/Boolean;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobinMeasured:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHavingMenstrualProblem()Ljava/lang/Boolean;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->havingMenstrualProblem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Float;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->height:Ljava/lang/Float;

    return-object v0
.end method

.method public getIfaTabTakenLastMonth()Ljava/lang/Integer;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenLastMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIfaTabTakenNow()Ljava/lang/Integer;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenNow:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIssueWithMenstruation()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->issueWithMenstruation:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfSanitaryPadsGiven()Ljava/lang/Integer;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->noOfSanitaryPadsGiven:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPeriodStarted()Ljava/lang/Boolean;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->periodStarted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->religion:Ljava/lang/String;

    return-object v0
.end method

.method public getSanitaryPadGiven()Ljava/lang/Boolean;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->sanitaryPadGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSchoolActualId()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->schoolActualId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTdInjectionDate()Ljava/util/Date;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTdInjectionGiven()Ljava/lang/Boolean;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUniqueHealthId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->uniqueHealthId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Float;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->weight:Ljava/lang/Float;

    return-object v0
.end method

.method public setAbsorbentMaterialUsed(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->absorbentMaterialUsed:Ljava/lang/String;

    return-void
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public setAdolescentScreeningDate(Ljava/util/Date;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->adolescentScreeningDate:Ljava/util/Date;

    return-void
.end method

.method public setAlbandazoleGivenInLastSixMonths(Ljava/lang/Boolean;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->albandazoleGivenInLastSixMonths:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnganwadiId(Ljava/lang/Long;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->anganwadiId:Ljava/lang/Long;

    return-void
.end method

.method public setAreaId(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->areaId:Ljava/lang/String;

    return-void
.end method

.method public setCaste(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->caste:Ljava/lang/String;

    return-void
.end method

.method public setConcatWs(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->concatWs:Ljava/lang/String;

    return-void
.end method

.method public setCounsellingDone(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->counsellingDone:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSchool(Ljava/lang/Long;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentSchool:Ljava/lang/Long;

    return-void
.end method

.method public setCurrentStudyingStandard(Ljava/lang/Integer;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->currentStudyingStandard:Ljava/lang/Integer;

    return-void
.end method

.method public setDob(Ljava/util/Date;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->dob:Ljava/util/Date;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setHaemoglobin(Ljava/lang/Float;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobin:Ljava/lang/Float;

    return-void
.end method

.method public setHaemoglobinMeasured(Ljava/lang/Boolean;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->haemoglobinMeasured:Ljava/lang/Boolean;

    return-void
.end method

.method public setHavingMenstrualProblem(Ljava/lang/Boolean;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->havingMenstrualProblem:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeight(Ljava/lang/Float;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->height:Ljava/lang/Float;

    return-void
.end method

.method public setIfaTabTakenLastMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenLastMonth:Ljava/lang/Integer;

    return-void
.end method

.method public setIfaTabTakenNow(Ljava/lang/Integer;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->ifaTabTakenNow:Ljava/lang/Integer;

    return-void
.end method

.method public setIssueWithMenstruation(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->issueWithMenstruation:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->middleName:Ljava/lang/String;

    return-void
.end method

.method public setNoOfSanitaryPadsGiven(Ljava/lang/Integer;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->noOfSanitaryPadsGiven:Ljava/lang/Integer;

    return-void
.end method

.method public setPeriodStarted(Ljava/lang/Boolean;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->periodStarted:Ljava/lang/Boolean;

    return-void
.end method

.method public setReligion(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->religion:Ljava/lang/String;

    return-void
.end method

.method public setSanitaryPadGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->sanitaryPadGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setSchoolActualId(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->schoolActualId:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setTdInjectionDate(Ljava/util/Date;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionDate:Ljava/util/Date;

    return-void
.end method

.method public setTdInjectionGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->tdInjectionGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setUniqueHealthId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->uniqueHealthId:Ljava/lang/String;

    return-void
.end method

.method public setWeight(Ljava/lang/Float;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->weight:Ljava/lang/Float;

    return-void
.end method
