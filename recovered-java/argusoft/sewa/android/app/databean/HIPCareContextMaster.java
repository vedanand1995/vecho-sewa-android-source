package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class HIPCareContextMaster {
    private String healthId;
    private Integer healthInfraId;
    private String healthInfraName;
    private Integer id;
    private Boolean isPreferred;
    private Integer locationId;
    private Integer memberId;
    private String patientDisplay;
    private String patientReferenceNumber;
    private String prefAuthMode;
    private String status;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public String getPatientReferenceNumber() {
        return this.patientReferenceNumber;
    }

    public void setPatientReferenceNumber(String str) {
        this.patientReferenceNumber = str;
    }

    public String getPatientDisplay() {
        return this.patientDisplay;
    }

    public void setPatientDisplay(String str) {
        this.patientDisplay = str;
    }

    public Integer getHealthInfraId() {
        return this.healthInfraId;
    }

    public void setHealthInfraId(Integer num) {
        this.healthInfraId = num;
    }

    public String getHealthInfraName() {
        return this.healthInfraName;
    }

    public void setHealthInfraName(String str) {
        this.healthInfraName = str;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getPrefAuthMode() {
        return this.prefAuthMode;
    }

    public void setPrefAuthMode(String str) {
        this.prefAuthMode = str;
    }

    public Boolean getPreferred() {
        return this.isPreferred;
    }

    public void setPreferred(Boolean bool) {
        this.isPreferred = bool;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }
}
