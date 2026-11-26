package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class UncaughtExceptionBean extends BaseEntity {

    @DatabaseField
    private String androidVersion;

    @DatabaseField
    private String exceptionType;

    @DatabaseField
    private String manufacturer;

    @DatabaseField
    private String model;

    @DatabaseField
    private Date onDate;

    @DatabaseField
    private Integer revisionNumber;

    @DatabaseField
    private String stackTrace;

    @DatabaseField
    private String username;

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getAndroidVersion() {
        return this.androidVersion;
    }

    public void setAndroidVersion(String str) {
        this.androidVersion = str;
    }

    public String getStackTrace() {
        return this.stackTrace;
    }

    public void setStackTrace(String str) {
        this.stackTrace = str;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public Date getOnDate() {
        return this.onDate;
    }

    public void setOnDate(Date date) {
        this.onDate = date;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Integer getRevisionNumber() {
        return this.revisionNumber;
    }

    public void setRevisionNumber(Integer num) {
        this.revisionNumber = num;
    }

    public String getExceptionType() {
        return this.exceptionType;
    }

    public void setExceptionType(String str) {
        this.exceptionType = str;
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
