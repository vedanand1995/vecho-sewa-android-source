package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class DataQualityMemberDataBean {
    private boolean childServiceVaccinationStatus;
    private boolean deliveryPlaceVerification;
    private String healthId;
    private boolean isDeliveryHappened;
    private boolean isPregnant;
    private Long memberId;
    private String name;
    private boolean noOfChildGenderVerification;
    private String serviceType;
    private String ttInjectionReceivedStatus;

    public String getHealthId() {
        return this.healthId;
    }

    public void setHealthId(String str) {
        this.healthId = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Long getMemberId() {
        return this.memberId;
    }

    public void setMemberId(Long l) {
        this.memberId = l;
    }

    public String getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(String str) {
        this.serviceType = str;
    }

    public boolean isDeliveryHappened() {
        return this.isDeliveryHappened;
    }

    public void setDeliveryHappened(boolean z) {
        this.isDeliveryHappened = z;
    }

    public boolean isDeliveryPlaceVerification() {
        return this.deliveryPlaceVerification;
    }

    public void setDeliveryPlaceVerification(boolean z) {
        this.deliveryPlaceVerification = z;
    }

    public boolean isNoOfChildGenderVerification() {
        return this.noOfChildGenderVerification;
    }

    public void setNoOfChildGenderVerification(boolean z) {
        this.noOfChildGenderVerification = z;
    }

    public boolean isChildServiceVaccinationStatus() {
        return this.childServiceVaccinationStatus;
    }

    public void setChildServiceVaccinationStatus(boolean z) {
        this.childServiceVaccinationStatus = z;
    }

    public boolean isPregnant() {
        return this.isPregnant;
    }

    public void setPregnant(boolean z) {
        this.isPregnant = z;
    }

    public String getTtInjectionReceivedStatus() {
        return this.ttInjectionReceivedStatus;
    }

    public void setTtInjectionReceivedStatus(String str) {
        this.ttInjectionReceivedStatus = str;
    }
}
