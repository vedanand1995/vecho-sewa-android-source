package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class NamoshreeAbortionDetailsDataBean {
    private Integer abortionCount;
    private String familyId;
    private Long memberId;

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public String getFamilyId() {
        return this.familyId;
    }

    public void setFamilyId(String str) {
        this.familyId = str;
    }

    public Integer getAbortionCount() {
        return this.abortionCount;
    }

    public void setAbortionCount(Integer num) {
        this.abortionCount = num;
    }

    public String toString() {
        return "NamoshreeAbortionDetailsDataBean{memberId=" + this.memberId + ", familyId='" + this.familyId + "', abortionCount=" + this.abortionCount + '}';
    }
}
