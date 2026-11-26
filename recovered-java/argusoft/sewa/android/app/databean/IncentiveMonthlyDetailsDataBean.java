package com.argusoft.sewa.android.app.databean;

import com.argusoft.sewa.android.app.model.IncentiveMonthlyDetailsBean;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class IncentiveMonthlyDetailsDataBean {
    private String comments;
    private Integer groupId;
    private Integer id;
    private List<IncentiveDetailDataBean> incentiveDetails;
    private Date incentiveMonth;
    private Long ironSyrupCount;
    private List<IronSyrupDataBean> ironSyrupDtoList;
    private Map<String, List<ListOfIncentives>> listOfIncentives;
    private Date modifiedOn;
    private String remarks;
    private String status;
    private Integer userId;

    public IncentiveMonthlyDetailsDataBean() {
    }

    public IncentiveMonthlyDetailsDataBean(IncentiveMonthlyDetailsBean incentiveMonthlyDetailsBean) {
        this.id = incentiveMonthlyDetailsBean.getActualId();
        this.userId = incentiveMonthlyDetailsBean.getUserId();
        this.incentiveMonth = incentiveMonthlyDetailsBean.getIncentiveMonth();
        this.status = incentiveMonthlyDetailsBean.getStatus();
        this.remarks = incentiveMonthlyDetailsBean.getRemarks();
        this.comments = incentiveMonthlyDetailsBean.getComments();
        this.groupId = incentiveMonthlyDetailsBean.getGroupId();
        this.modifiedOn = incentiveMonthlyDetailsBean.getModifiedOn();
        this.ironSyrupCount = incentiveMonthlyDetailsBean.getIronSyrupCount();
        if (incentiveMonthlyDetailsBean.getIncentiveDetails() == null || incentiveMonthlyDetailsBean.getIncentiveDetails().isEmpty()) {
            return;
        }
        this.incentiveDetails = (List) new Gson().fromJson(incentiveMonthlyDetailsBean.getIncentiveDetails(), new TypeToken<List<IncentiveDetailDataBean>>() { // from class: com.argusoft.sewa.android.app.databean.IncentiveMonthlyDetailsDataBean.1
        }.getType());
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
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

    public List<IncentiveDetailDataBean> getIncentiveDetails() {
        return this.incentiveDetails;
    }

    public void setIncentiveDetails(List<IncentiveDetailDataBean> list) {
        this.incentiveDetails = list;
    }

    public List<IronSyrupDataBean> getIronSyrupDtoList() {
        return this.ironSyrupDtoList;
    }

    public void setIronSyrupDtoList(List<IronSyrupDataBean> list) {
        this.ironSyrupDtoList = list;
    }

    public Long getIronSyrupCount() {
        return this.ironSyrupCount;
    }

    public void setIronSyrupCount(Long l) {
        this.ironSyrupCount = l;
    }

    public Map<String, List<ListOfIncentives>> getListOfIncentives() {
        return this.listOfIncentives;
    }

    public void setListOfIncentives(Map<String, List<ListOfIncentives>> map) {
        this.listOfIncentives = map;
    }
}
