package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class MemberRchIdBean extends BaseEntity {

    @DatabaseField(index = true)
    private Integer memberId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String rchId;

    public Integer getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Integer num) {
        this.memberId = num;
    }

    public String getRchId() {
        return this.rchId;
    }

    public void setRchId(String str) {
        this.rchId = str;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String toString() {
        return "MemberRchIdBean{memberId=" + this.memberId + ", rchId='" + this.rchId + "', modifiedOn=" + this.modifiedOn + '}';
    }
}
