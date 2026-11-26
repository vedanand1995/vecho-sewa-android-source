package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class FieldValueMobDataBean {
    private String field;
    private String fieldType;
    private String formCode;
    private int idOfValue;
    private Boolean isActive;
    private Long lastUpdateOfFieldValue;
    private String value;

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

    public Long getLastUpdateOfFieldValue() {
        return this.lastUpdateOfFieldValue;
    }

    public void setLastUpdateOfFieldValue(Long l) {
        this.lastUpdateOfFieldValue = l;
    }

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

    public Boolean getActive() {
        return this.isActive;
    }

    public void setActive(Boolean bool) {
        this.isActive = bool;
    }

    public String toString() {
        return "FieldValueMobDataBean{idOfValue=" + this.idOfValue + ", formCode=" + this.formCode + ", field=" + this.field + ", fieldType=" + this.fieldType + ", value=" + this.value + '}';
    }
}
