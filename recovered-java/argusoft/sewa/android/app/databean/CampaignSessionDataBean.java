package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.CampaignMasterBean;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import java.util.Date;

/* loaded from: classes.dex */
public class CampaignSessionDataBean {
    private Boolean campaignActive;
    private Integer campaignId;
    private Integer configId;
    private Integer dayNumber;
    private Long endedOn;
    private String healthInfra;
    private String healthInfraId;
    private String healthInfraTypeId;
    private Boolean locationActive;
    private Integer locationId;
    private String locationText;
    private Date modifiedOn;
    private CampaignRescheduleDataBean rescheduleDtoObj;
    private String sessionId;
    private Long startedOn;
    private String vaccinationType;
    private Integer weekNumber;

    public CampaignSessionDataBean() {
    }

    public CampaignSessionDataBean(CampaignMasterBean campaignMasterBean, CampaignSessionBean campaignSessionBean) {
        if (campaignSessionBean != null) {
            this.sessionId = campaignSessionBean.getSessionId();
            this.startedOn = campaignSessionBean.getStartedOn();
            this.endedOn = campaignSessionBean.getEndedOn();
        }
        if (campaignMasterBean != null) {
            this.campaignId = campaignMasterBean.getCampaignId();
            this.configId = campaignMasterBean.getConfigId();
            this.dayNumber = campaignMasterBean.getDayNumber();
            this.weekNumber = campaignMasterBean.getWeekNumber();
            this.vaccinationType = campaignMasterBean.getVaccinationType();
            this.healthInfraTypeId = campaignMasterBean.getHealthInfraTypeId();
            this.healthInfraId = campaignMasterBean.getHealthInfraId();
            this.locationId = campaignMasterBean.getLocationId();
            this.healthInfra = campaignMasterBean.getHealthInfra();
            this.locationText = campaignMasterBean.getLocationText();
            this.locationActive = campaignMasterBean.getLocationActive();
            this.campaignActive = campaignMasterBean.getCampaignActive();
            this.modifiedOn = campaignMasterBean.getModifiedOn();
        }
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public Integer getCampaignId() {
        return this.campaignId;
    }

    public void setCampaignId(Integer num) {
        this.campaignId = num;
    }

    public Integer getConfigId() {
        return this.configId;
    }

    public void setConfigId(Integer num) {
        this.configId = num;
    }

    public Integer getDayNumber() {
        return this.dayNumber;
    }

    public void setDayNumber(Integer num) {
        this.dayNumber = num;
    }

    public Integer getWeekNumber() {
        return this.weekNumber;
    }

    public void setWeekNumber(Integer num) {
        this.weekNumber = num;
    }

    public String getVaccinationType() {
        return this.vaccinationType;
    }

    public void setVaccinationType(String str) {
        this.vaccinationType = str;
    }

    public String getHealthInfraTypeId() {
        return this.healthInfraTypeId;
    }

    public void setHealthInfraTypeId(String str) {
        this.healthInfraTypeId = str;
    }

    public String getHealthInfraId() {
        return this.healthInfraId;
    }

    public void setHealthInfraId(String str) {
        this.healthInfraId = str;
    }

    public Integer getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Integer num) {
        this.locationId = num;
    }

    public String getHealthInfra() {
        return this.healthInfra;
    }

    public void setHealthInfra(String str) {
        this.healthInfra = str;
    }

    public String getLocationText() {
        return this.locationText;
    }

    public void setLocationText(String str) {
        this.locationText = str;
    }

    public Boolean getLocationActive() {
        return this.locationActive;
    }

    public void setLocationActive(Boolean bool) {
        this.locationActive = bool;
    }

    public Boolean getCampaignActive() {
        return this.campaignActive;
    }

    public void setCampaignActive(Boolean bool) {
        this.campaignActive = bool;
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public CampaignRescheduleDataBean getRescheduleDtoObj() {
        return this.rescheduleDtoObj;
    }

    public void setRescheduleDtoObj(CampaignRescheduleDataBean campaignRescheduleDataBean) {
        this.rescheduleDtoObj = campaignRescheduleDataBean;
    }
}
