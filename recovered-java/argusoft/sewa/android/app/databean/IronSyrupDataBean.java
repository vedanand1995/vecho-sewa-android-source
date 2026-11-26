package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class IronSyrupDataBean {
    private Boolean ironSyrup;
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

    public Boolean getIronSyrup() {
        return this.ironSyrup;
    }

    public void setIronSyrup(Boolean bool) {
        this.ironSyrup = bool;
    }

    public String getMemberFullName() {
        return this.memberFullName;
    }

    public void setMemberFullName(String str) {
        this.memberFullName = str;
    }
}
