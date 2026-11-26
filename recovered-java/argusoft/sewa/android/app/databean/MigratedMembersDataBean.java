package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class MigratedMembersDataBean {
    private String familyMigratedFrom;
    private String familyMigratedTo;
    private Long fromLocationId;
    private String healthId;
    private Boolean isConfirmed;
    private Boolean isLfu;
    private Boolean isOut;
    private String locationMigratedFrom;
    private String locationMigratedTo;
    private Long memberId;
    private Long migrationId;
    private Long modifiedOn;
    private String name;
    private Boolean outOfState;
    private Long toLocationId;

    public Long getMigrationId() {
        return this.migrationId;
    }

    public void setMigrationId(Long l) {
        this.migrationId = l;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getFamilyMigratedFrom() {
        return this.familyMigratedFrom;
    }

    public void setFamilyMigratedFrom(String str) {
        this.familyMigratedFrom = str;
    }

    public String getFamilyMigratedTo() {
        return this.familyMigratedTo;
    }

    public void setFamilyMigratedTo(String str) {
        this.familyMigratedTo = str;
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

    public Long getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Long l) {
        this.modifiedOn = l;
    }

    public Boolean getOut() {
        return this.isOut;
    }

    public void setOut(Boolean bool) {
        this.isOut = bool;
    }

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Boolean getConfirmed() {
        return this.isConfirmed;
    }

    public void setConfirmed(Boolean bool) {
        this.isConfirmed = bool;
    }

    public Boolean getLfu() {
        return this.isLfu;
    }

    public void setLfu(Boolean bool) {
        this.isLfu = bool;
    }
}
