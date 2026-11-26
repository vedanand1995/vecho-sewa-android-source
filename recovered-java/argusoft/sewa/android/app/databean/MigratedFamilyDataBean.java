package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class MigratedFamilyDataBean {
    private Integer familyId;
    private String familyIdString;
    private Integer fromLocationId;
    private Boolean isConfirmed;
    private Boolean isLfu;
    private Boolean isOut;
    private Boolean isSplitFamily;
    private String locationMigratedFrom;
    private String locationMigratedTo;
    private Integer migrationId;
    private Long modifiedOn;
    private Boolean outOfState;
    private Integer sFamilyId;
    private String sFamilyIdString;
    private String splitMembersDetail;
    private Integer toLocationId;

    public Integer getMigrationId() {
        return this.migrationId;
    }

    public void setMigrationId(Integer num) {
        this.migrationId = num;
    }

    public Integer getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Integer num) {
        this.familyId = num;
    }

    public String getFamilyIdString() {
        return this.familyIdString;
    }

    public void setFamilyIdString(String str) {
        this.familyIdString = str;
    }

    public String getLocationMigratedFrom() {
        return this.locationMigratedFrom;
    }

    public void setLocationMigratedFrom(String str) {
        this.locationMigratedFrom = str;
    }

    public String getLocationMigratedTo() {
        return this.locationMigratedTo;
    }

    public void setLocationMigratedTo(String str) {
        this.locationMigratedTo = str;
    }

    public Integer getFromLocationId() {
        return this.fromLocationId;
    }

    public void setFromLocationId(Integer num) {
        this.fromLocationId = num;
    }

    public Integer getToLocationId() {
        return this.toLocationId;
    }

    public void setToLocationId(Integer num) {
        this.toLocationId = num;
    }

    public Long getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Long l) {
        this.modifiedOn = l;
    }

    public Boolean getIsConfirmed() {
        return this.isConfirmed;
    }

    public void setIsConfirmed(Boolean bool) {
        this.isConfirmed = bool;
    }

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Boolean getIsLfu() {
        return this.isLfu;
    }

    public void setIsLfu(Boolean bool) {
        this.isLfu = bool;
    }

    public Boolean getIsSplitFamily() {
        return this.isSplitFamily;
    }

    public void setIsSplitFamily(Boolean bool) {
        this.isSplitFamily = bool;
    }

    public Integer getsFamilyId() {
        return this.sFamilyId;
    }

    public void setsFamilyId(Integer num) {
        this.sFamilyId = num;
    }

    public String getsFamilyIdString() {
        return this.sFamilyIdString;
    }

    public void setsFamilyIdString(String str) {
        this.sFamilyIdString = str;
    }

    public String getSplitMembersDetail() {
        return this.splitMembersDetail;
    }

    public void setSplitMembersDetail(String str) {
        this.splitMembersDetail = str;
    }

    public Boolean getOut() {
        return this.isOut;
    }

    public void setOut(Boolean bool) {
        this.isOut = bool;
    }
}
