package com.argusoft.sewa.android.app.databean;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MigrationInDataBean {
    private Map<String, String> aadharMap;
    private String aadharNumber;
    private Long areaId;
    private String bankAccountNumber;
    private List<MemberDataBean> childrensUnder5;
    private Long dob;
    private Long familyId;
    private String fhwOrAshaName;
    private String fhwOrAshaPhone;
    private String firstname;
    private String gender;
    private String healthId;
    private String hofFullName;
    private String ifscCode;
    private Boolean isPregnant;
    private String lastName;
    private Long lmp;
    private String maaVatsalyaNumber;
    private String middleName;
    private Long nearestLocId;
    private Boolean outOfState;
    private String phoneNumber;
    private Long reportedOn;
    private String rsbyNumber;
    private Boolean stayingWithFamily;
    private Integer totalLiveChildren;
    private Long villageId;
    private String villageName;

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Long getNearestLocId() {
        return this.nearestLocId;
    }

    public void setNearestLocId(Long l) {
        this.nearestLocId = l;
    }

    public String getVillageName() {
        return this.villageName;
    }

    public void setVillageName(String str) {
        this.villageName = str;
    }

    public String getFhwOrAshaName() {
        return this.fhwOrAshaName;
    }

    public void setFhwOrAshaName(String str) {
        this.fhwOrAshaName = str;
    }

    public String getFhwOrAshaPhone() {
        return this.fhwOrAshaPhone;
    }

    public void setFhwOrAshaPhone(String str) {
        this.fhwOrAshaPhone = str;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public void setFirstname(String str) {
        this.firstname = str;
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

    public Long getDob() {
        return this.dob;
    }

    public void setDob(Long l) {
        this.dob = l;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getAadharNumber() {
        return this.aadharNumber;
    }

    public void setAadharNumber(String str) {
        this.aadharNumber = str;
    }

    public Map<String, String> getAadharMap() {
        return this.aadharMap;
    }

    public void setAadharMap(Map<String, String> map) {
        this.aadharMap = map;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public Boolean getPregnant() {
        return this.isPregnant;
    }

    public void setPregnant(Boolean bool) {
        this.isPregnant = bool;
    }

    public Long getLmp() {
        return this.lmp;
    }

    public void setLmp(Long l) {
        this.lmp = l;
    }

    public String getBankAccountNumber() {
        return this.bankAccountNumber;
    }

    public void setBankAccountNumber(String str) {
        this.bankAccountNumber = str;
    }

    public String getIfscCode() {
        return this.ifscCode;
    }

    public void setIfscCode(String str) {
        this.ifscCode = str;
    }

    public String getHofFullName() {
        return this.hofFullName;
    }

    public void setHofFullName(String str) {
        this.hofFullName = str;
    }

    public String getMaaVatsalyaNumber() {
        return this.maaVatsalyaNumber;
    }

    public void setMaaVatsalyaNumber(String str) {
        this.maaVatsalyaNumber = str;
    }

    public String getRsbyNumber() {
        return this.rsbyNumber;
    }

    public void setRsbyNumber(String str) {
        this.rsbyNumber = str;
    }

    public Integer getTotalLiveChildren() {
        return this.totalLiveChildren;
    }

    public void setTotalLiveChildren(Integer num) {
        this.totalLiveChildren = num;
    }

    public List<MemberDataBean> getChildrensUnder5() {
        return this.childrensUnder5;
    }

    public void setChildrensUnder5(List<MemberDataBean> list) {
        this.childrensUnder5 = list;
    }

    public Boolean getStayingWithFamily() {
        return this.stayingWithFamily;
    }

    public void setStayingWithFamily(Boolean bool) {
        this.stayingWithFamily = bool;
    }

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }

    public Long getVillageId() {
        return this.villageId;
    }

    public void setVillageId(Long l) {
        this.villageId = l;
    }

    public Long getAreaId() {
        return this.areaId;
    }

    public void setAreaId(Long l) {
        this.areaId = l;
    }

    public Long getReportedOn() {
        return this.reportedOn;
    }

    public void setReportedOn(Long l) {
        this.reportedOn = l;
    }
}
