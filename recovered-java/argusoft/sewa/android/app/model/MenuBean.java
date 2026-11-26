package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MenuBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String constant;

    @DatabaseField
    private String displayName;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private int order;

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public int getOrder() {
        return this.order;
    }

    public void setOrder(int i) {
        this.order = i;
    }

    public String getConstant() {
        return this.constant;
    }

    public void setConstant(String str) {
        this.constant = str;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }
}
