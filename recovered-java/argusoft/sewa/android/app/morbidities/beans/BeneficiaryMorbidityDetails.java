package com.argusoft.sewa.android.app.morbidities.beans;

import java.util.List;

/* loaded from: classes.dex */
public class BeneficiaryMorbidityDetails {
    private String beneficiaryId;
    private String beneficiaryName;
    private String beneficiaryType;
    private List<IdentifiedMorbidityDetails> identifiedMorbidities;

    public String getBeneficiaryId() {
        return this.beneficiaryId;
    }

    public void setBeneficiaryId(String str) {
        this.beneficiaryId = str;
    }

    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }

    public void setBeneficiaryName(String str) {
        this.beneficiaryName = str;
    }

    public String getBeneficiaryType() {
        return this.beneficiaryType;
    }

    public void setBeneficiaryType(String str) {
        this.beneficiaryType = str;
    }

    public List<IdentifiedMorbidityDetails> getIdentifiedMorbidities() {
        return this.identifiedMorbidities;
    }

    public void setIdentifiedMorbidities(List<IdentifiedMorbidityDetails> list) {
        this.identifiedMorbidities = list;
    }

    public String toString() {
        return "BeneficiaryMorbidityDetails{beneficiaryName=" + this.beneficiaryName + ", beneficiaryType=" + this.beneficiaryType + ", identifiedMorbidities=" + this.identifiedMorbidities + '}';
    }
}
