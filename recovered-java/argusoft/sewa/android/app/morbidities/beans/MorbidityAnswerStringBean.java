package com.argusoft.sewa.android.app.morbidities.beans;

import com.argusoft.sewa.android.app.staticform.DisplayMorbiditiesFormUtil;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MorbidityAnswerStringBean {
    private List<BeneficiaryMorbidityDetails> beneficiaryMorbidityDetailses;
    private String familyUnderstand;
    private String morbidityAnswerString;

    public MorbidityAnswerStringBean(List<BeneficiaryMorbidityDetails> list, String str, String str2) {
        this.beneficiaryMorbidityDetailses = list;
        this.familyUnderstand = str;
        this.morbidityAnswerString = str2;
    }

    public MorbidityAnswerStringBean() {
    }

    public List<BeneficiaryMorbidityDetails> getBeneficiaryMorbidityDetailses() {
        return this.beneficiaryMorbidityDetailses;
    }

    public void setBeneficiaryMorbidityDetailses(List<BeneficiaryMorbidityDetails> list) {
        this.beneficiaryMorbidityDetailses = list;
    }

    public String getFamilyUnderstand() {
        return this.familyUnderstand;
    }

    public void setFamilyUnderstand(String str) {
        this.familyUnderstand = str;
    }

    public String getMorbidityAnswerString() {
        return this.morbidityAnswerString;
    }

    public void setMorbidityAnswerString(String str) {
        this.morbidityAnswerString = str;
    }

    public String calculateMorbidityString() {
        List<BeneficiaryMorbidityDetails> list = this.beneficiaryMorbidityDetailses;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Collections.sort(this.beneficiaryMorbidityDetailses, DisplayMorbiditiesFormUtil.sortBeneficiaryMorbidityDetailsByBeneficiaryType);
        StringBuilder sb = new StringBuilder();
        for (BeneficiaryMorbidityDetails beneficiaryMorbidityDetails : this.beneficiaryMorbidityDetailses) {
            StringBuilder sb2 = new StringBuilder("0!");
            sb2.append(beneficiaryMorbidityDetails.getBeneficiaryId());
            sb2.append("~1!");
            sb2.append(beneficiaryMorbidityDetails.getBeneficiaryName());
            sb2.append("~2!");
            sb2.append(beneficiaryMorbidityDetails.getBeneficiaryType());
            sb2.append("~3!");
            sb2.append(this.familyUnderstand);
            sb2.append("~4!");
            List<IdentifiedMorbidityDetails> identifiedMorbidities = beneficiaryMorbidityDetails.getIdentifiedMorbidities();
            int size = identifiedMorbidities.size();
            if (size == 0) {
                sb2.append("F~");
            } else {
                sb2.append("T~5!");
            }
            for (int i = 0; i < size; i++) {
                IdentifiedMorbidityDetails identifiedMorbidityDetails = identifiedMorbidities.get(i);
                sb2.append(UtilBean.split(identifiedMorbidityDetails.getMorbidityCode(), GlobalTypes.KEY_VALUE_SEPARATOR)[0]);
                sb2.append(GlobalTypes.MORBIDITY_DETAILS_SEPARATOR);
                sb2.append(identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities());
                sb2.append(GlobalTypes.MORBIDITY_DETAILS_SEPARATOR);
                Iterator<String> it = identifiedMorbidityDetails.getIdentifiedSymptoms().iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append(GlobalTypes.COMMA);
                }
                sb2.append(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
            }
            sb.append(sb2.toString());
            sb.append(GlobalTypes.BENEFICIARY_SEPARATOR);
        }
        return sb.toString();
    }
}
