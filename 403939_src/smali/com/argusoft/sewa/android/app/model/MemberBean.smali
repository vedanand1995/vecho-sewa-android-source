.class public Lcom/argusoft/sewa/android/app/model/MemberBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "MemberBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private aadharNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private abortionCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private accountNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private actualId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private additionalInfo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private adolescentScreeningDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ancVisitDates:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private birthWeight:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private bloodGroup:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private breastYear:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private brnNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cbacDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cervicalYear:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private childNrcCmtcStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private chiranjeeviYojnaBeneficiary:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private chronicDiseaseIds:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private complementaryFeedingStarted:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private congenitalAnomalyIds:Ljava/lang/String;
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

.field private curPregRegDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private curPregRegDetId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentDiseaseIds:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentFamilyPlanningMethod:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentGravida:Ljava/lang/Short;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentPara:Ljava/lang/Short;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dateOfWedding:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private deliveryCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private diabetesYear:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dob:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private edd:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private educationStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private elderlyCareScreeningDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private eyeIssueIds:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private familyHeadFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private familyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private familyPlanningMethod:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fhsrPhoneVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filariaSideEffectsSubmitted:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filariaSuspected:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fpInsertOperateDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private grandfatherName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private haemoglobin:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasAshaReferredCHO:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasCHOFollowUpSentToOA:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasCHOReferredOA:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasOAFollowUpSentToCHO:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasOASentToCHO:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthIdNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private husbandId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hypYear:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hysterectomyDone:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private iayBeneficiary:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private idNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private idType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ifsc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private immunisationGiven:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private imtMemberNpcbStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isAadharUpdated:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isEarlyRegistration:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isExaminedByAsha:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isExaminedByCHO:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isHighRiskCase:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isIucdRemoved:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isMobileNumberVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNpcbFollowUpDone:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPregnantFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPrevAbortion:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isReferredByOA:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isSentByAshaForNPCB:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isVeryHighRiskCase:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private iucdRemovalDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private jsyBeneficiary:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private jsyPaymentGiven:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private kpsyBeneficiary:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private labTestMalariaRefBy:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private labTestMalariaRefStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastDeliveryDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastDeliveryOutcome:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastMethodOfContraception:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lcdcSurveySuspected:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lcdcSuspected:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lmpDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private maaVatsalyaCardNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private malariaExamined:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private malariaServiceDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private malariaTestResult:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private maritalStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private menopauseArrived:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mentalHealthScreeningDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private middleName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private motherId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mrGiven:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nameAsPerBankAccount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nameBasedOnAadhar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private normalCycleDays:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private npcbScreeningDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private npcbStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private oralYear:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private placeOfBirth:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private previousPregnancyComplication:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rchId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private relationWithHof:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private relationWithIdHolder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private syncStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private totalBirthCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uniqueHealthId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
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

.field private weight:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private yearOfWedding:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 4

    .line 365
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 366
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyId:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getRchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->rchId:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->firstName:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->middleName:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastName:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->gender:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maritalStatus:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->aadharNumber:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->isAadharUpdated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isAadharUpdated:Z

    .line 376
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mobileNumber:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyHeadFlag:Ljava/lang/Boolean;

    .line 378
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->uniqueHealthId:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ifsc:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->accountNumber:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaaVatsalyaCardNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maaVatsalyaCardNumber:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPregnantFlag:Ljava/lang/Boolean;

    .line 383
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNormalCycleDays()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->normalCycleDays:Ljava/lang/Integer;

    .line 384
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyPlanningMethod:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->type:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->state:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCreatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdBy:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUpdatedBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedBy:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->grandfatherName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameBasedOnAadhar:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->educationStatus:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->congenitalAnomalyIds:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->eyeIssueIds:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chronicDiseaseIds:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentDiseaseIds:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastMethodOfContraception:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->yearOfWedding:Ljava/lang/Integer;

    .line 398
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getJsyPaymentGiven()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyPaymentGiven:Ljava/lang/Boolean;

    .line 399
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEarlyRegistration()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isEarlyRegistration:Ljava/lang/Boolean;

    .line 400
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyBeneficiary:Ljava/lang/Boolean;

    .line 401
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iayBeneficiary:Ljava/lang/Boolean;

    .line 402
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->kpsyBeneficiary:Ljava/lang/Boolean;

    .line 403
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chiranjeeviYojnaBeneficiary:Ljava/lang/Boolean;

    .line 404
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHaemoglobin()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->haemoglobin:Ljava/lang/Float;

    .line 405
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getWeight()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->weight:Ljava/lang/Float;

    .line 406
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAncVisitDates()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ancVisitDates:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->immunisationGiven:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->bloodGroup:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->birthWeight:Ljava/lang/Float;

    .line 410
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->placeOfBirth:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->motherId:Ljava/lang/Long;

    .line 412
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getComplementaryFeedingStarted()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->complementaryFeedingStarted:Ljava/lang/Boolean;

    .line 413
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isHighRiskCase:Ljava/lang/Boolean;

    .line 414
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsVeryHighRiskCase()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isVeryHighRiskCase:Ljava/lang/Boolean;

    .line 415
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDetId:Ljava/lang/Long;

    .line 416
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->menopauseArrived:Ljava/lang/Boolean;

    .line 417
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->syncStatus:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIucdRemoved()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isIucdRemoved:Ljava/lang/Boolean;

    .line 419
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hysterectomyDone:Ljava/lang/Boolean;

    .line 420
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChildNrcCmtcStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->childNrcCmtcStatus:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryOutcome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryOutcome:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPreviousPregnancyComplication()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->previousPregnancyComplication:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->additionalInfo:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFhsrPhoneVerified()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fhsrPhoneVerified:Ljava/lang/Boolean;

    .line 425
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentGravida:Ljava/lang/Short;

    .line 426
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentPara()Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentPara:Ljava/lang/Short;

    .line 427
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->husbandId:Ljava/lang/Long;

    .line 428
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isMobileNumberVerified:Ljava/lang/Boolean;

    .line 429
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getRelationWithHof()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithHof:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHypYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hypYear:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDiabetesYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->diabetesYear:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getOralYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->oralYear:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBreastYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->breastYear:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCervicalYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cervicalYear:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthId:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthIdNumber:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMalariaTestResult()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaTestResult:Ljava/lang/Boolean;

    .line 438
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMalariaExamined()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaExamined:Ljava/lang/Boolean;

    .line 439
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getRelationWithIdHolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithIdHolder:Ljava/lang/String;

    .line 440
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMalariaServiceDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMalariaServiceDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaServiceDate:Ljava/util/Date;

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIdType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idType:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIdNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idNumber:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameAsPerBankAccount:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAbortionCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->abortionCount:Ljava/lang/Integer;

    .line 447
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPrevAbortion()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPrevAbortion:Ljava/lang/Boolean;

    .line 448
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->deliveryCount:Ljava/lang/Integer;

    .line 449
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getTotalBirthCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->totalBirthCount:Ljava/lang/Integer;

    .line 450
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->brnNumber:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 455
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 456
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 457
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getAdolescentScreeningDateInLong()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 458
    :goto_0
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->adolescentScreeningDate:Ljava/util/Date;

    .line 459
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMentalHealthScreeningDate()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mentalHealthScreeningDate:Ljava/lang/Long;

    .line 460
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getElderlyCareScreeningDate()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->elderlyCareScreeningDate:Ljava/lang/Long;

    .line 461
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLabTestMalariaRefStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefStatus:Ljava/lang/String;

    .line 462
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLabTestMalariaRefBy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefBy:Ljava/lang/String;

    .line 463
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCurrentFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentFamilyPlanningMethod:Ljava/lang/String;

    .line 464
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLcdcSuspected()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSuspected:Ljava/lang/Boolean;

    .line 465
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLcdcSurveySuspected()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSurveySuspected:Ljava/lang/Boolean;

    .line 466
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getFilariaSuspected()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSuspected:Ljava/lang/Boolean;

    .line 467
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getFilariaSideEffectsSubmitted()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSideEffectsSubmitted:Ljava/lang/Boolean;

    .line 468
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getMrGiven()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mrGiven:Ljava/lang/Boolean;

    .line 469
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->imtMemberNpcbStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 471
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDateOfWedding()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 479
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDateOfWedding()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dateOfWedding:Ljava/util/Date;

    .line 482
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 483
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lmpDate:Ljava/util/Date;

    .line 486
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 487
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dob:Ljava/util/Date;

    .line 490
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCreatedOn()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 491
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCreatedOn()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdOn:Ljava/util/Date;

    .line 494
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUpdatedOn()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 495
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUpdatedOn()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedOn:Ljava/util/Date;

    .line 498
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEdd()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 499
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEdd()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->edd:Ljava/util/Date;

    .line 502
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFpInsertOperateDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 503
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFpInsertOperateDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fpInsertOperateDate:Ljava/util/Date;

    .line 506
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIucdRemovalDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 507
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIucdRemovalDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iucdRemovalDate:Ljava/util/Date;

    .line 510
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 511
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDate:Ljava/util/Date;

    .line 514
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 515
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryDate:Ljava/util/Date;

    .line 518
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 519
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCbacDate()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cbacDate:Ljava/util/Date;

    :cond_d
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

    .line 1387
    :cond_1
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-nez v1, :cond_2

    return v0

    .line 1388
    :cond_2
    check-cast p1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1389
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAadharNumber()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->aadharNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAbortionCount()Ljava/lang/Integer;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->abortionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getActualId()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAdolescentScreeningDate()Ljava/util/Date;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->adolescentScreeningDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAncVisitDates()Ljava/lang/String;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ancVisitDates:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthWeight()Ljava/lang/Float;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->birthWeight:Ljava/lang/Float;

    return-object v0
.end method

.method public getBloodGroup()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->bloodGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getBreastYear()Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->breastYear:Ljava/lang/String;

    return-object v0
.end method

.method public getBrnNumber()Ljava/lang/String;
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->brnNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCbacDate()Ljava/util/Date;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cbacDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCervicalYear()Ljava/lang/String;
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cervicalYear:Ljava/lang/String;

    return-object v0
.end method

.method public getChildNrcCmtcStatus()Ljava/lang/String;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->childNrcCmtcStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getChiranjeeviYojnaBeneficiary()Ljava/lang/Boolean;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chiranjeeviYojnaBeneficiary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChronicDiseaseIds()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chronicDiseaseIds:Ljava/lang/String;

    return-object v0
.end method

.method public getComplementaryFeedingStarted()Ljava/lang/Boolean;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->complementaryFeedingStarted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCongenitalAnomalyIds()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->congenitalAnomalyIds:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getCurPregRegDate()Ljava/util/Date;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCurPregRegDetId()Ljava/lang/Long;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDetId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentDiseaseIds()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentDiseaseIds:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFamilyPlanningMethod()Ljava/lang/String;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentFamilyPlanningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentGravida()Ljava/lang/Short;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentGravida:Ljava/lang/Short;

    return-object v0
.end method

.method public getCurrentPara()Ljava/lang/Short;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentPara:Ljava/lang/Short;

    return-object v0
.end method

.method public getDateOfWedding()Ljava/util/Date;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dateOfWedding:Ljava/util/Date;

    return-object v0
.end method

.method public getDeliveryCount()Ljava/lang/Integer;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->deliveryCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiabetesYear()Ljava/lang/String;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->diabetesYear:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dob:Ljava/util/Date;

    return-object v0
.end method

.method public getEarlyRegistration()Ljava/lang/Boolean;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isEarlyRegistration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEdd()Ljava/util/Date;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->edd:Ljava/util/Date;

    return-object v0
.end method

.method public getEducationStatus()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->educationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getElderlyCareScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->elderlyCareScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getEyeIssueIds()Ljava/lang/String;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->eyeIssueIds:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyHeadFlag()Ljava/lang/Boolean;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyHeadFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyPlanningMethod()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyPlanningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getFhsrPhoneVerified()Ljava/lang/Boolean;
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fhsrPhoneVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFilariaSideEffectsSubmitted()Ljava/lang/Boolean;
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSideEffectsSubmitted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFilariaSuspected()Ljava/lang/Boolean;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSuspected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFpInsertOperateDate()Ljava/util/Date;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fpInsertOperateDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGrandfatherName()Ljava/lang/String;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->grandfatherName:Ljava/lang/String;

    return-object v0
.end method

.method public getHaemoglobin()Ljava/lang/Float;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->haemoglobin:Ljava/lang/Float;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthIdNumber()Ljava/lang/String;
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthIdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHighRiskCase()Ljava/lang/Boolean;
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isHighRiskCase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHusbandId()Ljava/lang/Long;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->husbandId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHypYear()Ljava/lang/String;
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hypYear:Ljava/lang/String;

    return-object v0
.end method

.method public getHysterectomyDone()Ljava/lang/Boolean;
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hysterectomyDone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIayBeneficiary()Ljava/lang/Boolean;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iayBeneficiary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIdNumber()Ljava/lang/String;
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idType:Ljava/lang/String;

    return-object v0
.end method

.method public getIfsc()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ifsc:Ljava/lang/String;

    return-object v0
.end method

.method public getImmunisationGiven()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->immunisationGiven:Ljava/lang/String;

    return-object v0
.end method

.method public getImtMemberNpcbStatus()Ljava/lang/String;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->imtMemberNpcbStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPregnantFlag()Ljava/lang/Boolean;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPregnantFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsVeryHighRiskCase()Ljava/lang/Boolean;
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isVeryHighRiskCase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIucdRemovalDate()Ljava/util/Date;
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iucdRemovalDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIucdRemoved()Ljava/lang/Boolean;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isIucdRemoved:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJsyBeneficiary()Ljava/lang/Boolean;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyBeneficiary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJsyPaymentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyPaymentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKpsyBeneficiary()Ljava/lang/Boolean;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->kpsyBeneficiary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLabTestMalariaRefBy()Ljava/lang/String;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefBy:Ljava/lang/String;

    return-object v0
.end method

.method public getLabTestMalariaRefStatus()Ljava/lang/String;
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDeliveryDate()Ljava/util/Date;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastDeliveryOutcome()Ljava/lang/String;
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryOutcome:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMethodOfContraception()Ljava/lang/String;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastMethodOfContraception:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdcSurveySuspected()Ljava/lang/Boolean;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSurveySuspected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLcdcSuspected()Ljava/lang/Boolean;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSuspected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLmpDate()Ljava/util/Date;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lmpDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMaaVatsalyaCardNumber()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maaVatsalyaCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMalariaExamined()Ljava/lang/Boolean;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaExamined:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMalariaServiceDate()Ljava/util/Date;
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaServiceDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMalariaTestResult()Ljava/lang/Boolean;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaTestResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaritalStatus()Ljava/lang/String;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maritalStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getMenopauseArrived()Ljava/lang/Boolean;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->menopauseArrived:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMentalHealthScreeningDate()Ljava/lang/Long;
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mentalHealthScreeningDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumberVerified()Ljava/lang/Boolean;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isMobileNumberVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMotherId()Ljava/lang/Long;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->motherId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMrGiven()Ljava/lang/Boolean;
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mrGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNameAsPerBankAccount()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameAsPerBankAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBasedOnAadhar()Ljava/lang/String;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameBasedOnAadhar:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalCycleDays()Ljava/lang/Integer;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->normalCycleDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOralYear()Ljava/lang/String;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->oralYear:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceOfBirth()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->placeOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevAbortion()Ljava/lang/Boolean;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPrevAbortion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPreviousPregnancyComplication()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->previousPregnancyComplication:Ljava/lang/String;

    return-object v0
.end method

.method public getRchId()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->rchId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationWithHof()Ljava/lang/String;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithHof:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationWithIdHolder()Ljava/lang/String;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithIdHolder:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncStatus()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->syncStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBirthCount()Ljava/lang/Integer;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->totalBirthCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueHealthId()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->uniqueHealthId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedOn()Ljava/util/Date;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Float;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->weight:Ljava/lang/Float;

    return-object v0
.end method

.method public getYearOfWedding()Ljava/lang/Integer;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->yearOfWedding:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1394
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAadharUpdated()Z
    .locals 1

    .line 620
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isAadharUpdated:Z

    return v0
.end method

.method public setAadharNumber(Ljava/lang/String;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->aadharNumber:Ljava/lang/String;

    return-void
.end method

.method public setAadharUpdated(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isAadharUpdated:Z

    return-void
.end method

.method public setAbortionCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->abortionCount:Ljava/lang/Integer;

    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->accountNumber:Ljava/lang/String;

    return-void
.end method

.method public setActualId(Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    return-void
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 2

    .line 1080
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->additionalInfo:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1082
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v0, Ljava/util/Date;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    :cond_0
    return-void
.end method

.method public setAdolescentScreeningDate(Ljava/util/Date;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->adolescentScreeningDate:Ljava/util/Date;

    return-void
.end method

.method public setAncVisitDates(Ljava/lang/String;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ancVisitDates:Ljava/lang/String;

    return-void
.end method

.method public setBirthWeight(Ljava/lang/Float;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->birthWeight:Ljava/lang/Float;

    return-void
.end method

.method public setBloodGroup(Ljava/lang/String;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->bloodGroup:Ljava/lang/String;

    return-void
.end method

.method public setBreastYear(Ljava/lang/String;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->breastYear:Ljava/lang/String;

    return-void
.end method

.method public setBrnNumber(Ljava/lang/String;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->brnNumber:Ljava/lang/String;

    return-void
.end method

.method public setCbacDate(Ljava/util/Date;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cbacDate:Ljava/util/Date;

    return-void
.end method

.method public setCervicalYear(Ljava/lang/String;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->cervicalYear:Ljava/lang/String;

    return-void
.end method

.method public setChildNrcCmtcStatus(Ljava/lang/String;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->childNrcCmtcStatus:Ljava/lang/String;

    return-void
.end method

.method public setChiranjeeviYojnaBeneficiary(Ljava/lang/Boolean;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chiranjeeviYojnaBeneficiary:Ljava/lang/Boolean;

    return-void
.end method

.method public setChronicDiseaseIds(Ljava/lang/String;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->chronicDiseaseIds:Ljava/lang/String;

    return-void
.end method

.method public setComplementaryFeedingStarted(Ljava/lang/Boolean;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->complementaryFeedingStarted:Ljava/lang/Boolean;

    return-void
.end method

.method public setCongenitalAnomalyIds(Ljava/lang/String;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->congenitalAnomalyIds:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setCurPregRegDate(Ljava/util/Date;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDate:Ljava/util/Date;

    return-void
.end method

.method public setCurPregRegDetId(Ljava/lang/Long;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->curPregRegDetId:Ljava/lang/Long;

    return-void
.end method

.method public setCurrentDiseaseIds(Ljava/lang/String;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentDiseaseIds:Ljava/lang/String;

    return-void
.end method

.method public setCurrentFamilyPlanningMethod(Ljava/lang/String;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentFamilyPlanningMethod:Ljava/lang/String;

    return-void
.end method

.method public setCurrentGravida(Ljava/lang/Short;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentGravida:Ljava/lang/Short;

    return-void
.end method

.method public setCurrentPara(Ljava/lang/Short;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->currentPara:Ljava/lang/Short;

    return-void
.end method

.method public setDateOfWedding(Ljava/util/Date;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dateOfWedding:Ljava/util/Date;

    return-void
.end method

.method public setDeliveryCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->deliveryCount:Ljava/lang/Integer;

    return-void
.end method

.method public setDiabetesYear(Ljava/lang/String;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->diabetesYear:Ljava/lang/String;

    return-void
.end method

.method public setDob(Ljava/util/Date;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dob:Ljava/util/Date;

    return-void
.end method

.method public setEarlyRegistration(Ljava/lang/Boolean;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isEarlyRegistration:Ljava/lang/Boolean;

    return-void
.end method

.method public setEdd(Ljava/util/Date;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->edd:Ljava/util/Date;

    return-void
.end method

.method public setEducationStatus(Ljava/lang/String;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->educationStatus:Ljava/lang/String;

    return-void
.end method

.method public setElderlyCareScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->elderlyCareScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setEyeIssueIds(Ljava/lang/String;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->eyeIssueIds:Ljava/lang/String;

    return-void
.end method

.method public setFamilyHeadFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyHeadFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setFamilyPlanningMethod(Ljava/lang/String;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyPlanningMethod:Ljava/lang/String;

    return-void
.end method

.method public setFhsrPhoneVerified(Ljava/lang/Boolean;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fhsrPhoneVerified:Ljava/lang/Boolean;

    return-void
.end method

.method public setFilariaSideEffectsSubmitted(Ljava/lang/Boolean;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSideEffectsSubmitted:Ljava/lang/Boolean;

    return-void
.end method

.method public setFilariaSuspected(Ljava/lang/Boolean;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->filariaSuspected:Ljava/lang/Boolean;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFpInsertOperateDate(Ljava/util/Date;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->fpInsertOperateDate:Ljava/util/Date;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGrandfatherName(Ljava/lang/String;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->grandfatherName:Ljava/lang/String;

    return-void
.end method

.method public setHaemoglobin(Ljava/lang/Float;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->haemoglobin:Ljava/lang/Float;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setHealthIdNumber(Ljava/lang/String;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->healthIdNumber:Ljava/lang/String;

    return-void
.end method

.method public setHighRiskCase(Ljava/lang/Boolean;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isHighRiskCase:Ljava/lang/Boolean;

    return-void
.end method

.method public setHusbandId(Ljava/lang/Long;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->husbandId:Ljava/lang/Long;

    return-void
.end method

.method public setHypYear(Ljava/lang/String;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hypYear:Ljava/lang/String;

    return-void
.end method

.method public setHysterectomyDone(Ljava/lang/Boolean;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->hysterectomyDone:Ljava/lang/Boolean;

    return-void
.end method

.method public setIayBeneficiary(Ljava/lang/Boolean;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iayBeneficiary:Ljava/lang/Boolean;

    return-void
.end method

.method public setIdNumber(Ljava/lang/String;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idNumber:Ljava/lang/String;

    return-void
.end method

.method public setIdType(Ljava/lang/String;)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->idType:Ljava/lang/String;

    return-void
.end method

.method public setIfsc(Ljava/lang/String;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ifsc:Ljava/lang/String;

    return-void
.end method

.method public setImmunisationGiven(Ljava/lang/String;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->immunisationGiven:Ljava/lang/String;

    return-void
.end method

.method public setImtMemberNpcbStatus(Ljava/lang/String;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->imtMemberNpcbStatus:Ljava/lang/String;

    return-void
.end method

.method public setIsPregnantFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPregnantFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setIucdRemovalDate(Ljava/util/Date;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->iucdRemovalDate:Ljava/util/Date;

    return-void
.end method

.method public setIucdRemoved(Ljava/lang/Boolean;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isIucdRemoved:Ljava/lang/Boolean;

    return-void
.end method

.method public setJsyBeneficiary(Ljava/lang/Boolean;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyBeneficiary:Ljava/lang/Boolean;

    return-void
.end method

.method public setJsyPaymentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->jsyPaymentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setKpsyBeneficiary(Ljava/lang/Boolean;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->kpsyBeneficiary:Ljava/lang/Boolean;

    return-void
.end method

.method public setLabTestMalariaRefBy(Ljava/lang/String;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefBy:Ljava/lang/String;

    return-void
.end method

.method public setLabTestMalariaRefStatus(Ljava/lang/String;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->labTestMalariaRefStatus:Ljava/lang/String;

    return-void
.end method

.method public setLastDeliveryDate(Ljava/util/Date;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryDate:Ljava/util/Date;

    return-void
.end method

.method public setLastDeliveryOutcome(Ljava/lang/String;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastDeliveryOutcome:Ljava/lang/String;

    return-void
.end method

.method public setLastMethodOfContraception(Ljava/lang/String;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastMethodOfContraception:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLcdcSurveySuspected(Ljava/lang/Boolean;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSurveySuspected:Ljava/lang/Boolean;

    return-void
.end method

.method public setLcdcSuspected(Ljava/lang/Boolean;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lcdcSuspected:Ljava/lang/Boolean;

    return-void
.end method

.method public setLmpDate(Ljava/util/Date;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lmpDate:Ljava/util/Date;

    return-void
.end method

.method public setMaaVatsalyaCardNumber(Ljava/lang/String;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maaVatsalyaCardNumber:Ljava/lang/String;

    return-void
.end method

.method public setMalariaExamined(Ljava/lang/Boolean;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaExamined:Ljava/lang/Boolean;

    return-void
.end method

.method public setMalariaServiceDate(Ljava/util/Date;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaServiceDate:Ljava/util/Date;

    return-void
.end method

.method public setMalariaTestResult(Ljava/lang/Boolean;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->malariaTestResult:Ljava/lang/Boolean;

    return-void
.end method

.method public setMaritalStatus(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maritalStatus:Ljava/lang/String;

    return-void
.end method

.method public setMenopauseArrived(Ljava/lang/Boolean;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->menopauseArrived:Ljava/lang/Boolean;

    return-void
.end method

.method public setMentalHealthScreeningDate(Ljava/lang/Long;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mentalHealthScreeningDate:Ljava/lang/Long;

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->middleName:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumberVerified(Ljava/lang/Boolean;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isMobileNumberVerified:Ljava/lang/Boolean;

    return-void
.end method

.method public setMotherId(Ljava/lang/Long;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->motherId:Ljava/lang/Long;

    return-void
.end method

.method public setMrGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mrGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setNameAsPerBankAccount(Ljava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameAsPerBankAccount:Ljava/lang/String;

    return-void
.end method

.method public setNameBasedOnAadhar(Ljava/lang/String;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->nameBasedOnAadhar:Ljava/lang/String;

    return-void
.end method

.method public setNormalCycleDays(Ljava/lang/Integer;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->normalCycleDays:Ljava/lang/Integer;

    return-void
.end method

.method public setOralYear(Ljava/lang/String;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->oralYear:Ljava/lang/String;

    return-void
.end method

.method public setPlaceOfBirth(Ljava/lang/String;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->placeOfBirth:Ljava/lang/String;

    return-void
.end method

.method public setPrevAbortion(Ljava/lang/Boolean;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPrevAbortion:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreviousPregnancyComplication(Ljava/lang/String;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->previousPregnancyComplication:Ljava/lang/String;

    return-void
.end method

.method public setRchId(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->rchId:Ljava/lang/String;

    return-void
.end method

.method public setRelationWithHof(Ljava/lang/String;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithHof:Ljava/lang/String;

    return-void
.end method

.method public setRelationWithIdHolder(Ljava/lang/String;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->relationWithIdHolder:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setSyncStatus(Ljava/lang/String;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->syncStatus:Ljava/lang/String;

    return-void
.end method

.method public setTotalBirthCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->totalBirthCount:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUniqueHealthId(Ljava/lang/String;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->uniqueHealthId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedOn(Ljava/util/Date;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedOn:Ljava/util/Date;

    return-void
.end method

.method public setVeryHighRiskCase(Ljava/lang/Boolean;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isVeryHighRiskCase:Ljava/lang/Boolean;

    return-void
.end method

.method public setWeight(Ljava/lang/Float;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->weight:Ljava/lang/Float;

    return-void
.end method

.method public setYearOfWedding(Ljava/lang/Integer;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->yearOfWedding:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemberBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->actualId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", familyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->rchId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", middleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maritalStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maritalStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aadharNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->aadharNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", familyHeadFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyHeadFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->dob:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uniqueHealthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->uniqueHealthId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->ifsc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->accountNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maaVatsalyaCardNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->maaVatsalyaCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPregnantFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->isPregnantFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lmpDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->lmpDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", normalCycleDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->normalCycleDays:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", familyPlanningMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->familyPlanningMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->createdOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/MemberBean;->updatedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
