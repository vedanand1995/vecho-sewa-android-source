package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class ListValueBean extends BaseEntity {

    @DatabaseField
    private String field;

    @DatabaseField
    private String fieldType;

    @DatabaseField
    private String formCode;

    @DatabaseField
    private int idOfValue;

    @DatabaseField
    private String isDownloaded;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String value;

    public int getIdOfValue() {
        return this.idOfValue;
    }

    public void setIdOfValue(int i) {
        this.idOfValue = i;
    }

    public String getFormCode() {
        return this.formCode;
    }

    public void setFormCode(String str) {
        this.formCode = str;
    }

    public String getField() {
        return this.field;
    }

    public void setField(String str) {
        this.field = str;
    }

    public String getFieldType() {
        return this.fieldType;
    }

    public void setFieldType(String str) {
        this.fieldType = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String getIsDownloaded() {
        return this.isDownloaded;
    }

    public void setIsDownloaded(String str) {
        this.isDownloaded = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "ListValueBean{idOfValue=" + this.idOfValue + ", formCode=" + this.formCode + ", field=" + this.field + ", fieldType=" + this.fieldType + ", value=" + this.value + ", isDownloaded=" + this.isDownloaded + '}';
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
