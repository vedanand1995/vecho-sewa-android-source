package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class IncentiveDetailDataBean {
    private Integer amount;
    private int approvedAmount;
    private String comment;
    private Integer id;
    private Long incentiveDate;
    private String incentiveGroup;
    private Integer incentiveId;
    private List<IncentiveMemberDetailsDataBean> incentiveMemberDetails;
    private Boolean isAbsent = Boolean.TRUE;
    private String location;
    private int mamtaCount;
    private Long mamtaDiwasDate;
    private String mamtaLocation;
    private Short order;
    private String status;
    private Integer val;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public Integer getIncentiveId() {
        return this.incentiveId;
    }

    public void setIncentiveId(Integer num) {
        this.incentiveId = num;
    }

    public Integer getVal() {
        return this.val;
    }

    public void setVal(Integer num) {
        this.val = num;
    }

    public Integer getAmount() {
        return this.amount;
    }

    public void setAmount(Integer num) {
        this.amount = num;
    }

    public List<IncentiveMemberDetailsDataBean> getIncentiveMemberDetails() {
        return this.incentiveMemberDetails;
    }

    public void setIncentiveMemberDetails(List<IncentiveMemberDetailsDataBean> list) {
        this.incentiveMemberDetails = list;
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

    public Long getIncentiveDate() {
        return this.incentiveDate;
    }

    public void setIncentiveDate(Long l) {
        this.incentiveDate = l;
    }

    public int getApprovedAmount() {
        return this.approvedAmount;
    }

    public void setApprovedAmount(int i) {
        this.approvedAmount = i;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public Boolean getIsAbsent() {
        return this.isAbsent;
    }

    public void setIsAbsent(Boolean bool) {
        this.isAbsent = bool;
    }

    public String getMamtaLocation() {
        return this.mamtaLocation;
    }

    public void setMamtaLocation(String str) {
        this.mamtaLocation = str;
    }

    public Long getMamtaDiwasDate() {
        return this.mamtaDiwasDate;
    }

    public void setMamtaDiwasDate(Long l) {
        this.mamtaDiwasDate = l;
    }

    public int getMamtaCount() {
        return this.mamtaCount;
    }

    public void setMamtaCount(int i) {
        this.mamtaCount = i;
    }
}
