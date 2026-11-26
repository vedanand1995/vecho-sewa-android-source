package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class AdolescentDataBean {
    private String absorbentMaterialUsed;
    private String additionalInfo;
    private Date adolescentScreeningDate;
    private Boolean albandazoleGivenInLastSixMonths;
    private Long anganwadiId;
    private String areaId;
    private String caste;
    private String concatWs;
    private String counsellingDone;
    private Long currentSchool;
    private Integer currentStudyingStandard;
    private Date dob;
    private String familyId;
    private String firstName;
    private String gender;
    private Float haemoglobin;
    private Boolean haemoglobinMeasured;
    private Boolean havingMenstrualProblem;
    private Float height;
    private Integer ifaTabTakenLastMonth;
    private Integer ifaTabTakenNow;
    private String issueWithMenstruation;
    private String lastName;
    private Long memberId;
    private String middleName;
    private Integer noOfSanitaryPadsGiven;
    private Boolean periodStarted;
    private String religion;
    private Boolean sanitaryPadGiven;
    private String schoolActualId;
    private String state;
    private Date tdInjectionDate;
    private Boolean tdInjectionGiven;
    private String uniqueHealthId;
    private Float weight;

    public AdolescentDataBean(String str, String str2, String str3, String str4, String str5, Date date, String str6, String str7, Long l, String str8, Float f, Float f2, Boolean bool, String str9, Float f3, Integer num, Integer num2, Boolean bool2, String str10, Boolean bool3, Integer num3, Boolean bool4, String str11, Boolean bool5, Date date2, Boolean bool6, Date date3, Integer num4, Long l2, String str12, String str13, Long l3, String str14, String str15, String str16) {
        this.uniqueHealthId = str;
        this.familyId = str2;
        this.firstName = str3;
        this.middleName = str4;
        this.lastName = str5;
        this.dob = date;
        this.gender = str6;
        this.state = str7;
        this.memberId = l;
        this.counsellingDone = str8;
        this.height = f;
        this.weight = f2;
        this.haemoglobinMeasured = bool;
        this.additionalInfo = str9;
        this.haemoglobin = f3;
        this.ifaTabTakenLastMonth = num;
        this.ifaTabTakenNow = num2;
        this.periodStarted = bool2;
        this.absorbentMaterialUsed = str10;
        this.sanitaryPadGiven = bool3;
        this.noOfSanitaryPadsGiven = num3;
        this.havingMenstrualProblem = bool4;
        this.issueWithMenstruation = str11;
        this.tdInjectionGiven = bool5;
        this.tdInjectionDate = date2;
        this.albandazoleGivenInLastSixMonths = bool6;
        this.adolescentScreeningDate = date3;
        this.currentStudyingStandard = num4;
        this.currentSchool = l2;
        this.caste = str12;
        this.religion = str13;
        this.anganwadiId = l3;
        this.areaId = str14;
        this.concatWs = str15;
        this.schoolActualId = str16;
    }

    public String getUniqueHealthId() {
        return this.uniqueHealthId;
    }

    public void setUniqueHealthId(String str) {
        this.uniqueHealthId = str;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
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

    public Date getDob() {
        return this.dob;
    }

    public void setDob(Date date) {
        this.dob = date;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public String getCounsellingDone() {
        return this.counsellingDone;
    }

    public void setCounsellingDone(String str) {
        this.counsellingDone = str;
    }

    public Float getHeight() {
        return this.height;
    }

    public void setHeight(Float f) {
        this.height = f;
    }

    public Float getWeight() {
        return this.weight;
    }

    public void setWeight(Float f) {
        this.weight = f;
    }

    public Boolean getHaemoglobinMeasured() {
        return this.haemoglobinMeasured;
    }

    public void setHaemoglobinMeasured(Boolean bool) {
        this.haemoglobinMeasured = bool;
    }

    public String getAdditionalInfo() {
        return this.additionalInfo;
    }

    public void setAdditionalInfo(String str) {
        this.additionalInfo = str;
    }

    public Float getHaemoglobin() {
        return this.haemoglobin;
    }

    public void setHaemoglobin(Float f) {
        this.haemoglobin = f;
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

    public Boolean getPeriodStarted() {
        return this.periodStarted;
    }

    public void setPeriodStarted(Boolean bool) {
        this.periodStarted = bool;
    }

    public String getAbsorbentMaterialUsed() {
        return this.absorbentMaterialUsed;
    }

    public void setAbsorbentMaterialUsed(String str) {
        this.absorbentMaterialUsed = str;
    }

    public Boolean getSanitaryPadGiven() {
        return this.sanitaryPadGiven;
    }

    public void setSanitaryPadGiven(Boolean bool) {
        this.sanitaryPadGiven = bool;
    }

    public Integer getNoOfSanitaryPadsGiven() {
        return this.noOfSanitaryPadsGiven;
    }

    public void setNoOfSanitaryPadsGiven(Integer num) {
        this.noOfSanitaryPadsGiven = num;
    }

    public Boolean getHavingMenstrualProblem() {
        return this.havingMenstrualProblem;
    }

    public void setHavingMenstrualProblem(Boolean bool) {
        this.havingMenstrualProblem = bool;
    }

    public String getIssueWithMenstruation() {
        return this.issueWithMenstruation;
    }

    public void setIssueWithMenstruation(String str) {
        this.issueWithMenstruation = str;
    }

    public Boolean getTdInjectionGiven() {
        return this.tdInjectionGiven;
    }

    public void setTdInjectionGiven(Boolean bool) {
        this.tdInjectionGiven = bool;
    }

    public Date getTdInjectionDate() {
        return this.tdInjectionDate;
    }

    public void setTdInjectionDate(Date date) {
        this.tdInjectionDate = date;
    }

    public Boolean getAlbandazoleGivenInLastSixMonths() {
        return this.albandazoleGivenInLastSixMonths;
    }

    public void setAlbandazoleGivenInLastSixMonths(Boolean bool) {
        this.albandazoleGivenInLastSixMonths = bool;
    }

    public Date getAdolescentScreeningDate() {
        return this.adolescentScreeningDate;
    }

    public void setAdolescentScreeningDate(Date date) {
        this.adolescentScreeningDate = date;
    }

    public Integer getCurrentStudyingStandard() {
        return this.currentStudyingStandard;
    }

    public void setCurrentStudyingStandard(Integer num) {
        this.currentStudyingStandard = num;
    }

    public Long getCurrentSchool() {
        return this.currentSchool;
    }

    public void setCurrentSchool(Long l) {
        this.currentSchool = l;
    }

    public String getCaste() {
        return this.caste;
    }

    public void setCaste(String str) {
        this.caste = str;
    }

    public String getReligion() {
        return this.religion;
    }

    public void setReligion(String str) {
        this.religion = str;
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

    public String getConcatWs() {
        return this.concatWs;
    }

    public void setConcatWs(String str) {
        this.concatWs = str;
    }

    public String getSchoolActualId() {
        return this.schoolActualId;
    }

    public void setSchoolActualId(String str) {
        this.schoolActualId = str;
    }
}
