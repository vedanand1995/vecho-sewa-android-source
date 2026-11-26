package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import java.util.Date;

/* loaded from: classes.dex */
public class LocationMasterBean extends BaseEntity {

    @DatabaseField(index = true)
    private Long actualID;

    @DatabaseField
    private String englishName;

    @DatabaseField
    private String fhwDetailString;

    @DatabaseField
    private Boolean isActive;

    @DatabaseField
    private Integer level;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField(index = true)
    private Integer parent;

    @DatabaseField
    private String type;

    public Long getActualID() {
        return this.actualID;
    }

    public void setActualID(Long l) {
        this.actualID = l;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getEnglishName() {
        return this.englishName;
    }

    public void setEnglishName(String str) {
        this.englishName = str;
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

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public Boolean getActive() {
        return this.isActive;
    }

    public void setActive(Boolean bool) {
        this.isActive = bool;
    }

    public String getFhwDetailString() {
        return this.fhwDetailString;
    }

    public void setFhwDetailString(String str) {
        this.fhwDetailString = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "LocationMasterBean{actualID=" + this.actualID + ", name='" + this.name + "', englishName='" + this.englishName + "', parent=" + this.parent + ", level=" + this.level + ", type='" + this.type + "', isActive=" + this.isActive + ", fhwDetailString='" + this.fhwDetailString + "'}";
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
