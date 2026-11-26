package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class HealthInfraAssignedBean extends BaseEntity {

    @DatabaseField
    private Integer districtId;

    @DatabaseField
    private String districtName;

    @DatabaseField
    private String mobileNumber;

    @DatabaseField
    private String officerName;

    public HealthInfraAssignedBean() {
    }

    public HealthInfraAssignedBean(Integer num, String str, String str2, String str3) {
        this.districtId = num;
        this.districtName = str;
        this.mobileNumber = str2;
        this.officerName = str3;
    }

    public Integer getDistrictId() {
        return this.districtId;
    }

    public void setDistrictId(Integer num) {
        this.districtId = num;
    }

    public String getDistrictName() {
        return this.districtName;
    }

    public void setDistrictName(String str) {
        this.districtName = str;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public String getOfficerName() {
        return this.officerName;
    }

    public void setOfficerName(String str) {
        this.officerName = str;
    }
}
