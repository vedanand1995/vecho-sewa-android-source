package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class AshaEventRejectionDataBean {
    private String eventType;
    private Long familyId;
    private Long memberId;
    private Long notificationId;
    private Long rejectedOn;

    public Long getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(Long l) {
        this.notificationId = l;
    }

    public Long getRejectedOn() {
        return this.rejectedOn;
    }

    public void setRejectedOn(Long l) {
        this.rejectedOn = l;
    }

    public String getEventType() {
        return this.eventType;
    }

    public void setEventType(String str) {
        this.eventType = str;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }
}
