package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class OptionDataBean {
    private String key;
    private String next;
    private String relatedProperty;
    private String value;

    public OptionDataBean() {
    }

    public OptionDataBean(String str, String str2, String str3) {
        this.key = str;
        this.value = str2;
        this.next = str3;
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

    public String getRelatedProperty() {
        return this.relatedProperty;
    }

    public void setRelatedProperty(String str) {
        this.relatedProperty = str;
    }

    public int hashCode() {
        String str = this.key;
        return 115 + (str != null ? str.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OptionDataBean optionDataBean = (OptionDataBean) obj;
        String str = this.key;
        return str == null ? optionDataBean.key == null : str.toLowerCase().contains(optionDataBean.key.toLowerCase());
    }

    public String toString() {
        return "OptionDataBean{key=" + this.key + ", value=" + this.value + ", next=" + this.next + ", relatedProperty=" + this.relatedProperty + "}\n";
    }
}
