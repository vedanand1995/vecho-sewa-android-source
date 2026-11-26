package com.argusoft.sewa.android.app.model;

import android.util.Log;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MemberBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String aadharNumber;

    @DatabaseField
    private Integer abortionCount;

    @DatabaseField
    private String accountNumber;

    @DatabaseField(index = true)
    private String actualId;

    @DatabaseField
    private String additionalInfo;

    @DatabaseField
    private Date adolescentScreeningDate;

    @DatabaseField
    private String ancVisitDates;

    @DatabaseField
    private Float birthWeight;

    @DatabaseField
    private String bloodGroup;

    @DatabaseField
    private String breastYear;

    @DatabaseField
    private String brnNumber;

    @DatabaseField
    private Date cbacDate;

    @DatabaseField
    private String cervicalYear;

    @DatabaseField
    private String childNrcCmtcStatus;

    @DatabaseField
    private Boolean chiranjeeviYojnaBeneficiary;

    @DatabaseField
    private String chronicDiseaseIds;

    @DatabaseField
    private Boolean complementaryFeedingStarted;

    @DatabaseField
    private String congenitalAnomalyIds;

    @DatabaseField
    private String createdBy;

    @DatabaseField
    private Date createdOn;

    @DatabaseField
    private Date curPregRegDate;

    @DatabaseField
    private Long curPregRegDetId;

    @DatabaseField
    private String currentDiseaseIds;

    @DatabaseField
    private String currentFamilyPlanningMethod;

    @DatabaseField
    private Short currentGravida;

    @DatabaseField
    private Short currentPara;

    @DatabaseField
    private Date dateOfWedding;

    @DatabaseField
    private Integer deliveryCount;

    @DatabaseField
    private String diabetesYear;

    @DatabaseField
    private Date dob;

    @DatabaseField
    private Date edd;

    @DatabaseField
    private String educationStatus;

    @DatabaseField
    private Long elderlyCareScreeningDate;

    @DatabaseField
    private String eyeIssueIds;

    @DatabaseField(index = true)
    private Boolean familyHeadFlag;

    @DatabaseField(index = true)
    private String familyId;

    @DatabaseField
    private String familyPlanningMethod;

    @DatabaseField
    private Boolean fhsrPhoneVerified;

    @DatabaseField
    private Boolean filariaSideEffectsSubmitted;

    @DatabaseField
    private Boolean filariaSuspected;

    @DatabaseField
    private String firstName;

    @DatabaseField
    private Date fpInsertOperateDate;

    @DatabaseField
    private String gender;

    @DatabaseField
    private String grandfatherName;

    @DatabaseField
    private Float haemoglobin;

    @DatabaseField
    private Boolean hasAshaReferredCHO;

    @DatabaseField
    private Boolean hasCHOFollowUpSentToOA;

    @DatabaseField
    private Boolean hasCHOReferredOA;

    @DatabaseField
    private Boolean hasOAFollowUpSentToCHO;

    @DatabaseField
    private Boolean hasOASentToCHO;

    @DatabaseField
    private String healthId;

    @DatabaseField
    private String healthIdNumber;

    @DatabaseField
    private Long husbandId;

    @DatabaseField
    private String hypYear;

    @DatabaseField
    private Boolean hysterectomyDone;

    @DatabaseField
    private Boolean iayBeneficiary;

    @DatabaseField
    private String idNumber;

    @DatabaseField
    private String idType;

    @DatabaseField
    private String ifsc;

    @DatabaseField
    private String immunisationGiven;

    @DatabaseField
    private String imtMemberNpcbStatus;

    @DatabaseField
    private boolean isAadharUpdated;

    @DatabaseField
    private Boolean isEarlyRegistration;

    @DatabaseField
    private Boolean isExaminedByAsha;

    @DatabaseField
    private Boolean isExaminedByCHO;

    @DatabaseField
    private Boolean isHighRiskCase;

    @DatabaseField
    private Boolean isIucdRemoved;

    @DatabaseField
    private Boolean isMobileNumberVerified;

    @DatabaseField
    private Boolean isNpcbFollowUpDone;

    @DatabaseField
    private Boolean isPregnantFlag;

    @DatabaseField
    private Boolean isPrevAbortion;

    @DatabaseField
    private Boolean isReferredByOA;

    @DatabaseField
    private Boolean isSentByAshaForNPCB;

    @DatabaseField
    private Boolean isVeryHighRiskCase;

    @DatabaseField
    private Date iucdRemovalDate;

    @DatabaseField
    private Boolean jsyBeneficiary;

    @DatabaseField
    private Boolean jsyPaymentGiven;

    @DatabaseField
    private Boolean kpsyBeneficiary;

    @DatabaseField
    private String labTestMalariaRefBy;

    @DatabaseField
    private String labTestMalariaRefStatus;

    @DatabaseField
    private Date lastDeliveryDate;

    @DatabaseField
    private String lastDeliveryOutcome;

    @DatabaseField
    private String lastMethodOfContraception;

    @DatabaseField
    private String lastName;

    @DatabaseField
    private Boolean lcdcSurveySuspected;

    @DatabaseField
    private Boolean lcdcSuspected;

    @DatabaseField
    private Date lmpDate;

    @DatabaseField
    private String maaVatsalyaCardNumber;

    @DatabaseField
    private Boolean malariaExamined;

    @DatabaseField
    private Date malariaServiceDate;

    @DatabaseField
    private Boolean malariaTestResult;

    @DatabaseField
    private String maritalStatus;

    @DatabaseField
    private Boolean menopauseArrived;

    @DatabaseField
    private Long mentalHealthScreeningDate;

    @DatabaseField
    private String middleName;

    @DatabaseField
    private String mobileNumber;

    @DatabaseField
    private Long motherId;

    @DatabaseField
    private Boolean mrGiven;

    @DatabaseField
    private String nameAsPerBankAccount;

    @DatabaseField
    private String nameBasedOnAadhar;

    @DatabaseField
    private Integer normalCycleDays;

    @DatabaseField
    private Date npcbScreeningDate;

    @DatabaseField
    private String npcbStatus;

    @DatabaseField
    private String oralYear;

    @DatabaseField
    private String placeOfBirth;

    @DatabaseField
    private String previousPregnancyComplication;

    @DatabaseField
    private String rchId;

    @DatabaseField
    private String relationWithHof;

    @DatabaseField
    private String relationWithIdHolder;

    @DatabaseField
    private String state;

    @DatabaseField
    private String syncStatus;

    @DatabaseField
    private Integer totalBirthCount;

    @DatabaseField
    private String type;

    @DatabaseField(index = true)
    private String uniqueHealthId;

    @DatabaseField
    private String updatedBy;

    @DatabaseField
    private Date updatedOn;

    @DatabaseField
    private Float weight;

    @DatabaseField
    private Integer yearOfWedding;

    public MemberBean() {
    }

    public MemberBean(MemberDataBean memberDataBean) {
        this.actualId = memberDataBean.getId();
        this.familyId = memberDataBean.getFamilyId();
        this.rchId = memberDataBean.getRchId();
        this.firstName = memberDataBean.getFirstName();
        this.middleName = memberDataBean.getMiddleName();
        this.lastName = memberDataBean.getLastName();
        this.gender = memberDataBean.getGender();
        this.maritalStatus = memberDataBean.getMaritalStatus();
        this.aadharNumber = memberDataBean.getAadharNumber();
        this.isAadharUpdated = memberDataBean.isAadharUpdated();
        this.mobileNumber = memberDataBean.getMobileNumber();
        this.familyHeadFlag = memberDataBean.getFamilyHeadFlag();
        this.uniqueHealthId = memberDataBean.getUniqueHealthId();
        this.ifsc = memberDataBean.getIfsc();
        this.accountNumber = memberDataBean.getAccountNumber();
        this.maaVatsalyaCardNumber = memberDataBean.getMaaVatsalyaCardNumber();
        this.isPregnantFlag = memberDataBean.getIsPregnantFlag();
        this.normalCycleDays = memberDataBean.getNormalCycleDays();
        this.familyPlanningMethod = memberDataBean.getFamilyPlanningMethod();
        this.type = memberDataBean.getType();
        this.state = memberDataBean.getState();
        this.createdBy = memberDataBean.getCreatedBy();
        this.updatedBy = memberDataBean.getUpdatedBy();
        this.grandfatherName = memberDataBean.getGrandfatherName();
        this.nameBasedOnAadhar = memberDataBean.getNameBasedOnAadhar();
        this.educationStatus = memberDataBean.getEducationStatus();
        this.congenitalAnomalyIds = memberDataBean.getCongenitalAnomalyIds();
        this.eyeIssueIds = memberDataBean.getEyeIssueIds();
        this.chronicDiseaseIds = memberDataBean.getChronicDiseaseIds();
        this.currentDiseaseIds = memberDataBean.getCurrentDiseaseIds();
        this.lastMethodOfContraception = memberDataBean.getLastMethodOfContraception();
        this.yearOfWedding = memberDataBean.getYearOfWedding();
        this.jsyPaymentGiven = memberDataBean.getJsyPaymentGiven();
        this.isEarlyRegistration = memberDataBean.getEarlyRegistration();
        this.jsyBeneficiary = memberDataBean.getJsyBeneficiary();
        this.iayBeneficiary = memberDataBean.getIayBeneficiary();
        this.kpsyBeneficiary = memberDataBean.getKpsyBeneficiary();
        this.chiranjeeviYojnaBeneficiary = memberDataBean.getChiranjeeviYojnaBeneficiary();
        this.haemoglobin = memberDataBean.getHaemoglobin();
        this.weight = memberDataBean.getWeight();
        this.ancVisitDates = memberDataBean.getAncVisitDates();
        this.immunisationGiven = memberDataBean.getImmunisationGiven();
        this.bloodGroup = memberDataBean.getBloodGroup();
        this.birthWeight = memberDataBean.getBirthWeight();
        this.placeOfBirth = memberDataBean.getPlaceOfBirth();
        this.motherId = memberDataBean.getMotherId();
        this.complementaryFeedingStarted = memberDataBean.getComplementaryFeedingStarted();
        this.isHighRiskCase = memberDataBean.getHighRiskCase();
        this.isVeryHighRiskCase = memberDataBean.getIsVeryHighRiskCase();
        this.curPregRegDetId = memberDataBean.getCurPregRegDetId();
        this.menopauseArrived = memberDataBean.getMenopauseArrived();
        this.syncStatus = memberDataBean.getSyncStatus();
        this.isIucdRemoved = memberDataBean.getIucdRemoved();
        this.hysterectomyDone = memberDataBean.getHysterectomyDone();
        this.childNrcCmtcStatus = memberDataBean.getChildNrcCmtcStatus();
        this.lastDeliveryOutcome = memberDataBean.getLastDeliveryOutcome();
        this.previousPregnancyComplication = memberDataBean.getPreviousPregnancyComplication();
        this.additionalInfo = memberDataBean.getAdditionalInfo();
        this.fhsrPhoneVerified = memberDataBean.getFhsrPhoneVerified();
        this.currentGravida = memberDataBean.getCurrentGravida();
        this.currentPara = memberDataBean.getCurrentPara();
        this.husbandId = memberDataBean.getHusbandId();
        this.isMobileNumberVerified = memberDataBean.getMobileNumberVerified();
        this.relationWithHof = memberDataBean.getRelationWithHof();
        this.hypYear = memberDataBean.getHypYear();
        this.diabetesYear = memberDataBean.getDiabetesYear();
        this.oralYear = memberDataBean.getOralYear();
        this.breastYear = memberDataBean.getBreastYear();
        this.cervicalYear = memberDataBean.getCervicalYear();
        this.healthId = memberDataBean.getHealthId();
        this.healthIdNumber = memberDataBean.getHealthIdNumber();
        this.malariaTestResult = memberDataBean.getMalariaTestResult();
        this.malariaExamined = memberDataBean.getMalariaExamined();
        this.relationWithIdHolder = memberDataBean.getRelationWithIdHolder();
        if (memberDataBean.getMalariaServiceDate() != null) {
            this.malariaServiceDate = new Date(memberDataBean.getMalariaServiceDate().longValue());
        }
        this.idType = memberDataBean.getIdType();
        this.idNumber = memberDataBean.getIdNumber();
        this.nameAsPerBankAccount = memberDataBean.getNameAsPerBankAccount();
        this.abortionCount = memberDataBean.getAbortionCount();
        this.isPrevAbortion = memberDataBean.getPrevAbortion();
        this.deliveryCount = memberDataBean.getDeliveryCount();
        this.totalBirthCount = memberDataBean.getTotalBirthCount();
        this.brnNumber = memberDataBean.getBrnNumber();
        if (memberDataBean.getAdditionalInfo() != null) {
            try {
                MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) new GsonBuilder().registerTypeAdapter(Date.class, UtilBean.JSON_DATE_DESERIALIZER).create().fromJson(memberDataBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
                this.adolescentScreeningDate = memberAdditionalInfoDataBean.getAdolescentScreeningDateInLong() != null ? new Date(memberAdditionalInfoDataBean.getAdolescentScreeningDateInLong().longValue()) : null;
                this.mentalHealthScreeningDate = memberAdditionalInfoDataBean.getMentalHealthScreeningDate();
                this.elderlyCareScreeningDate = memberAdditionalInfoDataBean.getElderlyCareScreeningDate();
                this.labTestMalariaRefStatus = memberAdditionalInfoDataBean.getLabTestMalariaRefStatus();
                this.labTestMalariaRefBy = memberAdditionalInfoDataBean.getLabTestMalariaRefBy();
                this.currentFamilyPlanningMethod = memberAdditionalInfoDataBean.getCurrentFamilyPlanningMethod();
                this.lcdcSuspected = memberAdditionalInfoDataBean.getLcdcSuspected();
                this.lcdcSurveySuspected = memberAdditionalInfoDataBean.getLcdcSurveySuspected();
                this.filariaSuspected = memberAdditionalInfoDataBean.getFilariaSuspected();
                this.filariaSideEffectsSubmitted = memberAdditionalInfoDataBean.getFilariaSideEffectsSubmitted();
                this.mrGiven = memberAdditionalInfoDataBean.getMrGiven();
                this.imtMemberNpcbStatus = memberAdditionalInfoDataBean.getImtMemberNpcbStatus();
            } catch (Exception e) {
                System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
                System.out.println(new Gson().toJson(memberDataBean));
                System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
            }
        }
        if (memberDataBean.getDateOfWedding() != null) {
            this.dateOfWedding = new Date(memberDataBean.getDateOfWedding().longValue());
        }
        if (memberDataBean.getLmpDate() != null) {
            this.lmpDate = new Date(memberDataBean.getLmpDate().longValue());
        }
        if (memberDataBean.getDob() != null) {
            this.dob = new Date(memberDataBean.getDob().longValue());
        }
        if (memberDataBean.getCreatedOn() != null) {
            this.createdOn = new Date(memberDataBean.getCreatedOn().longValue());
        }
        if (memberDataBean.getUpdatedOn() != null) {
            this.updatedOn = new Date(memberDataBean.getUpdatedOn().longValue());
        }
        if (memberDataBean.getEdd() != null) {
            this.edd = new Date(memberDataBean.getEdd().longValue());
        }
        if (memberDataBean.getFpInsertOperateDate() != null) {
            this.fpInsertOperateDate = new Date(memberDataBean.getFpInsertOperateDate().longValue());
        }
        if (memberDataBean.getIucdRemovalDate() != null) {
            this.iucdRemovalDate = new Date(memberDataBean.getIucdRemovalDate().longValue());
        }
        if (memberDataBean.getCurPregRegDate() != null) {
            this.curPregRegDate = new Date(memberDataBean.getCurPregRegDate().longValue());
        }
        if (memberDataBean.getLastDeliveryDate() != null) {
            this.lastDeliveryDate = new Date(memberDataBean.getLastDeliveryDate().longValue());
        }
        if (memberDataBean.getCbacDate() != null) {
            this.cbacDate = new Date(memberDataBean.getCbacDate().longValue());
        }
    }

    public Date getDateOfWedding() {
        return this.dateOfWedding;
    }

    public void setDateOfWedding(Date date) {
        this.dateOfWedding = date;
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

    public String getActualId() {
        return this.actualId;
    }

    public void setActualId(String str) {
        this.actualId = str;
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

    public Date getDob() {
        return this.dob;
    }

    public void setDob(Date date) {
        this.dob = date;
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

    public Date getLmpDate() {
        return this.lmpDate;
    }

    public void setLmpDate(Date date) {
        this.lmpDate = date;
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

    public Date getFpInsertOperateDate() {
        return this.fpInsertOperateDate;
    }

    public void setFpInsertOperateDate(Date date) {
        this.fpInsertOperateDate = date;
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

    public Date getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(Date date) {
        this.createdOn = date;
    }

    public Date getUpdatedOn() {
        return this.updatedOn;
    }

    public void setUpdatedOn(Date date) {
        this.updatedOn = date;
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

    public Date getEdd() {
        return this.edd;
    }

    public void setEdd(Date date) {
        this.edd = date;
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

    public Date getCurPregRegDate() {
        return this.curPregRegDate;
    }

    public void setCurPregRegDate(Date date) {
        this.curPregRegDate = date;
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

    public Date getIucdRemovalDate() {
        return this.iucdRemovalDate;
    }

    public void setIucdRemovalDate(Date date) {
        this.iucdRemovalDate = date;
    }

    public Date getLastDeliveryDate() {
        return this.lastDeliveryDate;
    }

    public void setLastDeliveryDate(Date date) {
        this.lastDeliveryDate = date;
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

    public Date getCbacDate() {
        return this.cbacDate;
    }

    public void setCbacDate(Date date) {
        this.cbacDate = date;
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

    public Date getAdolescentScreeningDate() {
        return this.adolescentScreeningDate;
    }

    public void setAdolescentScreeningDate(Date date) {
        this.adolescentScreeningDate = date;
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

    public Date getMalariaServiceDate() {
        return this.malariaServiceDate;
    }

    public void setMalariaServiceDate(Date date) {
        this.malariaServiceDate = date;
    }

    public Long getMentalHealthScreeningDate() {
        return this.mentalHealthScreeningDate;
    }

    public void setMentalHealthScreeningDate(Long l) {
        this.mentalHealthScreeningDate = l;
    }

    public Long getElderlyCareScreeningDate() {
        return this.elderlyCareScreeningDate;
    }

    public void setElderlyCareScreeningDate(Long l) {
        this.elderlyCareScreeningDate = l;
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

    public Boolean getLcdcSuspected() {
        return this.lcdcSuspected;
    }

    public void setLcdcSuspected(Boolean bool) {
        this.lcdcSuspected = bool;
    }

    public Boolean getLcdcSurveySuspected() {
        return this.lcdcSurveySuspected;
    }

    public void setLcdcSurveySuspected(Boolean bool) {
        this.lcdcSurveySuspected = bool;
    }

    public Boolean getFilariaSuspected() {
        return this.filariaSuspected;
    }

    public void setFilariaSuspected(Boolean bool) {
        this.filariaSuspected = bool;
    }

    public Boolean getFilariaSideEffectsSubmitted() {
        return this.filariaSideEffectsSubmitted;
    }

    public void setFilariaSideEffectsSubmitted(Boolean bool) {
        this.filariaSideEffectsSubmitted = bool;
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

    public String toString() {
        return "MemberBean{actualId=" + this.actualId + ", familyId=" + this.familyId + ", rchId=" + this.rchId + ", firstName=" + this.firstName + ", middleName=" + this.middleName + ", lastName=" + this.lastName + ", gender=" + this.gender + ", maritalStatus=" + this.maritalStatus + ", aadharNumber=" + this.aadharNumber + ", mobileNumber=" + this.mobileNumber + ", familyHeadFlag=" + this.familyHeadFlag + ", dob=" + this.dob + ", uniqueHealthId=" + this.uniqueHealthId + ", ifsc=" + this.ifsc + ", accountNumber=" + this.accountNumber + ", maaVatsalyaCardNumber=" + this.maaVatsalyaCardNumber + ", isPregnantFlag=" + this.isPregnantFlag + ", lmpDate=" + this.lmpDate + ", normalCycleDays=" + this.normalCycleDays + ", familyPlanningMethod=" + this.familyPlanningMethod + ", type=" + this.type + ", state=" + this.state + ", createdBy=" + this.createdBy + ", updatedBy=" + this.updatedBy + ", createdOn=" + this.createdOn + ", updatedOn=" + this.updatedOn + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof MemberBean)) {
            return this.actualId.equals(((MemberBean) obj).actualId);
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
