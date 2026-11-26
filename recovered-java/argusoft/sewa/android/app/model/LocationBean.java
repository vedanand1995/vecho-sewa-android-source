package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class LocationBean extends BaseEntity {

    @DatabaseField
    private Integer actualID;

    @DatabaseField
    private Boolean isActive;

    @DatabaseField
    private Integer level;

    @DatabaseField
    private String lgdCode;

    @DatabaseField
    private String name;

    @DatabaseField
    private Integer parent;

    @DatabaseField
    private String type;

    public Integer getActualID() {
        return this.actualID;
    }

    public void setActualID(Integer num) {
        this.actualID = num;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Integer getParent() {
        return this.parent;
    }

    public void setParent(Integer num) {
        this.parent = num;
    }

    public Integer getLevel() {
        return this.level;
    }

    public void setLevel(Integer num) {
        this.level = num;
    }

    public Boolean getIsActive() {
        return this.isActive;
    }

    public void setIsActive(Boolean bool) {
        this.isActive = bool;
    }

    public String getLgdCode() {
        return this.lgdCode;
    }

    public void setLgdCode(String str) {
        this.lgdCode = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "LocationBean{actualID=" + this.actualID + ", name=" + this.name + ", parent=" + this.parent + ", level=" + this.level + ", isActive=" + this.isActive + '}';
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
