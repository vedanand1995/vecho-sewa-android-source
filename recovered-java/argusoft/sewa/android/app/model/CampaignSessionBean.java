package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.CampaignSessionDataBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable
/* loaded from: classes.dex */
public class CampaignSessionBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Integer configId;

    @DatabaseField
    private Long endedOn;

    @DatabaseField
    private String latitude;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private String longitude;

    @DatabaseField
    private Long mobileStartDate;

    @DatabaseField
    private String sessionId;

    @DatabaseField
    private Long startedOn;

    public CampaignSessionBean() {
    }

    public CampaignSessionBean(CampaignSessionDataBean campaignSessionDataBean) {
        this.configId = campaignSessionDataBean.getConfigId();
        this.sessionId = campaignSessionDataBean.getSessionId();
        this.startedOn = campaignSessionDataBean.getStartedOn();
        this.endedOn = campaignSessionDataBean.getEndedOn();
        this.locationId = campaignSessionDataBean.getLocationId();
    }

    public Integer getConfigId() {
        return this.configId;
    }

    public void setConfigId(Integer num) {
        this.configId = num;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public Long getStartedOn() {
        return this.startedOn;
    }

    public void setStartedOn(Long l) {
        this.startedOn = l;
    }

    public Long getEndedOn() {
        return this.endedOn;
    }

    public void setEndedOn(Long l) {
        this.endedOn = l;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public Long getMobileStartDate() {
        return this.mobileStartDate;
    }

    public void setMobileStartDate(Long l) {
        this.mobileStartDate = l;
    }
}
