package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class MobileNumberUpdationBean {
    private String memberId;
    private String mobileNumber;
    private Boolean whatsappSmsSchems;

    public String getMemberId() {
        return this.memberId;
    }

    public void setMemberId(String str) {
        this.memberId = str;
    }

    public String getMobileNumber() {
        return this.mobileNumber;
    }

    public void setMobileNumber(String str) {
        this.mobileNumber = str;
    }

    public Boolean getWhatsappSmsSchems() {
        return this.whatsappSmsSchems;
    }

    public void setWhatsappSmsSchems(Boolean bool) {
        this.whatsappSmsSchems = bool;
    }

    public String toString() {
        return "MobileNumberUpdationBean{memberId='" + this.memberId + "', mobileNumber='" + this.mobileNumber + "', whatsappSmsSchems=" + this.whatsappSmsSchems + '}';
    }
}
