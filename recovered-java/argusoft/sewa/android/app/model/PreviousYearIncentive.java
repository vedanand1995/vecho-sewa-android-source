package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class PreviousYearIncentive extends BaseEntity {

    @DatabaseField
    private Date incentiveMonth;

    @DatabaseField
    private String incentiveType;

    @DatabaseField
    private int totalAmount;

    @DatabaseField
    private Integer userId;

    @DatabaseField
    private int val;

    public PreviousYearIncentive() {
    }

    public PreviousYearIncentive(PreviousYearIncentive previousYearIncentive) {
        this.incentiveType = previousYearIncentive.incentiveType;
        this.incentiveMonth = previousYearIncentive.incentiveMonth;
        this.val = previousYearIncentive.val;
        this.totalAmount = previousYearIncentive.totalAmount;
    }

    public String getIncentiveType() {
        return this.incentiveType;
    }

    public void setIncentiveType(String str) {
        this.incentiveType = str;
    }

    public Date getIncentiveMonth() {
        return this.incentiveMonth;
    }

    public void setIncentiveMonth(Date date) {
        this.incentiveMonth = date;
    }

    public int getVal() {
        return this.val;
    }

    public void setVal(int i) {
        this.val = i;
    }

    public int getTotalAmount() {
        return this.totalAmount;
    }

    public void setTotalAmount(int i) {
        this.totalAmount = i;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer num) {
        this.userId = num;
    }
}
