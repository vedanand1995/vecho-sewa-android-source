package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MigratedFamilyBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer familyId;

    @DatabaseField
    private String familyIdString;

    @DatabaseField
    private Integer fromLocationId;

    @DatabaseField
    private Boolean isConfirmed;

    @DatabaseField
    private Boolean isLfu;

    @DatabaseField
    private Boolean isSplitFamily;

    @DatabaseField
    private String locationMigratedFrom;

    @DatabaseField
    private String locationMigratedTo;

    @DatabaseField
    private Integer migrationId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Boolean outOfState;

    @DatabaseField
    private Integer sFamilyId;

    @DatabaseField
    private String sFamilyIdString;

    @DatabaseField
    private String splitMembersDetail;

    @DatabaseField
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

    public Boolean getSplitFamily() {
        return this.isSplitFamily;
    }

    public void setSplitFamily(Boolean bool) {
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
}
