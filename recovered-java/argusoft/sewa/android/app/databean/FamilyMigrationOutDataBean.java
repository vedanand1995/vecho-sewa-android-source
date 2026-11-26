package com.argusoft.sewa.android.app.databean;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FamilyMigrationOutDataBean {
    private Boolean existingHeadSelected;
    private Long familyId;
    private Long fromLocationId;
    private Boolean isCurrentLocation;
    private Boolean isSplit;
    private Boolean locationKnown;
    private List<Long> memberIds;
    private Long newHead;
    private String otherInfo;
    private Boolean outOfState;
    private Map<String, String> relationWithHofMap;
    private Long reportedOn;
    private Long toLocationId;

    public Long getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Long l) {
        this.familyId = l;
    }

    public Boolean getSplit() {
        return this.isSplit;
    }

    public void setSplit(Boolean bool) {
        this.isSplit = bool;
    }

    public List<Long> getMemberIds() {
        return this.memberIds;
    }

    public void setMemberIds(List<Long> list) {
        this.memberIds = list;
    }

    public Boolean getCurrentLocation() {
        return this.isCurrentLocation;
    }

    public Long getNewHead() {
        return this.newHead;
    }

    public void setNewHead(Long l) {
        this.newHead = l;
    }

    public void setCurrentLocation(Boolean bool) {
        this.isCurrentLocation = bool;
    }

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Boolean getLocationKnown() {
        return this.locationKnown;
    }

    public void setLocationKnown(Boolean bool) {
        this.locationKnown = bool;
    }

    public Long getFromLocationId() {
        return this.fromLocationId;
    }

    public void setFromLocationId(Long l) {
        this.fromLocationId = l;
    }

    public Long getToLocationId() {
        return this.toLocationId;
    }

    public void setToLocationId(Long l) {
        this.toLocationId = l;
    }

    public String getOtherInfo() {
        return this.otherInfo;
    }

    public void setOtherInfo(String str) {
        this.otherInfo = str;
    }

    public Long getReportedOn() {
        return this.reportedOn;
    }

    public void setReportedOn(Long l) {
        this.reportedOn = l;
    }

    public Boolean getExistingHeadSelected() {
        return this.existingHeadSelected;
    }

    public void setExistingHeadSelected(Boolean bool) {
        this.existingHeadSelected = bool;
    }

    public Map<String, String> getRelationWithHofMap() {
        return this.relationWithHofMap;
    }

    public void setRelationWithHofMap(Map<String, String> map) {
        this.relationWithHofMap = map;
    }
}
