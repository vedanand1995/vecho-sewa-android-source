package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.IncentiveOccurrenceBean;
import java.util.Date;

/* loaded from: classes.dex */
public class IncentiveOccurrenceDetailsDataBean {
    private Date firstOccurrenceOn;
    private Integer id;
    private Integer incentiveId;
    private Date lastOccurrenceOn;
    private Date modifiedOn;
    private Date nextOccurrenceOn;
    private Integer userId;
    private Integer yearlyOccurrenceCount;

    public IncentiveOccurrenceDetailsDataBean(IncentiveOccurrenceBean incentiveOccurrenceBean) {
        this.id = incentiveOccurrenceBean.getActualId();
        this.userId = incentiveOccurrenceBean.getUserId();
        this.incentiveId = incentiveOccurrenceBean.getIncentiveId();
        this.firstOccurrenceOn = incentiveOccurrenceBean.getFirstOccurrenceOn();
        this.lastOccurrenceOn = incentiveOccurrenceBean.getLastOccurrenceOn();
        this.nextOccurrenceOn = incentiveOccurrenceBean.getNextOccurrenceOn();
        this.yearlyOccurrenceCount = incentiveOccurrenceBean.getYearlyOccurrenceCount();
        this.modifiedOn = incentiveOccurrenceBean.getModifiedOn();
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
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
