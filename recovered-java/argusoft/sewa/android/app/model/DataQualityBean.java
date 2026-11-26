package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class DataQualityBean extends BaseEntity implements Serializable {

    @DatabaseField
    private boolean childServiceVaccinationStatus;

    @DatabaseField
    private boolean isDeliveryHappened;

    @DatabaseField
    private boolean isDeliveryPlaceVerificationDone;

    @DatabaseField
    private boolean isPregnant;

    @DatabaseField
    private Long memberId;

    @DatabaseField
    private Date modifiedOn;

    @DatabaseField
    private boolean noOfChildGenderVerification;

    @DatabaseField
    private String serviceType;

    @DatabaseField
    private String ttInjectionReceivedStatus;

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

    public boolean isDeliveryPlaceVerificationDone() {
        return this.isDeliveryPlaceVerificationDone;
    }

    public void setDeliveryPlaceVerificationDone(boolean z) {
        this.isDeliveryPlaceVerificationDone = z;
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

    public Date getModifiedOn() {
        return this.modifiedOn;
    }

    public void setModifiedOn(Date date) {
        this.modifiedOn = date;
    }

    public String getTtInjectionReceivedStatus() {
        return this.ttInjectionReceivedStatus;
    }

    public void setTtInjectionReceivedStatus(String str) {
        this.ttInjectionReceivedStatus = str;
    }

    public String toString() {
        return "DataQualityBean{memberId=" + this.memberId + ", serviceType='" + this.serviceType + "', isDeliveryHappened=" + this.isDeliveryHappened + ", isDeliveryPlaceVerificationDone=" + this.isDeliveryPlaceVerificationDone + ", noOfChildGenderVerification=" + this.noOfChildGenderVerification + ", childServiceVaccinationStatus=" + this.childServiceVaccinationStatus + ", isPregnant=" + this.isPregnant + ", ttInjectionReceivedStatus=" + this.ttInjectionReceivedStatus + ", modifiedOn=" + this.modifiedOn + '}';
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.argusoft.sewa.android.app.model.BaseEntity
    public int hashCode() {
        return super.hashCode();
    }
}
