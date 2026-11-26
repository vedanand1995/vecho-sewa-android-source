package com.argusoft.sewa.android.app.staticform;

import com.argusoft.sewa.android.app.morbidities.beans.BeneficiaryMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import java.util.Comparator;

/* loaded from: classes.dex */
public class DisplayMorbiditiesFormUtil {
    public static final Comparator<BeneficiaryMorbidityDetails> sortBeneficiaryMorbidityDetailsByBeneficiaryType = new Comparator<BeneficiaryMorbidityDetails>() { // from class: com.argusoft.sewa.android.app.staticform.DisplayMorbiditiesFormUtil.1
        @Override // java.util.Comparator
        public int compare(BeneficiaryMorbidityDetails beneficiaryMorbidityDetails, BeneficiaryMorbidityDetails beneficiaryMorbidityDetails2) {
            return beneficiaryMorbidityDetails.getBeneficiaryType().toLowerCase().compareTo(beneficiaryMorbidityDetails2.getBeneficiaryType().toLowerCase()) * (-1);
        }
    };
    public static final Comparator<IdentifiedMorbidityDetails> sortIdentifiedMorbiditiesByRiskFactor = new Comparator<IdentifiedMorbidityDetails>() { // from class: com.argusoft.sewa.android.app.staticform.DisplayMorbiditiesFormUtil.2
        @Override // java.util.Comparator
        public int compare(IdentifiedMorbidityDetails identifiedMorbidityDetails, IdentifiedMorbidityDetails identifiedMorbidityDetails2) {
            return Integer.compare(DisplayMorbiditiesFormUtil.riskValueOf(identifiedMorbidityDetails.getRiskFactorOfIdentifiedMorbidities()), DisplayMorbiditiesFormUtil.riskValueOf(identifiedMorbidityDetails2.getRiskFactorOfIdentifiedMorbidities()));
        }
    };

    private DisplayMorbiditiesFormUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static int riskValueOf(String str) {
        if (str.equalsIgnoreCase(MorbiditiesConstant.RED_COLOR)) {
            return 1;
        }
        if (str.equalsIgnoreCase(MorbiditiesConstant.YELLOW_COLOR)) {
            return 2;
        }
        return str.equalsIgnoreCase(MorbiditiesConstant.GREEN_COLOR) ? 3 : 4;
    }
}
