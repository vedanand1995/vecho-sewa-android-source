package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class IncentiveMemberDetailsDataBean {
    private String comment;
    private String contactNumber;
    private String dob;
    private String familyPlanningMethod;
    private String gender;
    private Integer id;
    private Integer memberId;
    private String name;
    private String serverDate;
    private String serviceDate;
    private Integer serviceId;
    private String serviceType;
    private String state;
    private String status = "PENDING";
    private String uniqueHealthId;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getDob() {
        return this.dob;
    }

    public void setDob(String str) {
        this.dob = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String str) {
        this.gender = str;
    }

    public String getUniqueHealthId() {
        return this.uniqueHealthId;
    }

    public void setUniqueHealthId(String str) {
        this.uniqueHealthId = str;
    }

    public String getContactNumber() {
        return this.contactNumber;
    }

    public void setContactNumber(String str) {
        this.contactNumber = str;
    }

    public String getServiceDate() {
        return this.serviceDate;
    }

    public void setServiceDate(String str) {
        this.serviceDate = str;
    }

    public Integer getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(Integer num) {
        this.serviceId = num;
    }

    public String getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(String str) {
        this.serviceType = str;
    }

    public String getServerDate() {
        return this.serverDate;
    }

    public void setServerDate(String str) {
        this.serverDate = str;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getFamilyPlanningMethod() {
        return this.familyPlanningMethod;
    }

    public void setFamilyPlanningMethod(String str) {
        this.familyPlanningMethod = str;
    }
}
