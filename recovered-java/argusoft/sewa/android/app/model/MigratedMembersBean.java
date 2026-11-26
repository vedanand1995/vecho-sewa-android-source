package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MigratedMembersBean extends BaseEntity implements Serializable {

    @DatabaseField
    private String familyMigratedFrom;

    @DatabaseField
    private String familyMigratedTo;

    @DatabaseField
    private Long fromLocationId;

    @DatabaseField
    private String healthId;

    @DatabaseField
    private Boolean isConfirmed;

    @DatabaseField
    private Boolean isLfu;

    @DatabaseField
    private String locationMigratedFrom;

    @DatabaseField
    private String locationMigratedTo;

    @DatabaseField
    private Long memberId;

    @DatabaseField
    private Long migrationId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField
    private Boolean outOfState;

    @DatabaseField
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public Boolean getConfirmed() {
        return this.isConfirmed;
    }

    public void setConfirmed(Boolean bool) {
        this.isConfirmed = bool;
    }

    public Boolean getOutOfState() {
        return this.outOfState;
    }

    public void setOutOfState(Boolean bool) {
        this.outOfState = bool;
    }

    public Boolean getLfu() {
        return this.isLfu;
    }

    public void setLfu(Boolean bool) {
        this.isLfu = bool;
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
