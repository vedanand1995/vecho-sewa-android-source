package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class LocationCoordinatesBean extends BaseEntity {

    @DatabaseField
    private String coordinates;

    @DatabaseField
    private String lgdCode;

    public String getLgdCode() {
        return this.lgdCode;
    }

    public void setLgdCode(String str) {
        this.lgdCode = str;
    }

    public String getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(String str) {
        this.coordinates = str;
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
