package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class RchVillageProfileBean extends BaseEntity {
    private String rchVillageProfileDto;
    private Integer villageId;

    public Integer getVillageId() {
        return this.villageId;
    }

    public void setVillageId(Integer num) {
        this.villageId = num;
    }

    public String getRchVillageProfileDto() {
        return this.rchVillageProfileDto;
    }

    public void setRchVillageProfileDto(String str) {
        this.rchVillageProfileDto = str;
    }

    public String toString() {
        return "RchVillageProfileBean{\nvillageId=" + this.villageId + ", \nrchVillageProfileDto='" + this.rchVillageProfileDto + "'}";
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
