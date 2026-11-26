package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.IncentiveMasterDataBean;
import com.j256.ormlite.field.DatabaseField;
import java.util.Date;

/* loaded from: classes.dex */
public class IncentiveMaster extends BaseEntity {

    @DatabaseField
    private Boolean active;

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String additionalDetails;

    @DatabaseField
    private Boolean allowApproval;

    @DatabaseField
    private Short amount;

    @DatabaseField
    private String ashaBudgetLine;

    @DatabaseField
    private String code;

    @DatabaseField
    private Integer countLimit;

    @DatabaseField
    private String description;

    @DatabaseField
    private String frequency;

    @DatabaseField
    private String incentiveGroup;

    @DatabaseField
    private String incentiveTitle;

    @DatabaseField
    private String manualType;

    @DatabaseField
    private ManualType manualTypeEnum;

    @DatabaseField
    private Integer maxOccurrence;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private Boolean multiplier;

    @DatabaseField
    private Integer occurrenceFrequency;

    @DatabaseField
    private Short order;

    @DatabaseField
    private String queryForList;

    @DatabaseField
    private Boolean systemCalculated;

    public enum ManualType {
        BOOL,
        CNT,
        CNT_DET,
        CNT_DATE,
        LIST,
        DEPENDENT,
        MAMTA_DAY,
        AM
    }

    public IncentiveMaster() {
    }

    public IncentiveMaster(IncentiveMasterDataBean incentiveMasterDataBean) {
        this.actualId = incentiveMasterDataBean.getId();
        this.code = incentiveMasterDataBean.getCode();
        this.incentiveTitle = incentiveMasterDataBean.getIncentiveTitle();
        this.ashaBudgetLine = incentiveMasterDataBean.getAshaBudgetLine();
        this.description = incentiveMasterDataBean.getDescription();
        this.systemCalculated = incentiveMasterDataBean.getSystemCalculated();
        this.frequency = incentiveMasterDataBean.getIncentiveGroup();
        this.amount = incentiveMasterDataBean.getAmount();
        this.additionalDetails = incentiveMasterDataBean.getAdditionalDetails();
        this.active = incentiveMasterDataBean.getActive();
        this.modifiedOn = incentiveMasterDataBean.getModifiedOn();
        this.multiplier = incentiveMasterDataBean.getMultiplier();
        this.incentiveGroup = incentiveMasterDataBean.getIncentiveGroup();
        this.order = incentiveMasterDataBean.getOrder();
        this.manualType = incentiveMasterDataBean.getManualType();
        this.allowApproval = incentiveMasterDataBean.getAllowApproval();
        this.queryForList = incentiveMasterDataBean.getQueryForList();
        this.occurrenceFrequency = incentiveMasterDataBean.getOccurrenceFrequency();
        this.maxOccurrence = incentiveMasterDataBean.getMaxOccurrence();
        this.countLimit = incentiveMasterDataBean.getCountLimit();
    }

    public Integer getActualId() {
        return this.actualId;
    }

    public void setActualId(Integer num) {
        this.actualId = num;
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

    public String getFrequency() {
        return this.frequency;
    }

    public void setFrequency(String str) {
        this.frequency = str;
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

    public ManualType getManualTypeEnum() {
        return this.manualTypeEnum;
    }

    public void setManualTypeEnum(ManualType manualType) {
        this.manualTypeEnum = manualType;
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
