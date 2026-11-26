package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class IncentiveApprovalDataBean {
    private String comments;
    private IncentiveDetailDataBean detailsDataBean;
    private Integer incentiveMonthId;

    public Integer getIncentiveMonthId() {
        return this.incentiveMonthId;
    }

    public void setIncentiveMonthId(Integer num) {
        this.incentiveMonthId = num;
    }

    public String getComments() {
        return this.comments;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public IncentiveDetailDataBean getDetailsDataBean() {
        return this.detailsDataBean;
    }

    public void setDetailsDataBean(IncentiveDetailDataBean incentiveDetailDataBean) {
        this.detailsDataBean = incentiveDetailDataBean;
    }
}
