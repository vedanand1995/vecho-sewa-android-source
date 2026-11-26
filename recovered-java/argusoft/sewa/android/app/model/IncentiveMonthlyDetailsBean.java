package com.argusoft.sewa.android.app.model;

import com.argusoft.sewa.android.app.databean.IncentiveMonthlyDetailsDataBean;
import com.google.gson.Gson;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@DatabaseTable
/* loaded from: classes.dex */
public class IncentiveMonthlyDetailsBean extends BaseEntity {

    @DatabaseField
    private Integer actualId;

    @DatabaseField
    private String comments;

    @DatabaseField
    private Integer groupId;

    @DatabaseField
    private String incentiveDetails;

    @DatabaseField
    private Date incentiveMonth;

    @DatabaseField
    private Long ironSyrupCount;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private String remarks;

    @DatabaseField
    private String status;

    @DatabaseField
    private Integer userId;

    public IncentiveMonthlyDetailsBean() {
    }

    public IncentiveMonthlyDetailsBean(IncentiveMonthlyDetailsDataBean incentiveMonthlyDetailsDataBean) {
        this.actualId = incentiveMonthlyDetailsDataBean.getId();
        this.userId = incentiveMonthlyDetailsDataBean.getUserId();
        this.incentiveMonth = incentiveMonthlyDetailsDataBean.getIncentiveMonth();
        this.status = incentiveMonthlyDetailsDataBean.getStatus();
        this.remarks = incentiveMonthlyDetailsDataBean.getRemarks();
        this.comments = incentiveMonthlyDetailsDataBean.getComments();
        this.groupId = incentiveMonthlyDetailsDataBean.getGroupId();
        this.modifiedOn = incentiveMonthlyDetailsDataBean.getModifiedOn();
        this.ironSyrupCount = incentiveMonthlyDetailsDataBean.getIronSyrupCount();
        if (incentiveMonthlyDetailsDataBean.getIncentiveDetails() == null || incentiveMonthlyDetailsDataBean.getIncentiveDetails().isEmpty()) {
            return;
        }
        this.incentiveDetails = new Gson().toJson(incentiveMonthlyDetailsDataBean.getIncentiveDetails());
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

    public Date getIncentiveMonth() {
        return this.incentiveMonth;
    }

    public void setIncentiveMonth(Date date) {
        this.incentiveMonth = date;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String str) {
        this.remarks = str;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public Integer getGroupId() {
        return this.groupId;
    }

    public void setGroupId(Integer num) {
        this.groupId = num;
    }

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String getIncentiveDetails() {
        return this.incentiveDetails;
    }

    public void setIncentiveDetails(String str) {
        this.incentiveDetails = str;
    }

    public Long getIronSyrupCount() {
        return this.ironSyrupCount;
    }

    public void setIronSyrupCount(Long l) {
        this.ironSyrupCount = l;
    }

    public static class Status {
        public static final String AF_APPROVED = "AF_APPROVED";
        public static final String APPROVAL_PENDING = "APPROVAL_PENDING";
        public static final String ASHA_APPROVED = "ASHA_APPROVED";
        public static final String MO_APPROVED = "MO_APPROVED";
        public static final String MO_COMPLETED = "MO_COMPLETED";
        public static final String MO_REFERRED_TO_CHO = "MO_REFERRED_TO_CHO";
        public static final String PENDING = "PENDING";
        public static final List<String> PENDING_STATUSES = Collections.unmodifiableList(getStatusList());
        public static final String REAPPROVAL_PENDING = "REAPPROVAL_PENDING";
        public static final String REVERIFICATION = "REVERIFICATION";

        private static List<String> getStatusList() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("PENDING");
            arrayList.add(REVERIFICATION);
            return arrayList;
        }
    }
}
