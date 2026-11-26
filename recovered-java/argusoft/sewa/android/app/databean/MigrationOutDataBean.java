package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class MigrationOutDataBean {
    private List<Long> childrensUnder5;
    private Long fromFamilyId;
    private Long fromLocationId;
    private Boolean locationknown;
    private Long memberId;
    private String otherInfo;
    private Boolean outOfState;
    private Long reportedOn;
    private Long toLocationId;

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public Long getFromFamilyId() {
        return this.fromFamilyId;
    }

    public void setFromFamilyId(Long l) {
        this.fromFamilyId = l;
    }

    public Long getFromLocationId() {
        return this.fromLocationId;
    }

    public void setFromLocationId(Long l) {
        this.fromLocationId = l;
    }

    public Boolean getLocationknown() {
        return this.locationknown;
    }

    public String getOtherInfo() {
        return this.otherInfo;
    }

    public void setOtherInfo(String str) {
        this.otherInfo = str;
    }

    public void setLocationknown(Boolean bool) {
        this.locationknown = bool;
    }

    public Long getToLocationId() {
        return this.toLocationId;
    }

    public void setToLocationId(Long l) {
        this.toLocationId = l;
    }

    public List<Long> getChildrensUnder5() {
        return this.childrensUnder5;
    }

    public void setChildrensUnder5(List<Long> list) {
        this.childrensUnder5 = list;
    }

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Long getReportedOn() {
        return this.reportedOn;
    }

    public void setReportedOn(Long l) {
        this.reportedOn = l;
    }
}
