package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class IncentiveMasterDataBean {
    private Boolean active;
    private String additionalDetails;
    private Boolean allowApproval;
    private Short amount;
    private int approvedAmount;
    private String ashaBudgetLine;
    private String code;
    private Integer countLimit;
    private String description;
    private Character frequency;
    private Integer id;
    private String incentiveGroup;
    private String incentiveTitle;
    private String manualType;
    private Integer maxOccurrence;
    private Date modifiedOn;
    private Boolean multiplier;
    private Integer occurrenceFrequency;
    private Short order;
    private String queryForList;
    private Boolean systemCalculated;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public String getIncentiveTitle() {
        return this.incentiveTitle;
    }

    public void setIncentiveTitle(String str) {
        this.incentiveTitle = str;
    }

    public String getAshaBudgetLine() {
        return this.ashaBudgetLine;
    }

    public void setAshaBudgetLine(String str) {
        this.ashaBudgetLine = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public Boolean getSystemCalculated() {
        return this.systemCalculated;
    }

    public void setSystemCalculated(Boolean bool) {
        this.systemCalculated = bool;
    }

    public Character getFrequency() {
        return this.frequency;
    }

    public void setFrequency(Character ch) {
        this.frequency = ch;
    }

    public Short getAmount() {
        return this.amount;
    }

    public void setAmount(Short sh) {
        this.amount = sh;
    }

    public String getAdditionalDetails() {
        return this.additionalDetails;
    }

    public void setAdditionalDetails(String str) {
        this.additionalDetails = str;
    }

    public Boolean getActive() {
        return this.active;
    }

    public void setActive(Boolean bool) {
        this.active = bool;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public Boolean getMultiplier() {
        return this.multiplier;
    }

    public void setMultiplier(Boolean bool) {
        this.multiplier = bool;
    }

    public String getIncentiveGroup() {
        return this.incentiveGroup;
    }

    public void setIncentiveGroup(String str) {
        this.incentiveGroup = str;
    }

    public Short getOrder() {
        return this.order;
    }

    public void setOrder(Short sh) {
        this.order = sh;
    }

    public String getManualType() {
        return this.manualType;
    }

    public void setManualType(String str) {
        this.manualType = str;
    }

    public Boolean getAllowApproval() {
        return this.allowApproval;
    }

    public void setAllowApproval(Boolean bool) {
        this.allowApproval = bool;
    }

    public int getApprovedAmount() {
        return this.approvedAmount;
    }

    public void setApprovedAmount(int i) {
        this.approvedAmount = i;
    }

    public String getQueryForList() {
        return this.queryForList;
    }

    public void setQueryForList(String str) {
        this.queryForList = str;
    }

    public Integer getOccurrenceFrequency() {
        return this.occurrenceFrequency;
    }

    public void setOccurrenceFrequency(Integer num) {
        this.occurrenceFrequency = num;
    }

    public Integer getMaxOccurrence() {
        return this.maxOccurrence;
    }

    public void setMaxOccurrence(Integer num) {
        this.maxOccurrence = num;
    }

    public Integer getCountLimit() {
        return this.countLimit;
    }

    public void setCountLimit(Integer num) {
        this.countLimit = num;
    }
}
