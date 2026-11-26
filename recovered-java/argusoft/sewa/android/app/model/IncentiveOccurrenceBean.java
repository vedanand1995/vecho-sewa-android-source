package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.IncentiveOccurrenceDetailsDataBean;
import com.j256.ormlite.field.DatabaseField;
import java.util.Date;

/* loaded from: classes.dex */
public class IncentiveOccurrenceBean extends BaseEntity {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private Date firstOccurrenceOn;

    @DatabaseField
    private Integer incentiveId;

    @DatabaseField
    private Date lastOccurrenceOn;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Date nextOccurrenceOn;

    @DatabaseField
    private Integer userId;

    @DatabaseField
    private Integer yearlyOccurrenceCount;

    public IncentiveOccurrenceBean() {
    }

    public IncentiveOccurrenceBean(IncentiveOccurrenceDetailsDataBean incentiveOccurrenceDetailsDataBean) {
        this.actualId = incentiveOccurrenceDetailsDataBean.getId();
        this.userId = incentiveOccurrenceDetailsDataBean.getUserId();
        this.incentiveId = incentiveOccurrenceDetailsDataBean.getIncentiveId();
        this.firstOccurrenceOn = incentiveOccurrenceDetailsDataBean.getFirstOccurrenceOn();
        this.lastOccurrenceOn = incentiveOccurrenceDetailsDataBean.getLastOccurrenceOn();
        this.nextOccurrenceOn = incentiveOccurrenceDetailsDataBean.getNextOccurrenceOn();
        this.yearlyOccurrenceCount = incentiveOccurrenceDetailsDataBean.getYearlyOccurrenceCount();
        this.modifiedOn = incentiveOccurrenceDetailsDataBean.getModifiedOn();
    }

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer num) {
        this.userId = num;
    }

    public Integer getIncentiveId() {
        return this.incentiveId;
    }

    public void setIncentiveId(Integer num) {
        this.incentiveId = num;
    }

    public Date getFirstOccurrenceOn() {
        return this.firstOccurrenceOn;
    }

    public void setFirstOccurrenceOn(Date date) {
        this.firstOccurrenceOn = date;
    }

    public Date getLastOccurrenceOn() {
        return this.lastOccurrenceOn;
    }

    public void setLastOccurrenceOn(Date date) {
        this.lastOccurrenceOn = date;
    }

    public Date getNextOccurrenceOn() {
        return this.nextOccurrenceOn;
    }

    public void setNextOccurrenceOn(Date date) {
        this.nextOccurrenceOn = date;
    }

    public Integer getYearlyOccurrenceCount() {
        return this.yearlyOccurrenceCount;
    }

    public void setYearlyOccurrenceCount(Integer num) {
        this.yearlyOccurrenceCount = num;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }
}
