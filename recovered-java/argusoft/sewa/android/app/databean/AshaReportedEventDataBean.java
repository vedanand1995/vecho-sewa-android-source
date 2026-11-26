package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class AshaReportedEventDataBean {
    private String eventType;
    private Long familyId;
    private Long locationId;
    private Long memberId;
    private Long reportedOn;

    public String getEventType() {
        return this.eventType;
    }

    public void setEventType(String str) {
        this.eventType = str;
    }

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long l) {
        this.locationId = l;
    }

    public Long getReportedOn() {
        return this.reportedOn;
    }

    public void setReportedOn(Long l) {
        this.reportedOn = l;
    }
}
