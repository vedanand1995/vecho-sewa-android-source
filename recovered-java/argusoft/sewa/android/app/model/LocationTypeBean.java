package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class LocationTypeBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer level;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String name;

    @DatabaseField
    private String type;

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Integer getLevel() {
        return this.level;
    }

    public void setLevel(Integer num) {
        this.level = num;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "LocationTypeBean{type='" + this.type + "', name='" + this.name + "', level=" + this.level + ", modifiedOn=" + this.modifiedOn + '}';
    }
}
