package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class MigrationDetailsDataBean {
    private String childDetails;
    private String familyId;
    private String fhwName;
    private String fhwPhoneNumber;
    private String firstName;
    private String healthId;
    private String lastName;
    private String locationDetails;
    private Long memberId;
    private String middleName;
    private String otherInfo;

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
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

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getFhwName() {
        return this.fhwName;
    }

    public void setFhwName(String str) {
        this.fhwName = str;
    }

    public String getFhwPhoneNumber() {
        return this.fhwPhoneNumber;
    }

    public void setFhwPhoneNumber(String str) {
        this.fhwPhoneNumber = str;
    }

    public String getLocationDetails() {
        return this.locationDetails;
    }

    public void setLocationDetails(String str) {
        this.locationDetails = str;
    }

    public String getOtherInfo() {
        return this.otherInfo;
    }

    public void setOtherInfo(String str) {
        this.otherInfo = str;
    }

    public String getChildDetails() {
        return this.childDetails;
    }

    public void setChildDetails(String str) {
        this.childDetails = str;
    }

    public String toString() {
        return "MigrationDetailsDataBean{memberId=" + this.memberId + ", firstName='" + this.firstName + "', middleName='" + this.middleName + "', lastName='" + this.lastName + "', familyId='" + this.familyId + "', healthId='" + this.healthId + "', fhwName='" + this.fhwName + "', fhwPhoneNumber='" + this.fhwPhoneNumber + "', locationDetails='" + this.locationDetails + "'}";
    }
}
