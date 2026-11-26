package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.CampaignRescheduleDataBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class CampaignRescheduleBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Boolean activeFlag;

    @DatabaseField
    private Integer configId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Date newDate;

    @DatabaseField
    private Date oldDate;

    @DatabaseField
    private String reason;

    @DatabaseField
    private Integer rescheduleId;

    public CampaignRescheduleBean() {
    }

    public CampaignRescheduleBean(CampaignRescheduleDataBean campaignRescheduleDataBean) {
        this.rescheduleId = campaignRescheduleDataBean.getRescheduleId();
        this.configId = campaignRescheduleDataBean.getConfigId();
        this.oldDate = campaignRescheduleDataBean.getOldDate();
        this.newDate = campaignRescheduleDataBean.getNewDate();
        this.reason = campaignRescheduleDataBean.getReason();
        this.modifiedOn = campaignRescheduleDataBean.getModifiedOn();
        this.activeFlag = campaignRescheduleDataBean.getActiveFlag();
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public Boolean getActiveFlag() {
        return this.activeFlag;
    }

    public void setActiveFlag(Boolean bool) {
        this.activeFlag = bool;
    }
}
