package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.CampaignSessionDataBean;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class CampaignMasterBean extends BaseEntity implements Serializable {

    @DatabaseField
    private Boolean campaignActive;

    @DatabaseField
    private Integer campaignId;

    @DatabaseField
    private Integer configId;

    @DatabaseField
    private Integer dayNumber;

    @DatabaseField
    private String healthInfra;

    @DatabaseField
    private String healthInfraId;

    @DatabaseField
    private String healthInfraTypeId;

    @DatabaseField
    private Boolean locationActive;

    @DatabaseField
    private Integer locationId;

    @DatabaseField
    private String locationText;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String vaccinationType;

    @DatabaseField
    private Integer weekNumber;

    public CampaignMasterBean() {
    }

    public CampaignMasterBean(CampaignSessionDataBean campaignSessionDataBean) {
        this.configId = campaignSessionDataBean.getConfigId();
        this.campaignId = campaignSessionDataBean.getCampaignId();
        this.campaignActive = campaignSessionDataBean.getCampaignActive();
        this.dayNumber = campaignSessionDataBean.getDayNumber();
        this.weekNumber = campaignSessionDataBean.getWeekNumber();
        this.vaccinationType = campaignSessionDataBean.getVaccinationType();
        this.healthInfraTypeId = campaignSessionDataBean.getHealthInfraTypeId();
        this.locationId = campaignSessionDataBean.getLocationId();
        this.locationText = campaignSessionDataBean.getLocationText();
        this.locationActive = campaignSessionDataBean.getLocationActive();
        this.modifiedOn = campaignSessionDataBean.getModifiedOn();
    }

    public Integer getConfigId() {
        return this.configId;
    }

    public void setConfigId(Integer num) {
        this.configId = num;
    }

    public Integer getCampaignId() {
        return this.campaignId;
    }

    public void setCampaignId(Integer num) {
        this.campaignId = num;
    }

    public Boolean getCampaignActive() {
        return this.campaignActive;
    }

    public void setCampaignActive(Boolean bool) {
        this.campaignActive = bool;
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }
}
