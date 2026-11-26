package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class FamilyBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String actualId;

    @DatabaseField
    private String address1;

    @DatabaseField
    private String address2;

    @DatabaseField
    private String anganwadiId;

    @DatabaseField
    private Boolean anganwadiUpdateFlag;

    @DatabaseField
    private String annualIncome;

    @DatabaseField
    private Boolean anyMemberCbacDone;

    @DatabaseField(index = true)
    private String areaId;

    @DatabaseField
    private Long assignedTo;

    @DatabaseField
    private String bplCardNumber;

    @DatabaseField
    private Boolean bplFlag;

    @DatabaseField
    private String caste;

    @DatabaseField
    private String comment;

    @DatabaseField
    private Long contactPersonId;

    @DatabaseField
    private String createdBy;

    @DatabaseField
    private Date createdOn;

    @DatabaseField
    private String drinkingWaterSource;

    @DatabaseField
    private String electricityAvailability;

    @DatabaseField(index = true)
    private String familyId;

    @DatabaseField
    private Boolean filariaFilled;

    @DatabaseField
    private String fuelForCooking;

    @DatabaseField
    private String houseNumber;

    @DatabaseField
    private String houseOwnershipStatus;

    @DatabaseField
    private Boolean isReverificationFlag;

    @DatabaseField
    private Boolean isVerifiedFlag;

    @DatabaseField
    private Long lastFhsDate;

    @DatabaseField
    private Long lastFilariaDate;

    @DatabaseField
    private Long lastIdsp2ScreeningDate;

    @DatabaseField
    private Long lastIdspScreeningDate;

    @DatabaseField
    private Long lastMemberNcdScreeningDate;

    @DatabaseField
    private Boolean lcdc02Filled;

    @DatabaseField
    private Boolean lcdcFilled;

    @DatabaseField(indexName = "family_bean_state_location_id_idx")
    private String locationId;

    @DatabaseField
    private String maaVatsalyaNumber;

    @DatabaseField
    private int pendingAbhaCount;

    @DatabaseField
    private Boolean pvtgFlag;

    @DatabaseField
    private String rationCardNumber;

    @DatabaseField
    private String religion;

    @DatabaseField
    private String rsbyCardNumber;

    @DatabaseField
    private Boolean seasonalMigrantFlag;

    @DatabaseField(indexName = "family_bean_state_location_id_idx")
    private String state;

    @DatabaseField
    private Boolean toiletAvailableFlag;

    @DatabaseField
    private String type;

    @DatabaseField
    private String typeOfHouse;

    @DatabaseField
    private String typeOfToilet;

    @DatabaseField
    private String updatedBy;

    @DatabaseField
    private Date updatedOn;

    @DatabaseField
    private Boolean upgradedMaaToPmjay;

    @DatabaseField
    private String vehicleDetails;

    @DatabaseField
    private Boolean vulnerableFlag;

    public FamilyBean() {
    }

    public FamilyBean(FamilyDataBean familyDataBean) {
        this.actualId = familyDataBean.getId();
        this.familyId = familyDataBean.getFamilyId();
        this.houseNumber = familyDataBean.getHouseNumber();
        this.locationId = familyDataBean.getLocationId();
        this.address1 = familyDataBean.getAddress1();
        this.address2 = familyDataBean.getAddress2();
        this.religion = familyDataBean.getReligion();
        this.caste = familyDataBean.getCaste();
        this.pvtgFlag = familyDataBean.getPvtgFlag();
        this.bplFlag = familyDataBean.getBplFlag();
        this.anganwadiId = familyDataBean.getAnganwadiId();
        this.toiletAvailableFlag = familyDataBean.getToiletAvailableFlag();
        this.isVerifiedFlag = familyDataBean.getIsVerifiedFlag();
        this.type = familyDataBean.getType();
        this.state = familyDataBean.getState();
        this.createdBy = familyDataBean.getCreatedBy();
        this.updatedBy = familyDataBean.getUpdatedBy();
        this.createdOn = familyDataBean.getCreatedOn();
        this.updatedOn = familyDataBean.getUpdatedOn();
        this.assignedTo = familyDataBean.getAssignedTo();
        this.maaVatsalyaNumber = familyDataBean.getMaaVatsalyaNumber();
        this.rsbyCardNumber = familyDataBean.getRsbyCardNumber();
        this.comment = familyDataBean.getComment();
        this.vulnerableFlag = familyDataBean.getVulnerableFlag();
        this.seasonalMigrantFlag = familyDataBean.getSeasonalMigrantFlag();
        this.isReverificationFlag = familyDataBean.getReverificationFlag();
        this.areaId = familyDataBean.getAreaId();
        this.contactPersonId = familyDataBean.getContactPersonId();
        this.anganwadiUpdateFlag = familyDataBean.getAnganwadiUpdateFlag();
        this.anyMemberCbacDone = familyDataBean.getAnyMemberCbacDone();
        this.lastFhsDate = familyDataBean.getLastFhsDate();
        this.lastMemberNcdScreeningDate = familyDataBean.getLastMemberNcdScreeningDate();
        this.rationCardNumber = familyDataBean.getRationCardNumber();
        this.bplCardNumber = familyDataBean.getBplCardNumber();
        this.lastIdspScreeningDate = familyDataBean.getLastIdspScreeningDate();
        this.lastIdsp2ScreeningDate = familyDataBean.getLastIdsp2ScreeningDate();
        this.typeOfHouse = familyDataBean.getTypeOfHouse();
        this.typeOfToilet = familyDataBean.getTypeOfToilet();
        this.electricityAvailability = familyDataBean.getElectricityAvailability();
        this.drinkingWaterSource = familyDataBean.getDrinkingWaterSource();
        this.fuelForCooking = familyDataBean.getFuelForCooking();
        this.vehicleDetails = familyDataBean.getVehicleDetails();
        this.houseOwnershipStatus = familyDataBean.getHouseOwnershipStatus();
        this.annualIncome = familyDataBean.getAnnualIncome();
        this.pendingAbhaCount = familyDataBean.getPendingAbhaCount();
        this.upgradedMaaToPmjay = familyDataBean.getUpgradedMaaToPmjay();
        this.lcdcFilled = familyDataBean.getLcdcFilled();
        this.filariaFilled = familyDataBean.getFilariaFilled();
        this.lastFilariaDate = familyDataBean.getLastFilariaDate();
        this.lcdc02Filled = familyDataBean.getLcdc02Filled();
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
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
        return "FamilyBean{actualId=" + this.actualId + ", familyId=" + this.familyId + ", houseNumber=" + this.houseNumber + ", locationId=" + this.locationId + ", address1=" + this.address1 + ", address2=" + this.address2 + ", religion=" + this.religion + ", caste=" + this.caste + ", bplFlag=" + this.bplFlag + ", anganwadiId=" + this.anganwadiId + ", toiletAvailableFlag=" + this.toiletAvailableFlag + ", isVerifiedFlag=" + this.isVerifiedFlag + ", type=" + this.type + ", state=" + this.state + ", createdBy=" + this.createdBy + ", updatedBy=" + this.updatedBy + ", createdOn=" + this.createdOn + ", updatedOn=" + this.updatedOn + ", assignedTo=" + this.assignedTo + ", pendingAbhacount=" + this.pendingAbhaCount + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof FamilyDataBean) {
            return getFamilyId().equals(((FamilyDataBean) obj).getFamilyId());
        }
        if (obj instanceof FamilyBean) {
            return getFamilyId().equals(((FamilyBean) obj).getFamilyId());
        }
        return false;
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return this.familyId.hashCode();
    }
}
