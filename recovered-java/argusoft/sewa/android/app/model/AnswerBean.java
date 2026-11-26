package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable
/* loaded from: classes.dex */
public class AnswerBean extends BaseEntity {

    @DatabaseField
    private String entity;

    @DatabaseField
    private String key;

    @DatabaseField
    private int next;

    @DatabaseField
    private int queId;

    @DatabaseField
    private String relatedpropertyname;

    @DatabaseField
    private String subform;

    @DatabaseField
    private String value;

    public String getEntity() {
        return this.entity;
    }

    public void setEntity(String str) {
        this.entity = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public int getQueId() {
        return this.queId;
    }

    public void setQueId(int i) {
        this.queId = i;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public int getNext() {
        return this.next;
    }

    public void setNext(int i) {
        this.next = i;
    }

    public String getSubform() {
        return this.subform;
    }

    public void setSubform(String str) {
        this.subform = str;
    }

    public String getRelatedpropertyname() {
        return this.relatedpropertyname;
    }

    public void setRelatedpropertyname(String str) {
        this.relatedpropertyname = str;
    }

    public String toString() {
        return "AnswerBean{queId=" + this.queId + ", key=" + this.key + ", value=" + this.value + ", next=" + this.next + ", subform=" + this.subform + ", relatedpropertyname=" + this.relatedpropertyname + '}';
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
