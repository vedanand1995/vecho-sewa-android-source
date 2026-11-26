package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class CampaignRescheduleDataBean {
    private Boolean activeFlag;
    private Integer configId;
    private Date modifiedOn;
    private Date newDate;
    private Date oldDate;
    private String reason;
    private Integer rescheduleId;

    public CampaignRescheduleDataBean() {
    }

    public CampaignRescheduleDataBean(Integer num, Integer num2, Date date, Date date2, String str, Boolean bool, Date date3) {
        this.rescheduleId = num;
        this.configId = num2;
        this.oldDate = date;
        this.newDate = date2;
        this.reason = str;
        this.activeFlag = bool;
        this.modifiedOn = date3;
    }

    public Integer getRescheduleId() {
        return this.rescheduleId;
    }

    public void setRescheduleId(Integer num) {
        this.rescheduleId = num;
    }

    public Integer getConfigId() {
        return this.configId;
    }

    public void setConfigId(Integer num) {
        this.configId = num;
    }

    public Date getOldDate() {
        return this.oldDate;
    }

    public void setOldDate(Date date) {
        this.oldDate = date;
    }

    public Date getNewDate() {
        return this.newDate;
    }

    public void setNewDate(Date date) {
        this.newDate = date;
    }

    public String getReason() {
        return this.reason;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public Boolean getActiveFlag() {
        return this.activeFlag;
    }

    public void setActiveFlag(Boolean bool) {
        this.activeFlag = bool;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }
}
