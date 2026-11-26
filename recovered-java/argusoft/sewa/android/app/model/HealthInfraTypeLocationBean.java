package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class HealthInfraTypeLocationBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Long healthInfraTypeId;

    @DatabaseField
    private String healthInfraTypeName;

    @DatabaseField
    private Integer locationLevel;

    public Long getHealthInfraTypeId() {
        return this.healthInfraTypeId;
    }

    public void setHealthInfraTypeId(Long l) {
        this.healthInfraTypeId = l;
    }

    public String getHealthInfraTypeName() {
        return this.healthInfraTypeName;
    }

    public void setHealthInfraTypeName(String str) {
        this.healthInfraTypeName = str;
    }

    public Integer getLocationLevel() {
        return this.locationLevel;
    }

    public void setLocationLevel(Integer num) {
        this.locationLevel = num;
    }
}
