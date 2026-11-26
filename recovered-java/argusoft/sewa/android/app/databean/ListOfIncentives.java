package com.argusoft.sewa.android.app.databean;

import java.util.Date;

/* loaded from: classes.dex */
public class ListOfIncentives {
    private Integer familyId;
    private String familyUniqueId;
    private Integer id;
    private Integer incentiveDetailsId;
    private Date incentiveMonthDate;
    private int incentiveMonthId;
    private Boolean isFamily;
    private String memberFullName;
    private String memberId;
    private String uniqueHealthId;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public String getMemberFullName() {
        return this.memberFullName;
    }

    public void setMemberFullName(String str) {
        this.memberFullName = str;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public void setMemberId(String str) {
        this.memberId = str;
    }

    public String getUniqueHealthId() {
        return this.uniqueHealthId;
    }

    public void setUniqueHealthId(String str) {
        this.uniqueHealthId = str;
    }

    public Date getIncentiveMonthDate() {
        return this.incentiveMonthDate;
    }

    public void setIncentiveMonthDate(Date date) {
        this.incentiveMonthDate = date;
    }

    public int getIncentiveMonthId() {
        return this.incentiveMonthId;
    }

    public void setIncentiveMonthId(int i) {
        this.incentiveMonthId = i;
    }

    public Integer getIncentiveDetailsId() {
        return this.incentiveDetailsId;
    }

    public void setIncentiveDetailsId(Integer num) {
        this.incentiveDetailsId = num;
    }

    public Integer getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(Integer num) {
        this.familyId = num;
    }

    public String getFamilyUniqueId() {
        return this.familyUniqueId;
    }

    public void setFamilyUniqueId(String str) {
        this.familyUniqueId = str;
    }

    public Boolean getFamily() {
        return this.isFamily;
    }

    public void setFamily(Boolean bool) {
        this.isFamily = bool;
    }
}
