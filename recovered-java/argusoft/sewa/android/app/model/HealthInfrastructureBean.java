package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class HealthInfrastructureBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Long actualId;

    @DatabaseField
    private String contactNumber;

    @DatabaseField
    private String contactPersonName;

    @DatabaseField
    private String englishName;

    @DatabaseField
    private Boolean forNcd;

    @DatabaseField
    private Boolean isBalsaka;

    @DatabaseField
    private Boolean isBalsakha1;

    @DatabaseField
    private Boolean isBalsakha3;

    @DatabaseField
    private Boolean isBloodBank;

    @DatabaseField
    private Boolean isChiranjeevi;

    @DatabaseField
    private Boolean isCmtc;

    @DatabaseField
    private Boolean isCpConfirmationCenter;

    @DatabaseField
    private Boolean isFru;

    @DatabaseField
    private Boolean isGynaec;

    @DatabaseField
    private Boolean isMaYojna;

    @DatabaseField
    private Boolean isNpcb;

    @DatabaseField
    private Boolean isNrc;

    @DatabaseField
    private Boolean isPediatrician;

    @DatabaseField
    private Boolean isPmjy;

    @DatabaseField
    private Boolean isReferralFacility;

    @DatabaseField
    private Boolean isSncu;

    @DatabaseField
    private Boolean isUsgFacility;

    @DatabaseField
    private Long locationId;

    @DatabaseField
    private Long modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField
    private String state;

    @DatabaseField
    private Long typeId;

    @DatabaseField
    private String typeName;

    public Long getActualId() {
        return this.actualId;
    }

    public void setActualId(Long l) {
        this.actualId = l;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getEnglishName() {
        return this.englishName;
    }

    public void setEnglishName(String str) {
        this.englishName = str;
    }

    public String getContactPersonName() {
        return this.contactPersonName;
    }

    public void setContactPersonName(String str) {
        this.contactPersonName = str;
    }

    public String getContactNumber() {
        return this.contactNumber;
    }

    public void setContactNumber(String str) {
        this.contactNumber = str;
    }

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long l) {
        this.locationId = l;
    }

    public Long getTypeId() {
        return this.typeId;
    }

    public void setTypeId(Long l) {
        this.typeId = l;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }

    public Boolean getNrc() {
        return this.isNrc;
    }

    public void setNrc(Boolean bool) {
        this.isNrc = bool;
    }

    public Boolean getCmtc() {
        return this.isCmtc;
    }

    public void setCmtc(Boolean bool) {
        this.isCmtc = bool;
    }

    public Boolean getFru() {
        return this.isFru;
    }

    public void setFru(Boolean bool) {
        this.isFru = bool;
    }

    public Boolean getSncu() {
        return this.isSncu;
    }

    public void setSncu(Boolean bool) {
        this.isSncu = bool;
    }

    public Boolean getChiranjeevi() {
        return this.isChiranjeevi;
    }

    public void setChiranjeevi(Boolean bool) {
        this.isChiranjeevi = bool;
    }

    public Boolean getBalsaka() {
        return this.isBalsaka;
    }

    public void setBalsaka(Boolean bool) {
        this.isBalsaka = bool;
    }

    public Boolean getPmjy() {
        return this.isPmjy;
    }

    public void setPmjy(Boolean bool) {
        this.isPmjy = bool;
    }

    public Boolean getBloodBank() {
        return this.isBloodBank;
    }

    public void setBloodBank(Boolean bool) {
        this.isBloodBank = bool;
    }

    public Boolean getGynaec() {
        return this.isGynaec;
    }

    public void setGynaec(Boolean bool) {
        this.isGynaec = bool;
    }

    public Boolean getPediatrician() {
        return this.isPediatrician;
    }

    public void setPediatrician(Boolean bool) {
        this.isPediatrician = bool;
    }

    public Boolean getCpConfirmationCenter() {
        return this.isCpConfirmationCenter;
    }

    public void setCpConfirmationCenter(Boolean bool) {
        this.isCpConfirmationCenter = bool;
    }

    public Boolean getForNcd() {
        return this.forNcd;
    }

    public void setForNcd(Boolean bool) {
        this.forNcd = bool;
    }

    public Boolean getBalsakha1() {
        return this.isBalsakha1;
    }

    public void setBalsakha1(Boolean bool) {
        this.isBalsakha1 = bool;
    }

    public Boolean getBalsakha3() {
        return this.isBalsakha3;
    }

    public void setBalsakha3(Boolean bool) {
        this.isBalsakha3 = bool;
    }

    public Boolean getUsgFacility() {
        return this.isUsgFacility;
    }

    public void setUsgFacility(Boolean bool) {
        this.isUsgFacility = bool;
    }

    public Boolean getReferralFacility() {
        return this.isReferralFacility;
    }

    public void setReferralFacility(Boolean bool) {
        this.isReferralFacility = bool;
    }

    public Boolean getMaYojna() {
        return this.isMaYojna;
    }

    public void setMaYojna(Boolean bool) {
        this.isMaYojna = bool;
    }

    public Boolean getNpcb() {
        return this.isNpcb;
    }

    public void setNpcb(Boolean bool) {
        this.isNpcb = bool;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public Long getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Long l) {
        this.modifiedOn = l;
    }

    public String toString() {
        return "HealthInfrastructureBean{actualId=" + this.actualId + ", name='" + this.name + "', englishName='" + this.englishName + "', contactPersonName='" + this.contactPersonName + "', contactNumber='" + this.contactNumber + "', locationId=" + this.locationId + ", typeId=" + this.typeId + ", typeName='" + this.typeName + "', isNrc=" + this.isNrc + ", isCmtc=" + this.isCmtc + ", isFru=" + this.isFru + ", isSncu=" + this.isSncu + ", isChiranjeevi=" + this.isChiranjeevi + ", isBalsaka=" + this.isBalsaka + ", isPmjy=" + this.isPmjy + ", isBloodBank=" + this.isBloodBank + ", isGynaec=" + this.isGynaec + ", isPediatrician=" + this.isPediatrician + ", isCpConfirmationCenter=" + this.isCpConfirmationCenter + ", forNcd=" + this.forNcd + ", state='" + this.state + "', modifiedOn=" + this.modifiedOn + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
