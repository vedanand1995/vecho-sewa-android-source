package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class ChlorinationStatusBean extends BaseEntity {

    @DatabaseField
    private String areaName;

    @DatabaseField
    private Date lastServiceDate;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private Integer noOfTestConducted;

    @DatabaseField
    private Integer positiveTests;

    @DatabaseField
    private Date serviceDate;

    @DatabaseField
    private Integer villageId;

    @DatabaseField
    private Integer waterQualityId;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Integer getWaterQualityId() {
        return this.waterQualityId;
    }

    public void setWaterQualityId(Integer num) {
        this.waterQualityId = num;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public String getAreaName() {
        return this.areaName;
    }

    public void setAreaName(String str) {
        this.areaName = str;
    }

    public Integer getVillageId() {
        return this.villageId;
    }

    public void setVillageId(Integer num) {
        this.villageId = num;
    }

    public Date getServiceDate() {
        return this.serviceDate;
    }

    public void setServiceDate(Date date) {
        this.serviceDate = date;
    }

    public Integer getPositiveTests() {
        return this.positiveTests;
    }

    public void setPositiveTests(Integer num) {
        this.positiveTests = num;
    }

    public Integer getNoOfTestConducted() {
        return this.noOfTestConducted;
    }

    public void setNoOfTestConducted(Integer num) {
        this.noOfTestConducted = num;
    }

    public Date getLastServiceDate() {
        return this.lastServiceDate;
    }

    public void setLastServiceDate(Date date) {
        this.lastServiceDate = date;
    }
}
