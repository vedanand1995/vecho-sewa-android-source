package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.FamilyBean;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class FamilyDataBean {
    private String address1;
    private String address2;
    private String anganwadiId;
    private Boolean anganwadiUpdateFlag;
    private String annualIncome;
    private Boolean anyMemberCbacDone;
    private String areaId;
    private Long assignedTo;
    private String bplCardNumber;
    private Boolean bplFlag;
    private String caste;
    private String comment;
    private Long contactPersonId;
    private String createdBy;
    private Date createdOn;
    private String drinkingWaterSource;
    private String electricityAvailability;
    private String familyId;
    private Boolean filariaFilled;
    private String fuelForCooking;
    private String headMemberName;
    private String houseNumber;
    private String houseOwnershipStatus;
    private String id;
    private Boolean isReverificationFlag;
    private Boolean isVerifiedFlag;
    private Long lastFhsDate;
    private Long lastFilariaDate;
    private Long lastIdsp2ScreeningDate;
    private Long lastIdspScreeningDate;
    private Long lastMemberNcdScreeningDate;
    private Boolean lcdc02Filled;
    private Boolean lcdcFilled;
    private String locationId;
    private String maaVatsalyaNumber;
    private List<MemberDataBean> members;
    private int pendingAbhaCount;
    private Boolean pvtgFlag;
    private String rationCardNumber;
    private String religion;
    private String rsbyCardNumber;
    private Boolean seasonalMigrantFlag;
    private String state;
    private Boolean toiletAvailableFlag;
    private String type;
    private String typeOfHouse;
    private String typeOfToilet;
    private String updatedBy;
    private Date updatedOn;
    private Boolean upgradedMaaToPmjay;
    private String vehicleDetails;
    private Boolean vulnerableFlag;

    public FamilyDataBean() {
        this.members = new ArrayList();
    }

    public FamilyDataBean(FamilyBean familyBean, List<MemberDataBean> list) {
        this.members = new ArrayList();
        this.id = familyBean.getActualId();
        this.familyId = familyBean.getFamilyId();
        this.houseNumber = familyBean.getHouseNumber();
        this.locationId = familyBean.getLocationId();
        this.address1 = familyBean.getAddress1();
        this.address2 = familyBean.getAddress2();
        this.religion = familyBean.getReligion();
        this.caste = familyBean.getCaste();
        this.pvtgFlag = familyBean.getPvtgFlag();
        this.bplFlag = familyBean.getBplFlag();
        this.anganwadiId = familyBean.getAnganwadiId();
        this.toiletAvailableFlag = familyBean.getToiletAvailableFlag();
        this.isVerifiedFlag = familyBean.getIsVerifiedFlag();
        this.type = familyBean.getType();
        this.state = familyBean.getState();
        this.createdBy = familyBean.getCreatedBy();
        this.updatedBy = familyBean.getUpdatedBy();
        this.createdOn = familyBean.getCreatedOn();
        this.updatedOn = familyBean.getUpdatedOn();
        this.assignedTo = familyBean.getAssignedTo();
        this.members = list;
        this.maaVatsalyaNumber = familyBean.getMaaVatsalyaNumber();
        this.rsbyCardNumber = familyBean.getRsbyCardNumber();
        this.comment = familyBean.getComment();
        this.vulnerableFlag = familyBean.getVulnerableFlag();
        this.seasonalMigrantFlag = familyBean.getSeasonalMigrantFlag();
        this.isReverificationFlag = familyBean.getReverificationFlag();
        this.areaId = familyBean.getAreaId();
        this.contactPersonId = familyBean.getContactPersonId();
        this.anganwadiUpdateFlag = familyBean.getAnganwadiUpdateFlag();
        this.anyMemberCbacDone = familyBean.getAnyMemberCbacDone();
        this.lastFhsDate = familyBean.getLastFhsDate();
        this.lcdcFilled = familyBean.getLcdcFilled();
        this.lcdc02Filled = familyBean.getLcdc02Filled();
        this.filariaFilled = familyBean.getFilariaFilled();
        this.lastFilariaDate = familyBean.getLastFilariaDate();
        this.lastMemberNcdScreeningDate = familyBean.getLastMemberNcdScreeningDate();
        this.rationCardNumber = familyBean.getRationCardNumber();
        this.bplCardNumber = familyBean.getBplCardNumber();
        this.lastIdspScreeningDate = familyBean.getLastIdspScreeningDate();
        this.lastIdsp2ScreeningDate = familyBean.getLastIdsp2ScreeningDate();
        this.typeOfHouse = familyBean.getTypeOfHouse();
        this.typeOfToilet = familyBean.getTypeOfToilet();
        this.electricityAvailability = familyBean.getElectricityAvailability();
        this.drinkingWaterSource = familyBean.getDrinkingWaterSource();
        this.fuelForCooking = familyBean.getFuelForCooking();
        this.vehicleDetails = familyBean.getVehicleDetails();
        this.houseOwnershipStatus = familyBean.getHouseOwnershipStatus();
        this.annualIncome = familyBean.getAnnualIncome();
        this.pendingAbhaCount = familyBean.getPendingAbhaCount();
        this.upgradedMaaToPmjay = familyBean.getUpgradedMaaToPmjay();
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

    public String getHouseNumber() {
        return this.houseNumber;
    }

    public void setHouseNumber(String str) {
        this.houseNumber = str;
    }

    public String getLocationId() {
        return this.locationId;
    }

    public void setLocationId(String str) {
        this.locationId = str;
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

    public Boolean getPvtgFlag() {
        return this.pvtgFlag;
    }

    public void setPvtgFlag(Boolean bool) {
        this.pvtgFlag = bool;
    }

    public Boolean getBplFlag() {
        return this.bplFlag;
    }

    public void setBplFlag(Boolean bool) {
        this.bplFlag = bool;
    }

    public String getAnganwadiId() {
        return this.anganwadiId;
    }

    public void setAnganwadiId(String str) {
        this.anganwadiId = str;
    }

    public Boolean getToiletAvailableFlag() {
        return this.toiletAvailableFlag;
    }

    public void setToiletAvailableFlag(Boolean bool) {
        this.toiletAvailableFlag = bool;
    }

    public Boolean getIsVerifiedFlag() {
        return this.isVerifiedFlag;
    }

    public void setIsVerifiedFlag(Boolean bool) {
        this.isVerifiedFlag = bool;
    }

    public List<MemberDataBean> getMembers() {
        return this.members;
    }

    public void setMembers(List<MemberDataBean> list) {
        this.members = list;
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

    public Long getAssignedTo() {
        return this.assignedTo;
    }

    public void setAssignedTo(Long l) {
        this.assignedTo = l;
    }

    public String getAddress1() {
        return this.address1;
    }

    public void setAddress1(String str) {
        this.address1 = str;
    }

    public String getAddress2() {
        return this.address2;
    }

    public void setAddress2(String str) {
        this.address2 = str;
    }

    public String getMaaVatsalyaNumber() {
        return this.maaVatsalyaNumber;
    }

    public void setMaaVatsalyaNumber(String str) {
        this.maaVatsalyaNumber = str;
    }

    public String getRsbyCardNumber() {
        return this.rsbyCardNumber;
    }

    public void setRsbyCardNumber(String str) {
        this.rsbyCardNumber = str;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public Boolean getVulnerableFlag() {
        return this.vulnerableFlag;
    }

    public void setVulnerableFlag(Boolean bool) {
        this.vulnerableFlag = bool;
    }

    public Boolean getSeasonalMigrantFlag() {
        return this.seasonalMigrantFlag;
    }

    public void setSeasonalMigrantFlag(Boolean bool) {
        this.seasonalMigrantFlag = bool;
    }

    public String getHeadMemberName() {
        return this.headMemberName;
    }

    public void setHeadMemberName(String str) {
        this.headMemberName = str;
    }

    public Boolean getReverificationFlag() {
        return this.isReverificationFlag;
    }

    public void setReverificationFlag(Boolean bool) {
        this.isReverificationFlag = bool;
    }

    public String getAreaId() {
        return this.areaId;
    }

    public void setAreaId(String str) {
        this.areaId = str;
    }

    public Long getContactPersonId() {
        return this.contactPersonId;
    }

    public void setContactPersonId(Long l) {
        this.contactPersonId = l;
    }

    public Boolean getAnganwadiUpdateFlag() {
        return this.anganwadiUpdateFlag;
    }

    public void setAnganwadiUpdateFlag(Boolean bool) {
        this.anganwadiUpdateFlag = bool;
    }

    public Boolean getAnyMemberCbacDone() {
        return this.anyMemberCbacDone;
    }

    public void setAnyMemberCbacDone(Boolean bool) {
        this.anyMemberCbacDone = bool;
    }

    public String getRationCardNumber() {
        return this.rationCardNumber;
    }

    public void setRationCardNumber(String str) {
        this.rationCardNumber = str;
    }

    public String getBplCardNumber() {
        return this.bplCardNumber;
    }

    public void setBplCardNumber(String str) {
        this.bplCardNumber = str;
    }

    public Long getLastFhsDate() {
        return this.lastFhsDate;
    }

    public void setLastFhsDate(Long l) {
        this.lastFhsDate = l;
    }

    public Long getLastMemberNcdScreeningDate() {
        return this.lastMemberNcdScreeningDate;
    }

    public void setLastMemberNcdScreeningDate(Long l) {
        this.lastMemberNcdScreeningDate = l;
    }

    public Long getLastIdspScreeningDate() {
        return this.lastIdspScreeningDate;
    }

    public void setLastIdspScreeningDate(Long l) {
        this.lastIdspScreeningDate = l;
    }

    public Long getLastIdsp2ScreeningDate() {
        return this.lastIdsp2ScreeningDate;
    }

    public void setLastIdsp2ScreeningDate(Long l) {
        this.lastIdsp2ScreeningDate = l;
    }

    public Boolean getVerifiedFlag() {
        return this.isVerifiedFlag;
    }

    public void setVerifiedFlag(Boolean bool) {
        this.isVerifiedFlag = bool;
    }

    public String getTypeOfHouse() {
        return this.typeOfHouse;
    }

    public void setTypeOfHouse(String str) {
        this.typeOfHouse = str;
    }

    public String getTypeOfToilet() {
        return this.typeOfToilet;
    }

    public void setTypeOfToilet(String str) {
        this.typeOfToilet = str;
    }

    public String getElectricityAvailability() {
        return this.electricityAvailability;
    }

    public void setElectricityAvailability(String str) {
        this.electricityAvailability = str;
    }

    public String getDrinkingWaterSource() {
        return this.drinkingWaterSource;
    }

    public void setDrinkingWaterSource(String str) {
        this.drinkingWaterSource = str;
    }

    public String getFuelForCooking() {
        return this.fuelForCooking;
    }

    public void setFuelForCooking(String str) {
        this.fuelForCooking = str;
    }

    public String getVehicleDetails() {
        return this.vehicleDetails;
    }

    public void setVehicleDetails(String str) {
        this.vehicleDetails = str;
    }

    public String getHouseOwnershipStatus() {
        return this.houseOwnershipStatus;
    }

    public void setHouseOwnershipStatus(String str) {
        this.houseOwnershipStatus = str;
    }

    public String getAnnualIncome() {
        return this.annualIncome;
    }

    public void setAnnualIncome(String str) {
        this.annualIncome = str;
    }

    public int getPendingAbhaCount() {
        return this.pendingAbhaCount;
    }

    public void setPendingAbhaCount(int i) {
        this.pendingAbhaCount = i;
    }

    public Boolean getUpgradedMaaToPmjay() {
        return this.upgradedMaaToPmjay;
    }

    public void setUpgradedMaaToPmjay(Boolean bool) {
        this.upgradedMaaToPmjay = bool;
    }

    public Boolean getLcdcFilled() {
        return this.lcdcFilled;
    }

    public void setLcdcFilled(Boolean bool) {
        this.lcdcFilled = bool;
    }

    public Boolean getFilariaFilled() {
        return this.filariaFilled;
    }

    public void setFilariaFilled(Boolean bool) {
        this.filariaFilled = bool;
    }

    public Long getLastFilariaDate() {
        return this.lastFilariaDate;
    }

    public void setLastFilariaDate(Long l) {
        this.lastFilariaDate = l;
    }

    public Boolean getLcdc02Filled() {
        return this.lcdc02Filled;
    }

    public void setLcdc02Filled(Boolean bool) {
        this.lcdc02Filled = bool;
    }

    public String toString() {
        return "FamilyDataBean{id='" + this.id + "', familyId='" + this.familyId + "', houseNumber='" + this.houseNumber + "', locationId='" + this.locationId + "', address1='" + this.address1 + "', address2='" + this.address2 + "', religion='" + this.religion + "', caste='" + this.caste + "', bplFlag=" + this.bplFlag + ", anganwadiId='" + this.anganwadiId + "', toiletAvailableFlag=" + this.toiletAvailableFlag + ", isVerifiedFlag=" + this.isVerifiedFlag + ", members=" + this.members + ", type='" + this.type + "', state='" + this.state + "', createdBy='" + this.createdBy + "', updatedBy='" + this.updatedBy + "', createdOn=" + this.createdOn + ", updatedOn=" + this.updatedOn + ", assignedTo=" + this.assignedTo + ", maaVatsalyaNumber='" + this.maaVatsalyaNumber + "', rsbyCardNumber='" + this.rsbyCardNumber + "', comment='" + this.comment + "', vulnerableFlag=" + this.vulnerableFlag + ", seasonalMigrantFlag=" + this.seasonalMigrantFlag + ", isReverificationFlag=" + this.isReverificationFlag + ", headMemberName='" + this.headMemberName + "', areaId='" + this.areaId + "', contactPersonId=" + this.contactPersonId + ", anganwadiUpdateFlag=" + this.anganwadiUpdateFlag + ", anyMemberCbacDone=" + this.anyMemberCbacDone + ", lastFhsDate=" + this.lastFhsDate + ", lastMemberNcdScreeningDate=" + this.lastMemberNcdScreeningDate + ", rationCardNumber='" + this.rationCardNumber + "', bplCardNumber='" + this.bplCardNumber + "', lastIdspScreeningDate=" + this.lastIdspScreeningDate + ", lastIdsp2ScreeningDate=" + this.lastIdsp2ScreeningDate + ", pendingAbhacount=" + this.pendingAbhaCount + '}';
    }
}
