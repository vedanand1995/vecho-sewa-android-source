package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class SchoolBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String code;

    @DatabaseField
    private String englishName;

    @DatabaseField
    private Integer grantType;

    @DatabaseField
    private Boolean isGurukul;

    @DatabaseField
    private Boolean isHigherSecondarySchool;

    @DatabaseField
    private Boolean isMadresa;

    @DatabaseField
    private Boolean isPrimarySchool;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField
    private Integer schoolType;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public Integer getGrantType() {
        return this.grantType;
    }

    public void setGrantType(Integer num) {
        this.grantType = num;
    }

    public Integer getSchoolType() {
        return this.schoolType;
    }

    public void setSchoolType(Integer num) {
        this.schoolType = num;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public Boolean getPrimarySchool() {
        return this.isPrimarySchool;
    }

    public void setPrimarySchool(Boolean bool) {
        this.isPrimarySchool = bool;
    }

    public Boolean getHigherSecondarySchool() {
        return this.isHigherSecondarySchool;
    }

    public void setHigherSecondarySchool(Boolean bool) {
        this.isHigherSecondarySchool = bool;
    }

    public Boolean getMadresa() {
        return this.isMadresa;
    }

    public void setMadresa(Boolean bool) {
        this.isMadresa = bool;
    }

    public Boolean getGurukul() {
        return this.isGurukul;
    }

    public void setGurukul(Boolean bool) {
        this.isGurukul = bool;
    }

    public String getEnglishName() {
        return this.englishName;
    }

    public void setEnglishName(String str) {
        this.englishName = str;
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
