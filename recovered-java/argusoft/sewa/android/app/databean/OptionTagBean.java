package com.argusoft.sewa.android.app.databean;

import java.util.Objects;

/* loaded from: classes.dex */
public class OptionTagBean {
    private String key;
    private String next;
    private String relatedpropertyname;
    private String subform;
    private String value;

    public String getRelatedpropertyname() {
        return this.relatedpropertyname;
    }

    public void setRelatedpropertyname(String str) {
        this.relatedpropertyname = str;
    }

    public String getSubform() {
        return this.subform;
    }

    public void setSubform(String str) {
        this.subform = str;
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

    public String getNext() {
        return this.next;
    }

    public void setNext(String str) {
        this.next = str;
    }

    public int hashCode() {
        String str = this.key;
        return 259 + (str != null ? str.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            return Objects.equals(this.key, ((OptionTagBean) obj).key);
        }
        return false;
    }

    public String toString() {
        return "OptionTagBean{key='" + this.key + "', value='" + this.value + "', next='" + this.next + "', subform='" + this.subform + "', relatedpropertyname='" + this.relatedpropertyname + "'}";
    }
}
