package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class CovidTravellersInfoBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String address;

    @DatabaseField
    private Integer age;

    @DatabaseField
    private String country;

    @DatabaseField
    private Date dateOfDeparture;

    @DatabaseField
    private Date dateOfReceipt;

    @DatabaseField
    private Integer districtId;

    @DatabaseField
    private String districtName;

    @DatabaseField
    private String flightNo;

    @DatabaseField
    private String gender;

    @DatabaseField
    private String healthStatus;

    @DatabaseField
    private Boolean isActive;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private Integer memberId;

    @DatabaseField
    private String mobileNumber;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField
    private String observation;

    @DatabaseField
    private Integer pinCode;

    @DatabaseField
    private Date trackingStartDate;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public Integer getPinCode() {
        return this.pinCode;
    }

    public void setPinCode(Integer num) {
        this.pinCode = num;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public Boolean getActive() {
        return this.isActive;
    }

    public void setActive(Boolean bool) {
        this.isActive = bool;
    }

    public String getFlightNo() {
        return this.flightNo;
    }

    public void setFlightNo(String str) {
        this.flightNo = str;
    }

    public Integer getAge() {
        return this.age;
    }

    public void setAge(Integer num) {
        this.age = num;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public Integer getDistrictId() {
        return this.districtId;
    }

    public void setDistrictId(Integer num) {
        this.districtId = num;
    }

    public String getDistrictName() {
        return this.districtName;
    }

    public void setDistrictName(String str) {
        this.districtName = str;
    }

    public Date getDateOfDeparture() {
        return this.dateOfDeparture;
    }

    public void setDateOfDeparture(Date date) {
        this.dateOfDeparture = date;
    }

    public Date getDateOfReceipt() {
        return this.dateOfReceipt;
    }

    public void setDateOfReceipt(Date date) {
        this.dateOfReceipt = date;
    }

    public String getHealthStatus() {
        return this.healthStatus;
    }

    public void setHealthStatus(String str) {
        this.healthStatus = str;
    }

    public String getObservation() {
        return this.observation;
    }

    public void setObservation(String str) {
        this.observation = str;
    }

    public Date getTrackingStartDate() {
        return this.trackingStartDate;
    }

    public void setTrackingStartDate(Date date) {
        this.trackingStartDate = date;
    }

    public String toString() {
        return "CovidTravellersInfoBean{actualId=" + this.actualId + ", memberId=" + this.memberId + ", locationId=" + this.locationId + ", name='" + this.name + "', address='" + this.address + "', pinCode=" + this.pinCode + ", mobileNumber='" + this.mobileNumber + "', isActive=" + this.isActive + ", modifiedOn=" + this.modifiedOn + ", flightNo='" + this.flightNo + "', age=" + this.age + ", gender='" + this.gender + "', country='" + this.country + "', districtId=" + this.districtId + ", districtName='" + this.districtName + "', dateOfDeparture=" + this.dateOfDeparture + ", dateOfReceipt=" + this.dateOfReceipt + ", healthStatus='" + this.healthStatus + "', observation='" + this.observation + "', trackingStartDate=" + this.trackingStartDate + '}';
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
