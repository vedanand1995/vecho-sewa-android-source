package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.GsonBuilder;
import java.util.Date;

/* loaded from: classes.dex */
public class MemberDataBean {
    private String aadharNumber;
    private Integer abortionCount;
    private String absorbentMaterialUsed;
    private String accountNumber;
    private String additionalInfo;
    private String address;
    private Long adolescentScreeningDate;
    private String ancVisitDates;
    private Long anganwadiId;
    private String areaId;
    private Float birthWeight;
    private String bloodGroup;
    private String bplCardNumber;
    private String breastYear;
    private String brnNumber;
    private String caste;
    private Long cbacDate;
    private String cervicalYear;
    private String childNrcCmtcStatus;
    private Boolean chiranjeeviYojnaBeneficiary;
    private String chronicDiseaseIds;
    private Boolean complementaryFeedingStarted;
    private String congenitalAnomalyIds;
    private String counsellingDone;
    private String createdBy;
    private Long createdOn;
    private Long curPregRegDate;
    private Long curPregRegDetId;
    private String currentDiseaseIds;
    private String currentFamilyPlanningMethod;
    private Short currentGravida;
    private Short currentPara;
    private Long dateOfWedding;
    private Integer deliveryCount;
    private String diabetesYear;
    private Long dob;
    private String dueVaccines;
    private Integer dueVaccinesCount;
    private Long edd;
    private String educationStatus;
    private String eyeIssueIds;
    private String familyActualId;
    private Boolean familyHeadFlag;
    private String familyId;
    private String familyMedicalHistory;
    private String familyPlanningMethod;
    private String fatherName;
    private Boolean fhsrPhoneVerified;
    private String firstName;
    private Long fpInsertOperateDate;
    private String gender;
    private String grandfatherName;
    private Float haemoglobin;
    private String healthId;
    private String healthIdNumber;
    private Integer height;
    private Long husbandId;
    private String husbandName;
    private String hypYear;
    private Boolean hysterectomyDone;
    private Boolean iayBeneficiary;
    private String id;
    private String idNumber;
    private String idType;
    private Integer ifaTabTakenLastMonth;
    private Integer ifaTabTakenNow;
    private String ifsc;
    private String immunisationGiven;
    private String imtMemberNpcbStatus;
    private Boolean ironPillFlag;
    private boolean isAadharUpdated;
    private Boolean isAlbandazoleGivenInLastSixMonths;
    private Boolean isEarlyRegistration;
    private Boolean isHaemoglobinMeasured;
    private Boolean isHavingMenstrualProblem;
    private Boolean isHighRiskCase;
    private Boolean isIucdRemoved;
    private Boolean isMobileNumberVerified;
    private Boolean isPeriodStarted;
    private Boolean isPregnantFlag;
    private Boolean isPrevAbortion;
    private Boolean isReferredByOA;
    private Boolean isSanitaryPadGiven;
    private Boolean isSentByAshaForNPCB;
    private Boolean isTDInjectionGiven;
    private Boolean isVeryHighRiskCase;
    private String issueWithMenstruation;
    private Long iucdRemovalDate;
    private Boolean jsyBeneficiary;
    private Boolean jsyPaymentGiven;
    private Boolean kpsyBeneficiary;
    private String labTestMalariaRefBy;
    private String labTestMalariaRefStatus;
    private Long lastDeliveryDate;
    private String lastDeliveryOutcome;
    private String lastMethodOfContraception;
    private String lastName;
    private Long lmpDate;
    private String maaVatsalyaCardNumber;
    private Boolean malariaExamined;
    private Long malariaServiceDate;
    private Boolean malariaTestResult;
    private String maritalStatus;
    private String medicalHistory;
    private String memberId;
    private Boolean menopauseArrived;
    private String middleName;
    private String mobileNumber;
    private Long motherId;
    private String motherName;
    private Boolean mrGiven;
    private String nameAsPerBankAccount;
    private String nameBasedOnAadhar;
    private String namoshreeDistRejectionComment;
    private String namoshreeRejectionComment;
    private Integer normalCycleDays;
    private Long notDueDate;
    private Long notScheduleDate;
    private Integer notificationId;
    private Integer numberOfSanitaryPadsGiven;
    private String oralYear;
    private String placeOfBirth;
    private String pmjayNumber;
    private String presumptiveDiagnosis;
    private String previousPregnancyComplication;
    private String rchId;
    private String refErrorDistantVisionLe;
    private String refErrorDistantVisionRe;
    private String refErrorNearVisionLe;
    private String refErrorNearVisionRe;
    private String relationWithHof;
    private String relationWithIdHolder;
    private String religion;
    private Long schoolActualId;
    private String serviceLocation;
    private String state;
    private String symptomsExperienced;
    private String syncStatus;
    private Long tdInjectionDate;
    private Integer totalBirthCount;
    private String type;
    private String uniqueHealthId;
    private String updatedBy;
    private Long updatedOn;
    private String visionWithSpectsLE;
    private String visionWithSpectsRE;
    private String visionWithoutSpectsLE;
    private String visionWithoutSpectsRE;
    private Float weight;
    private Integer yearOfWedding;

    public MemberDataBean() {
    }

    public MemberDataBean(MemberBean memberBean) {
        this.id = memberBean.getActualId();
        this.familyId = memberBean.getFamilyId();
        this.rchId = memberBean.getRchId();
        this.firstName = memberBean.getFirstName();
        this.middleName = memberBean.getMiddleName();
        this.lastName = memberBean.getLastName();
        this.gender = memberBean.getGender();
        this.maritalStatus = memberBean.getMaritalStatus();
        this.aadharNumber = memberBean.getAadharNumber();
        this.isAadharUpdated = memberBean.isAadharUpdated();
        this.mobileNumber = memberBean.getMobileNumber();
        this.familyHeadFlag = memberBean.getFamilyHeadFlag();
        this.uniqueHealthId = memberBean.getUniqueHealthId();
        this.ifsc = memberBean.getIfsc();
        this.accountNumber = memberBean.getAccountNumber();
        this.maaVatsalyaCardNumber = memberBean.getMaaVatsalyaCardNumber();
        this.isPregnantFlag = memberBean.getIsPregnantFlag();
        this.normalCycleDays = memberBean.getNormalCycleDays();
        this.familyPlanningMethod = memberBean.getFamilyPlanningMethod();
        this.type = memberBean.getType();
        this.state = memberBean.getState();
        this.createdBy = memberBean.getCreatedBy();
        this.updatedBy = memberBean.getUpdatedBy();
        this.grandfatherName = memberBean.getGrandfatherName();
        this.nameBasedOnAadhar = memberBean.getNameBasedOnAadhar();
        this.educationStatus = memberBean.getEducationStatus();
        this.congenitalAnomalyIds = memberBean.getCongenitalAnomalyIds();
        this.eyeIssueIds = memberBean.getEyeIssueIds();
        this.chronicDiseaseIds = memberBean.getChronicDiseaseIds();
        this.currentDiseaseIds = memberBean.getCurrentDiseaseIds();
        this.lastMethodOfContraception = memberBean.getLastMethodOfContraception();
        this.yearOfWedding = memberBean.getYearOfWedding();
        this.jsyPaymentGiven = memberBean.getJsyPaymentGiven();
        this.isEarlyRegistration = memberBean.getEarlyRegistration();
        this.jsyBeneficiary = memberBean.getJsyBeneficiary();
        this.iayBeneficiary = memberBean.getIayBeneficiary();
        this.kpsyBeneficiary = memberBean.getKpsyBeneficiary();
        this.chiranjeeviYojnaBeneficiary = memberBean.getChiranjeeviYojnaBeneficiary();
        this.haemoglobin = memberBean.getHaemoglobin();
        this.weight = memberBean.getWeight();
        this.ancVisitDates = memberBean.getAncVisitDates();
        this.immunisationGiven = memberBean.getImmunisationGiven();
        this.bloodGroup = memberBean.getBloodGroup();
        this.motherId = memberBean.getMotherId();
        this.complementaryFeedingStarted = memberBean.getComplementaryFeedingStarted();
        this.isHighRiskCase = memberBean.getHighRiskCase();
        this.isVeryHighRiskCase = memberBean.getIsVeryHighRiskCase();
        this.curPregRegDetId = memberBean.getCurPregRegDetId();
        this.menopauseArrived = memberBean.getMenopauseArrived();
        this.syncStatus = memberBean.getSyncStatus();
        this.isIucdRemoved = memberBean.getIucdRemoved();
        this.hysterectomyDone = memberBean.getHysterectomyDone();
        this.childNrcCmtcStatus = memberBean.getChildNrcCmtcStatus();
        this.lastDeliveryOutcome = memberBean.getLastDeliveryOutcome();
        this.previousPregnancyComplication = memberBean.getPreviousPregnancyComplication();
        this.additionalInfo = memberBean.getAdditionalInfo();
        this.fhsrPhoneVerified = memberBean.getFhsrPhoneVerified();
        this.currentGravida = memberBean.getCurrentGravida();
        this.currentPara = memberBean.getCurrentPara();
        this.husbandId = memberBean.getHusbandId();
        this.isMobileNumberVerified = memberBean.getMobileNumberVerified();
        this.relationWithHof = memberBean.getRelationWithHof();
        this.birthWeight = memberBean.getBirthWeight();
        this.placeOfBirth = memberBean.getPlaceOfBirth();
        this.hypYear = memberBean.getHypYear();
        this.diabetesYear = memberBean.getDiabetesYear();
        this.oralYear = memberBean.getOralYear();
        this.breastYear = memberBean.getBreastYear();
        this.cervicalYear = memberBean.getCervicalYear();
        this.healthId = memberBean.getHealthId();
        this.healthIdNumber = memberBean.getHealthIdNumber();
        this.memberId = memberBean.getHealthIdNumber();
        this.malariaTestResult = memberBean.getMalariaTestResult();
        if (memberBean.getMalariaServiceDate() != null) {
            this.malariaServiceDate = Long.valueOf(memberBean.getMalariaServiceDate().getTime());
        }
        this.malariaExamined = memberBean.getMalariaExamined();
        this.relationWithIdHolder = memberBean.getRelationWithIdHolder();
        this.idType = memberBean.getIdType();
        this.idNumber = memberBean.getIdNumber();
        this.nameAsPerBankAccount = memberBean.getNameAsPerBankAccount();
        this.abortionCount = memberBean.getAbortionCount();
        this.isPrevAbortion = memberBean.getPrevAbortion();
        this.deliveryCount = memberBean.getDeliveryCount();
        this.totalBirthCount = memberBean.getTotalBirthCount();
        this.labTestMalariaRefStatus = memberBean.getLabTestMalariaRefStatus();
        this.labTestMalariaRefBy = memberBean.getLabTestMalariaRefBy();
        this.currentFamilyPlanningMethod = memberBean.getCurrentFamilyPlanningMethod();
        this.brnNumber = memberBean.getBrnNumber();
        if (memberBean.getAdditionalInfo() != null) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            this.serviceLocation = memberAdditionalInfoDataBean.getServiceLocation();
            this.counsellingDone = memberAdditionalInfoDataBean.getCounsellingDone();
            this.isHaemoglobinMeasured = memberAdditionalInfoDataBean.getHaemoglobinMeasured();
            this.ifaTabTakenLastMonth = memberAdditionalInfoDataBean.getIfaTabTakenLastMonth();
            this.ifaTabTakenNow = memberAdditionalInfoDataBean.getIfaTabTakenNow();
            this.absorbentMaterialUsed = memberAdditionalInfoDataBean.getAbsorbentMaterialUsed();
            this.isSanitaryPadGiven = memberAdditionalInfoDataBean.getSanitaryPadGiven();
            this.numberOfSanitaryPadsGiven = memberAdditionalInfoDataBean.getNumberOfSanitaryPadsGiven();
            this.isHavingMenstrualProblem = memberAdditionalInfoDataBean.getHavingMenstrualProblem();
            this.issueWithMenstruation = memberAdditionalInfoDataBean.getIssueWithMenstruation();
            this.isTDInjectionGiven = memberAdditionalInfoDataBean.getTDInjectionGiven();
            this.tdInjectionDate = memberAdditionalInfoDataBean.getTdInjectionDateInLong();
            this.isAlbandazoleGivenInLastSixMonths = memberAdditionalInfoDataBean.getAlbandazoleGivenInLastSixMonths();
            this.adolescentScreeningDate = memberAdditionalInfoDataBean.getAdolescentScreeningDateInLong();
            this.height = memberAdditionalInfoDataBean.getHeight();
            this.isPeriodStarted = memberAdditionalInfoDataBean.getPeriodStarted();
            this.schoolActualId = memberAdditionalInfoDataBean.getSchoolActualId();
            this.pmjayNumber = memberAdditionalInfoDataBean.getPmjayNumber();
            this.namoshreeRejectionComment = memberAdditionalInfoDataBean.getNsRejectionCmtMo();
            this.namoshreeDistRejectionComment = memberAdditionalInfoDataBean.getNsRejectionCmtDist();
        }
        if (memberBean.getLmpDate() != null) {
            this.lmpDate = Long.valueOf(memberBean.getLmpDate().getTime());
        }
        if (memberBean.getDob() != null) {
            this.dob = Long.valueOf(memberBean.getDob().getTime());
        }
        if (memberBean.getCreatedOn() != null) {
            this.createdOn = Long.valueOf(memberBean.getCreatedOn().getTime());
        }
        if (memberBean.getUpdatedOn() != null) {
            this.updatedOn = Long.valueOf(memberBean.getUpdatedOn().getTime());
        }
        if (memberBean.getEdd() != null) {
            this.edd = Long.valueOf(memberBean.getEdd().getTime());
        }
        if (memberBean.getFpInsertOperateDate() != null) {
            this.fpInsertOperateDate = Long.valueOf(memberBean.getFpInsertOperateDate().getTime());
        }
        if (memberBean.getIucdRemovalDate() != null) {
            this.iucdRemovalDate = Long.valueOf(memberBean.getIucdRemovalDate().getTime());
        }
        if (memberBean.getCurPregRegDate() != null) {
            this.curPregRegDate = Long.valueOf(memberBean.getCurPregRegDate().getTime());
        }
        if (memberBean.getLastDeliveryDate() != null) {
            this.lastDeliveryDate = Long.valueOf(memberBean.getLastDeliveryDate().getTime());
        }
        if (memberBean.getDateOfWedding() != null) {
            this.dateOfWedding = Long.valueOf(memberBean.getDateOfWedding().getTime());
        }
        if (memberBean.getCbacDate() != null) {
            this.cbacDate = Long.valueOf(memberBean.getCbacDate().getTime());
        }
        if (memberBean.getMrGiven() != null) {
            this.mrGiven = memberBean.getMrGiven();
        }
        if (memberBean.getImtMemberNpcbStatus() != null) {
            this.imtMemberNpcbStatus = memberBean.getImtMemberNpcbStatus();
        }
    }

    public Long getDateOfWedding() {
        return this.dateOfWedding;
    }

    public void setDateOfWedding(Long l) {
        this.dateOfWedding = l;
    }

    public Short getCurrentGravida() {
        return this.currentGravida;
    }

    public void setCurrentGravida(Short sh) {
        this.currentGravida = sh;
    }

    public Short getCurrentPara() {
        return this.currentPara;
    }

    public void setCurrentPara(Short sh) {
        this.currentPara = sh;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public String getRchId() {
        return this.rchId;
    }

    public void setRchId(String str) {
        this.rchId = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getMiddleName() {
        return this.middleName;
    }

    public void setMiddleName(String str) {
        this.middleName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getMaritalStatus() {
        return this.maritalStatus;
    }

    public void setMaritalStatus(String str) {
        this.maritalStatus = str;
    }

    public String getAadharNumber() {
        return this.aadharNumber;
    }

    public void setAadharNumber(String str) {
        this.aadharNumber = str;
    }

    public boolean isAadharUpdated() {
        return this.isAadharUpdated;
    }

    public void setAadharUpdated(boolean z) {
        this.isAadharUpdated = z;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public Boolean getFamilyHeadFlag() {
        return this.familyHeadFlag;
    }

    public void setFamilyHeadFlag(Boolean bool) {
        this.familyHeadFlag = bool;
    }

    public Long getDob() {
        return this.dob;
    }

    public void setDob(Long l) {
        this.dob = l;
    }

    public String getUniqueHealthId() {
        return this.uniqueHealthId;
    }

    public void setUniqueHealthId(String str) {
        this.uniqueHealthId = str;
    }

    public String getIfsc() {
        return this.ifsc;
    }

    public void setIfsc(String str) {
        this.ifsc = str;
    }

    public String getAccountNumber() {
        return this.accountNumber;
    }

    public void setAccountNumber(String str) {
        this.accountNumber = str;
    }

    public String getMaaVatsalyaCardNumber() {
        return this.maaVatsalyaCardNumber;
    }

    public void setMaaVatsalyaCardNumber(String str) {
        this.maaVatsalyaCardNumber = str;
    }

    public Boolean getIsPregnantFlag() {
        return this.isPregnantFlag;
    }

    public void setIsPregnantFlag(Boolean bool) {
        this.isPregnantFlag = bool;
    }

    public Long getLmpDate() {
        return this.lmpDate;
    }

    public void setLmpDate(Long l) {
        this.lmpDate = l;
    }

    public Integer getNormalCycleDays() {
        return this.normalCycleDays;
    }

    public void setNormalCycleDays(Integer num) {
        this.normalCycleDays = num;
    }

    public String getFamilyPlanningMethod() {
        return this.familyPlanningMethod;
    }

    public void setFamilyPlanningMethod(String str) {
        this.familyPlanningMethod = str;
    }

    public Long getFpInsertOperateDate() {
        return this.fpInsertOperateDate;
    }

    public void setFpInsertOperateDate(Long l) {
        this.fpInsertOperateDate = l;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(String str) {
        this.createdBy = str;
    }

    public String getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(String str) {
        this.updatedBy = str;
    }

    public Long getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(Long l) {
        this.createdOn = l;
    }

    public Long getUpdatedOn() {
        return this.updatedOn;
    }

    public void setUpdatedOn(Long l) {
        this.updatedOn = l;
    }

    public String getGrandfatherName() {
        return this.grandfatherName;
    }

    public void setGrandfatherName(String str) {
        this.grandfatherName = str;
    }

    public String getNameBasedOnAadhar() {
        return this.nameBasedOnAadhar;
    }

    public void setNameBasedOnAadhar(String str) {
        this.nameBasedOnAadhar = str;
    }

    public String getEducationStatus() {
        return this.educationStatus;
    }

    public void setEducationStatus(String str) {
        this.educationStatus = str;
    }

    public String getCongenitalAnomalyIds() {
        return this.congenitalAnomalyIds;
    }

    public void setCongenitalAnomalyIds(String str) {
        this.congenitalAnomalyIds = str;
    }

    public String getChronicDiseaseIds() {
        return this.chronicDiseaseIds;
    }

    public void setChronicDiseaseIds(String str) {
        this.chronicDiseaseIds = str;
    }

    public String getCurrentDiseaseIds() {
        return this.currentDiseaseIds;
    }

    public void setCurrentDiseaseIds(String str) {
        this.currentDiseaseIds = str;
    }

    public String getEyeIssueIds() {
        return this.eyeIssueIds;
    }

    public void setEyeIssueIds(String str) {
        this.eyeIssueIds = str;
    }

    public String getLastMethodOfContraception() {
        return this.lastMethodOfContraception;
    }

    public void setLastMethodOfContraception(String str) {
        this.lastMethodOfContraception = str;
    }

    public Integer getYearOfWedding() {
        return this.yearOfWedding;
    }

    public void setYearOfWedding(Integer num) {
        this.yearOfWedding = num;
    }

    public Boolean getJsyPaymentGiven() {
        return this.jsyPaymentGiven;
    }

    public void setJsyPaymentGiven(Boolean bool) {
        this.jsyPaymentGiven = bool;
    }

    public Boolean getEarlyRegistration() {
        return this.isEarlyRegistration;
    }

    public void setEarlyRegistration(Boolean bool) {
        this.isEarlyRegistration = bool;
    }

    public Boolean getJsyBeneficiary() {
        return this.jsyBeneficiary;
    }

    public void setJsyBeneficiary(Boolean bool) {
        this.jsyBeneficiary = bool;
    }

    public Boolean getIayBeneficiary() {
        return this.iayBeneficiary;
    }

    public void setIayBeneficiary(Boolean bool) {
        this.iayBeneficiary = bool;
    }

    public Boolean getKpsyBeneficiary() {
        return this.kpsyBeneficiary;
    }

    public void setKpsyBeneficiary(Boolean bool) {
        this.kpsyBeneficiary = bool;
    }

    public Boolean getChiranjeeviYojnaBeneficiary() {
        return this.chiranjeeviYojnaBeneficiary;
    }

    public void setChiranjeeviYojnaBeneficiary(Boolean bool) {
        this.chiranjeeviYojnaBeneficiary = bool;
    }

    public Float getHaemoglobin() {
        return this.haemoglobin;
    }

    public void setHaemoglobin(Float f) {
        this.haemoglobin = f;
    }

    public Float getWeight() {
        return this.weight;
    }

    public void setWeight(Float f) {
        this.weight = f;
    }

    public Long getEdd() {
        return this.edd;
    }

    public void setEdd(Long l) {
        this.edd = l;
    }

    public String getAncVisitDates() {
        return this.ancVisitDates;
    }

    public void setAncVisitDates(String str) {
        this.ancVisitDates = str;
    }

    public String getImmunisationGiven() {
        return this.immunisationGiven;
    }

    public void setImmunisationGiven(String str) {
        this.immunisationGiven = str;
    }

    public String getBloodGroup() {
        return this.bloodGroup;
    }

    public void setBloodGroup(String str) {
        this.bloodGroup = str;
    }

    public String getPlaceOfBirth() {
        return this.placeOfBirth;
    }

    public void setPlaceOfBirth(String str) {
        this.placeOfBirth = str;
    }

    public Float getBirthWeight() {
        return this.birthWeight;
    }

    public void setBirthWeight(Float f) {
        this.birthWeight = f;
    }

    public Long getMotherId() {
        return this.motherId;
    }

    public void setMotherId(Long l) {
        this.motherId = l;
    }

    public String getMotherName() {
        return this.motherName;
    }

    public void setMotherName(String str) {
        this.motherName = str;
    }

    public Boolean getComplementaryFeedingStarted() {
        return this.complementaryFeedingStarted;
    }

    public void setComplementaryFeedingStarted(Boolean bool) {
        this.complementaryFeedingStarted = bool;
    }

    public Boolean getHighRiskCase() {
        return this.isHighRiskCase;
    }

    public void setHighRiskCase(Boolean bool) {
        this.isHighRiskCase = bool;
    }

    public Boolean getIsVeryHighRiskCase() {
        return this.isVeryHighRiskCase;
    }

    public void setVeryHighRiskCase(Boolean bool) {
        this.isVeryHighRiskCase = bool;
    }

    public Long getCurPregRegDetId() {
        return this.curPregRegDetId;
    }

    public void setCurPregRegDetId(Long l) {
        this.curPregRegDetId = l;
    }

    public Long getCurPregRegDate() {
        return this.curPregRegDate;
    }

    public void setCurPregRegDate(Long l) {
        this.curPregRegDate = l;
    }

    public Boolean getMenopauseArrived() {
        return this.menopauseArrived;
    }

    public void setMenopauseArrived(Boolean bool) {
        this.menopauseArrived = bool;
    }

    public String getSyncStatus() {
        return this.syncStatus;
    }

    public void setSyncStatus(String str) {
        this.syncStatus = str;
    }

    public Boolean getIucdRemoved() {
        return this.isIucdRemoved;
    }

    public void setIucdRemoved(Boolean bool) {
        this.isIucdRemoved = bool;
    }

    public Long getIucdRemovalDate() {
        return this.iucdRemovalDate;
    }

    public void setIucdRemovalDate(Long l) {
        this.iucdRemovalDate = l;
    }

    public Long getLastDeliveryDate() {
        return this.lastDeliveryDate;
    }

    public void setLastDeliveryDate(Long l) {
        this.lastDeliveryDate = l;
    }

    public Boolean getHysterectomyDone() {
        return this.hysterectomyDone;
    }

    public void setHysterectomyDone(Boolean bool) {
        this.hysterectomyDone = bool;
    }

    public String getChildNrcCmtcStatus() {
        return this.childNrcCmtcStatus;
    }

    public void setChildNrcCmtcStatus(String str) {
        this.childNrcCmtcStatus = str;
    }

    public String getLastDeliveryOutcome() {
        return this.lastDeliveryOutcome;
    }

    public void setLastDeliveryOutcome(String str) {
        this.lastDeliveryOutcome = str;
    }

    public String getPreviousPregnancyComplication() {
        return this.previousPregnancyComplication;
    }

    public void setPreviousPregnancyComplication(String str) {
        this.previousPregnancyComplication = str;
    }

    public String getAdditionalInfo() {
        return this.additionalInfo;
    }

    public void setAdditionalInfo(String str) {
        this.additionalInfo = str;
        if (str != null) {
            new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create();
        }
    }

    public Boolean getFhsrPhoneVerified() {
        return this.fhsrPhoneVerified;
    }

    public void setFhsrPhoneVerified(Boolean bool) {
        this.fhsrPhoneVerified = bool;
    }

    public Long getHusbandId() {
        return this.husbandId;
    }

    public void setHusbandId(Long l) {
        this.husbandId = l;
    }

    public Boolean getMobileNumberVerified() {
        return this.isMobileNumberVerified;
    }

    public void setMobileNumberVerified(Boolean bool) {
        this.isMobileNumberVerified = bool;
    }

    public String getRelationWithHof() {
        return this.relationWithHof;
    }

    public void setRelationWithHof(String str) {
        this.relationWithHof = str;
    }

    public Long getCbacDate() {
        return this.cbacDate;
    }

    public void setCbacDate(Long l) {
        this.cbacDate = l;
    }

    public String getHypYear() {
        return this.hypYear;
    }

    public void setHypYear(String str) {
        this.hypYear = str;
    }

    public String getOralYear() {
        return this.oralYear;
    }

    public void setOralYear(String str) {
        this.oralYear = str;
    }

    public String getDiabetesYear() {
        return this.diabetesYear;
    }

    public void setDiabetesYear(String str) {
        this.diabetesYear = str;
    }

    public String getBreastYear() {
        return this.breastYear;
    }

    public void setBreastYear(String str) {
        this.breastYear = str;
    }

    public String getCervicalYear() {
        return this.cervicalYear;
    }

    public void setCervicalYear(String str) {
        this.cervicalYear = str;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getHealthIdNumber() {
        return this.healthIdNumber;
    }

    public void setHealthIdNumber(String str) {
        this.healthIdNumber = str;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public void setMemberId(String str) {
        this.memberId = str;
    }

    public String getServiceLocation() {
        return this.serviceLocation;
    }

    public void setServiceLocation(String str) {
        this.serviceLocation = str;
    }

    public String getCounsellingDone() {
        return this.counsellingDone;
    }

    public void setCounsellingDone(String str) {
        this.counsellingDone = str;
    }

    public Boolean getHaemoglobinMeasured() {
        return this.isHaemoglobinMeasured;
    }

    public void setHaemoglobinMeasured(Boolean bool) {
        this.isHaemoglobinMeasured = bool;
    }

    public Integer getIfaTabTakenLastMonth() {
        return this.ifaTabTakenLastMonth;
    }

    public void setIfaTabTakenLastMonth(Integer num) {
        this.ifaTabTakenLastMonth = num;
    }

    public Integer getIfaTabTakenNow() {
        return this.ifaTabTakenNow;
    }

    public void setIfaTabTakenNow(Integer num) {
        this.ifaTabTakenNow = num;
    }

    public String getAbsorbentMaterialUsed() {
        return this.absorbentMaterialUsed;
    }

    public void setAbsorbentMaterialUsed(String str) {
        this.absorbentMaterialUsed = str;
    }

    public Boolean getSanitaryPadGiven() {
        return this.isSanitaryPadGiven;
    }

    public void setSanitaryPadGiven(Boolean bool) {
        this.isSanitaryPadGiven = bool;
    }

    public Integer getNumberOfSanitaryPadsGiven() {
        return this.numberOfSanitaryPadsGiven;
    }

    public void setNumberOfSanitaryPadsGiven(Integer num) {
        this.numberOfSanitaryPadsGiven = num;
    }

    public Boolean getHavingMenstrualProblem() {
        return this.isHavingMenstrualProblem;
    }

    public void setHavingMenstrualProblem(Boolean bool) {
        this.isHavingMenstrualProblem = bool;
    }

    public String getIssueWithMenstruation() {
        return this.issueWithMenstruation;
    }

    public void setIssueWithMenstruation(String str) {
        this.issueWithMenstruation = str;
    }

    public Boolean getTDInjectionGiven() {
        return this.isTDInjectionGiven;
    }

    public void setTDInjectionGiven(Boolean bool) {
        this.isTDInjectionGiven = bool;
    }

    public Long getTdInjectionDate() {
        return this.tdInjectionDate;
    }

    public void setTdInjectionDate(Long l) {
        this.tdInjectionDate = l;
    }

    public Boolean getAlbandazoleGivenInLastSixMonths() {
        return this.isAlbandazoleGivenInLastSixMonths;
    }

    public void setAlbandazoleGivenInLastSixMonths(Boolean bool) {
        this.isAlbandazoleGivenInLastSixMonths = bool;
    }

    public Long getAdolescentScreeningDate() {
        return this.adolescentScreeningDate;
    }

    public void setAdolescentScreeningDate(Long l) {
        this.adolescentScreeningDate = l;
    }

    public Integer getHeight() {
        return this.height;
    }

    public void setHeight(Integer num) {
        this.height = num;
    }

    public Boolean getPeriodStarted() {
        return this.isPeriodStarted;
    }

    public void setPeriodStarted(Boolean bool) {
        this.isPeriodStarted = bool;
    }

    public Long getSchoolActualId() {
        return this.schoolActualId;
    }

    public void setSchoolActualId(Long l) {
        this.schoolActualId = l;
    }

    public Long getAnganwadiId() {
        return this.anganwadiId;
    }

    public void setAnganwadiId(Long l) {
        this.anganwadiId = l;
    }

    public String getAreaId() {
        return this.areaId;
    }

    public void setAreaId(String str) {
        this.areaId = str;
    }

    public String getPmjayNumber() {
        return this.pmjayNumber;
    }

    public void setPmjayNumber(String str) {
        this.pmjayNumber = str;
    }

    public Boolean getMalariaExamined() {
        return this.malariaExamined;
    }

    public void setMalariaExamined(Boolean bool) {
        this.malariaExamined = bool;
    }

    public Boolean getMalariaTestResult() {
        return this.malariaTestResult;
    }

    public void setMalariaTestResult(Boolean bool) {
        this.malariaTestResult = bool;
    }

    public Boolean getIronPillFlag() {
        return this.ironPillFlag;
    }

    public void setIronPillFlag(Boolean bool) {
        this.ironPillFlag = bool;
    }

    public String getRelationWithIdHolder() {
        return this.relationWithIdHolder;
    }

    public void setRelationWithIdHolder(String str) {
        this.relationWithIdHolder = str;
    }

    public String getIdType() {
        return this.idType;
    }

    public void setIdType(String str) {
        this.idType = str;
    }

    public String getIdNumber() {
        return this.idNumber;
    }

    public void setIdNumber(String str) {
        this.idNumber = str;
    }

    public String getNameAsPerBankAccount() {
        return this.nameAsPerBankAccount;
    }

    public void setNameAsPerBankAccount(String str) {
        this.nameAsPerBankAccount = str;
    }

    public String getNamoshreeRejectionComment() {
        return this.namoshreeRejectionComment;
    }

    public void setNamoshreeRejectionComment(String str) {
        this.namoshreeRejectionComment = str;
    }

    public Integer getAbortionCount() {
        return this.abortionCount;
    }

    public void setAbortionCount(Integer num) {
        this.abortionCount = num;
    }

    public Boolean getPrevAbortion() {
        return this.isPrevAbortion;
    }

    public void setPrevAbortion(Boolean bool) {
        this.isPrevAbortion = bool;
    }

    public String getNamoshreeDistRejectionComment() {
        return this.namoshreeDistRejectionComment;
    }

    public void setNamoshreeDistRejectionComment(String str) {
        this.namoshreeDistRejectionComment = str;
    }

    public Integer getDeliveryCount() {
        return this.deliveryCount;
    }

    public void setDeliveryCount(Integer num) {
        this.deliveryCount = num;
    }

    public Integer getTotalBirthCount() {
        return this.totalBirthCount;
    }

    public void setTotalBirthCount(Integer num) {
        this.totalBirthCount = num;
    }

    public Long getMalariaServiceDate() {
        return this.malariaServiceDate;
    }

    public void setMalariaServiceDate(Long l) {
        this.malariaServiceDate = l;
    }

    public Integer getDueVaccinesCount() {
        return this.dueVaccinesCount;
    }

    public void setDueVaccinesCount(Integer num) {
        this.dueVaccinesCount = num;
    }

    public String getDueVaccines() {
        return this.dueVaccines;
    }

    public void setDueVaccines(String str) {
        this.dueVaccines = str;
    }

    public String getFatherName() {
        return this.fatherName;
    }

    public void setFatherName(String str) {
        this.fatherName = str;
    }

    public String getHusbandName() {
        return this.husbandName;
    }

    public void setHusbandName(String str) {
        this.husbandName = str;
    }

    public String getReligion() {
        return this.religion;
    }

    public void setReligion(String str) {
        this.religion = str;
    }

    public String getCaste() {
        return this.caste;
    }

    public void setCaste(String str) {
        this.caste = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public Boolean getSentByAshaForNPCB() {
        return this.isSentByAshaForNPCB;
    }

    public void setSentByAshaForNPCB(Boolean bool) {
        this.isSentByAshaForNPCB = bool;
    }

    public Boolean getReferredByOA() {
        return this.isReferredByOA;
    }

    public void setReferredByOA(Boolean bool) {
        this.isReferredByOA = bool;
    }

    public String getFamilyActualId() {
        return this.familyActualId;
    }

    public void setFamilyActualId(String str) {
        this.familyActualId = str;
    }

    public Integer getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Integer num) {
        this.notificationId = num;
    }

    public Long getNotScheduleDate() {
        return this.notScheduleDate;
    }

    public void setNotScheduleDate(Long l) {
        this.notScheduleDate = l;
    }

    public Long getNotDueDate() {
        return this.notDueDate;
    }

    public void setNotDueDate(Long l) {
        this.notDueDate = l;
    }

    public String getSymptomsExperienced() {
        return this.symptomsExperienced;
    }

    public void setSymptomsExperienced(String str) {
        this.symptomsExperienced = str;
    }

    public String getMedicalHistory() {
        return this.medicalHistory;
    }

    public void setMedicalHistory(String str) {
        this.medicalHistory = str;
    }

    public String getFamilyMedicalHistory() {
        return this.familyMedicalHistory;
    }

    public void setFamilyMedicalHistory(String str) {
        this.familyMedicalHistory = str;
    }

    public String getVisionWithSpectsRE() {
        return this.visionWithSpectsRE;
    }

    public void setVisionWithSpectsRE(String str) {
        this.visionWithSpectsRE = str;
    }

    public String getVisionWithSpectsLE() {
        return this.visionWithSpectsLE;
    }

    public void setVisionWithSpectsLE(String str) {
        this.visionWithSpectsLE = str;
    }

    public String getVisionWithoutSpectsRE() {
        return this.visionWithoutSpectsRE;
    }

    public void setVisionWithoutSpectsRE(String str) {
        this.visionWithoutSpectsRE = str;
    }

    public String getVisionWithoutSpectsLE() {
        return this.visionWithoutSpectsLE;
    }

    public void setVisionWithoutSpectsLE(String str) {
        this.visionWithoutSpectsLE = str;
    }

    public String getRefErrorNearVisionLe() {
        return this.refErrorNearVisionLe;
    }

    public void setRefErrorNearVisionLe(String str) {
        this.refErrorNearVisionLe = str;
    }

    public String getRefErrorNearVisionRe() {
        return this.refErrorNearVisionRe;
    }

    public void setRefErrorNearVisionRe(String str) {
        this.refErrorNearVisionRe = str;
    }

    public String getRefErrorDistantVisionLe() {
        return this.refErrorDistantVisionLe;
    }

    public void setRefErrorDistantVisionLe(String str) {
        this.refErrorDistantVisionLe = str;
    }

    public String getRefErrorDistantVisionRe() {
        return this.refErrorDistantVisionRe;
    }

    public void setRefErrorDistantVisionRe(String str) {
        this.refErrorDistantVisionRe = str;
    }

    public String getPresumptiveDiagnosis() {
        return this.presumptiveDiagnosis;
    }

    public void setPresumptiveDiagnosis(String str) {
        this.presumptiveDiagnosis = str;
    }

    public String getLabTestMalariaRefStatus() {
        return this.labTestMalariaRefStatus;
    }

    public void setLabTestMalariaRefStatus(String str) {
        this.labTestMalariaRefStatus = str;
    }

    public String getLabTestMalariaRefBy() {
        return this.labTestMalariaRefBy;
    }

    public void setLabTestMalariaRefBy(String str) {
        this.labTestMalariaRefBy = str;
    }

    public String getCurrentFamilyPlanningMethod() {
        return this.currentFamilyPlanningMethod;
    }

    public void setCurrentFamilyPlanningMethod(String str) {
        this.currentFamilyPlanningMethod = str;
    }

    public String getBrnNumber() {
        return this.brnNumber;
    }

    public void setBrnNumber(String str) {
        this.brnNumber = str;
    }

    public Boolean getMrGiven() {
        return this.mrGiven;
    }

    public void setMrGiven(Boolean bool) {
        this.mrGiven = bool;
    }

    public String getImtMemberNpcbStatus() {
        return this.imtMemberNpcbStatus;
    }

    public void setImtMemberNpcbStatus(String str) {
        this.imtMemberNpcbStatus = str;
    }

    public String getBplCardNumber() {
        return this.bplCardNumber;
    }

    public void setBplCardNumber(String str) {
        this.bplCardNumber = str;
    }
}
