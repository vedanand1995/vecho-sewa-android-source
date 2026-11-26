package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LabelBean extends BaseEntity {

    @DatabaseField
    private String labelKey;

    @DatabaseField
    private String labelValue;

    @DatabaseField
    private String language;

    @DatabaseField
    private Date modifiedOn;

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return 7;
    }

    public String getLabelKey() {
        return this.labelKey;
    }

    public void setLabelKey(String str) {
        this.labelKey = str;
    }

    public String getLabelValue() {
        return this.labelValue;
    }

    public void setLabelValue(String str) {
        this.labelValue = str;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "LabelBean{labelKey=" + this.labelKey + ", labelValue=" + this.labelValue + ", language=" + this.language + '}';
    }

    public String getMapIndex() {
        String str = this.labelKey;
        if (str == null) {
            return null;
        }
        if (this.language != null) {
            return (this.labelKey + this.language).toLowerCase().trim();
        }
        return str.toLowerCase().trim();
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LabelBean labelBean = (LabelBean) obj;
        String str3 = this.labelKey;
        if (str3 == null || (str = labelBean.labelKey) == null || !str3.equalsIgnoreCase(str)) {
            return false;
        }
        String str4 = this.language;
        if (str4 == null || (str2 = labelBean.language) == null) {
            return true;
        }
        return str4.equalsIgnoreCase(str2);
    }
}
