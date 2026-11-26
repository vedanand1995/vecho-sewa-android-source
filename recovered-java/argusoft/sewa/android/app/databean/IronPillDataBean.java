package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class IronPillDataBean {
    private Boolean ironPill;
    private String memberFullName;
    private String memberId;
    private String uniqueHealthId;

    public String getUniqueHealthId() {
        return this.uniqueHealthId;
    }

    public void setUniqueHealthId(String str) {
        this.uniqueHealthId = str;
    }

    public String getMemberId() {
        return this.memberId;
    }

    public void setMemberId(String str) {
        this.memberId = str;
    }

    public Boolean getIronPill() {
        return this.ironPill;
    }

    public void setIronPill(Boolean bool) {
        this.ironPill = bool;
    }

    public String getMemberFullName() {
        return this.memberFullName;
    }

    public void setMemberFullName(String str) {
        this.memberFullName = str;
    }
}
