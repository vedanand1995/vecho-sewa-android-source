package com.argusoft.sewa.android.app.morbidities.beans;

import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class IdentifiedMorbidityDetails {
    private List<String> identifiedSymptoms = new ArrayList();
    private String morbidityCode;
    private String riskFactorOfIdentifiedMorbidities;

    public List<String> getIdentifiedSymptoms() {
        return this.identifiedSymptoms;
    }

    public void setIdentifiedSymptoms(List<String> list) {
        this.identifiedSymptoms = list;
    }

    public String getMorbidityCode() {
        return this.morbidityCode;
    }

    public void setMorbidityCode(String str) {
        this.morbidityCode = str;
    }

    public String getRiskFactorOfIdentifiedMorbidities() {
        return this.riskFactorOfIdentifiedMorbidities;
    }

    public void setRiskFactorOfIdentifiedMorbidities(String str) {
        this.riskFactorOfIdentifiedMorbidities = str;
    }

    public String toString() {
        return "IdentifiedMorbidityDetails{MorbidityCode=" + MorbiditiesConstant.getMorbidityCodeAsKEYandMorbidityNameAsVALUE(this.morbidityCode) + ", riskFactorOfIdentifiedMorbidities=" + this.riskFactorOfIdentifiedMorbidities + ", identifiedSymptoms=" + this.identifiedSymptoms + '}';
    }
}
