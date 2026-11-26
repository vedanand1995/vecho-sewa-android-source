package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class SmartReferralScheduleMasterBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String contactPersonName;

    @DatabaseField
    private String contactPersonNumber;

    @DatabaseField
    private Integer departmentId;

    @DatabaseField
    private String departmentName;

    @DatabaseField
    private Integer designation;

    @DatabaseField
    private String designationName;

    @DatabaseField
    private String fromTime;

    @DatabaseField
    private Integer healthInfraId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String toTime;

    @DatabaseField
    private String unitsAssigned;

    @DatabaseField
    private Integer userId;

    @DatabaseField
    private Integer weekDay;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getHealthInfraId() {
        return this.healthInfraId;
    }

    public void setHealthInfraId(Integer num) {
        this.healthInfraId = num;
    }

    public Integer getDepartmentId() {
        return this.departmentId;
    }

    public void setDepartmentId(Integer num) {
        this.departmentId = num;
    }

    public String getDepartmentName() {
        return this.departmentName;
    }

    public void setDepartmentName(String str) {
        this.departmentName = str;
    }

    public Integer getWeekDay() {
        return this.weekDay;
    }

    public void setWeekDay(Integer num) {
        this.weekDay = num;
    }

    public String getUnitsAssigned() {
        return this.unitsAssigned;
    }

    public void setUnitsAssigned(String str) {
        this.unitsAssigned = str;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer num) {
        this.userId = num;
    }

    public String getContactPersonName() {
        return this.contactPersonName;
    }

    public void setContactPersonName(String str) {
        this.contactPersonName = str;
    }

    public String getContactPersonNumber() {
        return this.contactPersonNumber;
    }

    public void setContactPersonNumber(String str) {
        this.contactPersonNumber = str;
    }

    public String getFromTime() {
        return this.fromTime;
    }

    public void setFromTime(String str) {
        this.fromTime = str;
    }

    public String getToTime() {
        return this.toTime;
    }

    public void setToTime(String str) {
        this.toTime = str;
    }

    public Integer getDesignation() {
        return this.designation;
    }

    public void setDesignation(Integer num) {
        this.designation = num;
    }

    public String getDesignationName() {
        return this.designationName;
    }

    public void setDesignationName(String str) {
        this.designationName = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return super.toString();
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
