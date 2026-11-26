package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class DailyNutritionLogBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private Long seviceDate;

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public Long getSeviceDate() {
        return this.seviceDate;
    }

    public void setSeviceDate(Long l) {
        this.seviceDate = l;
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
