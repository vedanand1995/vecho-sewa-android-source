package com.argusoft.sewa.android.app.morbidities.service;

import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.morbidities.beans.DataBeanToIdentifyChildCareMorbidities;
import com.argusoft.sewa.android.app.morbidities.beans.IdentifiedMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class ChildCareMorbiditiesService {
    private DataBeanToIdentifyChildCareMorbidities dtim;
    private List<IdentifiedMorbidityDetails> identifiedMorbidities;

    public ChildCareMorbiditiesService(DataBeanToIdentifyChildCareMorbidities dataBeanToIdentifyChildCareMorbidities, List<IdentifiedMorbidityDetails> list) {
        this.dtim = dataBeanToIdentifyChildCareMorbidities;
        this.identifiedMorbidities = list;
        isAnemia();
        isChronicCoughOrCold();
        isColdOrCough();
        isDiarrhoeaWithSevereDehydration();
        isDiarrhoeaWithSomeDehydration();
        isDiarrhoeaWithNoDehydration();
        isDysentery();
        isNotVeryLowWeight();
        isPneumonia();
        isSevereAnemia();
        isSevereMalnutrition();
        isSeverePersistentDiarrhoea();
        isSeverePneumoniaOrSeriousBacterialInfection();
        isVeryLowWeight();
        isVerySevereFebrileIllness();
        isMalaria();
    }

    private void isSeverePneumoniaOrSeriousBacterialInfection() {
        boolean z;
        boolean z2;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (Boolean.TRUE.equals(this.dtim.isDoeschildHaveCoughOrDifficultBreathing())) {
            z = true;
            if (Boolean.FALSE.equals(this.dtim.isChildNOTAbleToDrinkOrBreastfeed())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_NOT_ABLE_TO_DRINK_OR_BREAST_FEEDING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            } else {
                z2 = false;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isChildVomitsEverything())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isChildHadConvulsion())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAS_THE_CHILD_HAD_CONVULSION));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isIschildLethargicOrUnconscious())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_LETHARGIC_OR_UNCONSCIOUS));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isChildHaveChestIndrawing())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_CHEST_INDRAWING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            } else {
                z = z2;
            }
        } else {
            z = false;
        }
        sb.delete(0, sb.length());
        if (z) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_COUGH_OR_DIFFICULT_BREATHING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("SPSBI", identifiedMorbidityDetails);
        }
    }

    private void isColdOrCough() {
        StringBuilder sb = new StringBuilder();
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isDoeschildHaveCoughOrDifficultBreathing()) && Boolean.FALSE.equals(this.dtim.isChildVomitsEverything()) && Boolean.TRUE.equals(this.dtim.isChildNOTAbleToDrinkOrBreastfeed()) && Boolean.FALSE.equals(this.dtim.isChildHadConvulsion()) && Boolean.FALSE.equals(this.dtim.isIschildLethargicOrUnconscious()) && this.dtim.getAgeOfChild() != null && this.dtim.getRespiratoryRate() != null && this.dtim.getSinceHowManyDaysOfCough() != null && this.dtim.getSinceHowManyDaysOfCough().intValue() < 14) {
            if ((this.dtim.getRespiratoryRate().intValue() >= 50 || this.dtim.getAgeOfChild().longValue() < UtilBean.getMilliSeconds(0, 2, 0) || this.dtim.getAgeOfChild().longValue() > UtilBean.getMilliSeconds(1, 0, 0)) && (this.dtim.getRespiratoryRate().intValue() >= 40 || this.dtim.getAgeOfChild().longValue() <= UtilBean.getMilliSeconds(1, 0, 0))) {
                return;
            }
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(new Date().getTime() - this.dtim.getAgeOfChild().longValue());
            sb.append(UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2]));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.RESPIRATORY_RATE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getRespiratoryRate().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_NOT_ABLE_TO_DRINK_OR_BREAST_FEEDING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAS_THE_CHILD_HAD_CONVULSION));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_LETHARGIC_OR_UNCONSCIOUS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_COUGH_OR_DIFFICULT_BREATHING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(LabelConstants.SINCE_LESS_THAN_14_DAYS));
            addIdentifiedMorbidityIntoList("COCOU", identifiedMorbidityDetails);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void isChronicCoughOrCold() {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.morbidities.service.ChildCareMorbiditiesService.isChronicCoughOrCold():void");
    }

    private void isDiarrhoeaWithSevereDehydration() {
        int i;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        int i2 = 0;
        if (this.dtim.getSinceHowManyDaysOfStools() != null && this.dtim.getSinceHowManyDaysOfStools().intValue() < 14) {
            StringBuilder sb = new StringBuilder();
            if (Boolean.TRUE.equals(this.dtim.isSunkenEyes())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SUNKEN_EYES));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                i = 1;
            } else {
                i = 0;
            }
            if (Boolean.TRUE.equals(this.dtim.isLethargicOrUnconscious())) {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.LETHARGIC_OR_UNCONSCIOUS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel("Yes"));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.LETHARGIC_OR_UNCONSCIOUS));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel("Yes"));
                }
                i++;
            }
            if (this.dtim.getDoesSkinGoesBackVerySlowly() != null && this.dtim.getDoesSkinGoesBackVerySlowly().equalsIgnoreCase(MorbiditiesConstant.VERY_SLOWLY)) {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.VERY_SLOWLY));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else if (i == 0) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.VERY_SLOWLY));
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.VERY_SLOWLY));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                }
                i++;
            }
            if (this.dtim.getHowChildDrinks() == null || !(this.dtim.getHowChildDrinks().equalsIgnoreCase(MorbiditiesConstant.NOT_ABLE_TO_DRINK) || this.dtim.getHowChildDrinks().equalsIgnoreCase(MorbiditiesConstant.DRINKING_POORLY))) {
                i2 = i;
            } else {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else if (i == 0) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                }
                i2 = i + 1;
            }
        }
        if (i2 > 1) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_DIARRHOEA) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(LabelConstants.SINCE_LESS_THAN_14_DAYS));
            addIdentifiedMorbidityIntoList("DWSD", identifiedMorbidityDetails);
        }
    }

    private void isDiarrhoeaWithSomeDehydration() {
        int i;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        int i2 = 0;
        if (this.dtim.getSinceHowManyDaysOfStools() != null && this.dtim.getSinceHowManyDaysOfStools().intValue() < 14) {
            StringBuilder sb = new StringBuilder();
            if (Boolean.TRUE.equals(this.dtim.isRestlessOrIrritable())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.RESTLESS_OR_IRRITABLE));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                i = 1;
            } else {
                i = 0;
            }
            if (Boolean.TRUE.equals(this.dtim.isSunkenEyes())) {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SUNKEN_EYES));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel("Yes"));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.SUNKEN_EYES));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel("Yes"));
                }
                i++;
            }
            if (this.dtim.getHowChildDrinks() != null && (this.dtim.getHowChildDrinks().equalsIgnoreCase(MorbiditiesConstant.THIRSTY) || this.dtim.getHowChildDrinks().equalsIgnoreCase(MorbiditiesConstant.NORMALLY))) {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else if (i == 0) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HOW_DOES_HE_SHE_DRINKS_IT));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.getStaticValueAndKeyMap().get(this.dtim.getHowChildDrinks())));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                }
                i++;
            }
            if (this.dtim.getDoesSkinGoesBackVerySlowly() == null || !this.dtim.getDoesSkinGoesBackVerySlowly().equalsIgnoreCase(MorbiditiesConstant.SLOWLY)) {
                i2 = i;
            } else {
                if (i == 1) {
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.SLOWLY));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                } else if (i == 0) {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.SLOWLY));
                } else {
                    sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_SKIN_GOES_BACK_VERY_SLOWLY));
                    sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                    sb.append(UtilBean.getMyLabel(LabelConstants.SLOWLY));
                    identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                    sb.delete(0, sb.length());
                }
                i2 = i + 1;
            }
        }
        if (i2 > 1) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_DIARRHOEA) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(LabelConstants.SINCE_LESS_THAN_14_DAYS));
            addIdentifiedMorbidityIntoList("DSD", identifiedMorbidityDetails);
        }
    }

    private void isDiarrhoeaWithNoDehydration() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getSinceHowManyDaysOfStools() == null || this.dtim.getSinceHowManyDaysOfStools().intValue() >= 14) {
            return;
        }
        List<IdentifiedMorbidityDetails> list = this.identifiedMorbidities;
        boolean z = false;
        if (list != null && !list.isEmpty()) {
            for (int i = 0; i < this.identifiedMorbidities.size(); i++) {
                IdentifiedMorbidityDetails identifiedMorbidityDetails2 = this.identifiedMorbidities.get(i);
                if ("DWSD".equals(identifiedMorbidityDetails2.getMorbidityCode()) || "DSD".equals(identifiedMorbidityDetails2.getMorbidityCode())) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_DIARRHOEA) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(LabelConstants.SINCE_LESS_THAN_14_DAYS));
        addIdentifiedMorbidityIntoList("DWND", identifiedMorbidityDetails);
    }

    private void isSeverePersistentDiarrhoea() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getSinceHowManyDaysOfStools() == null || this.dtim.getSinceHowManyDaysOfStools().intValue() < 14) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_MORE_STOOLS_DIARRHOEA));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("Yes"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        sb.delete(0, sb.length());
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(LabelConstants.SINCE_MORE_THAN_14_DAYS));
        addIdentifiedMorbidityIntoList("SPD", identifiedMorbidityDetails);
    }

    private void isVerySevereFebrileIllness() {
        boolean z;
        boolean z2;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if ((this.dtim.getMeasureAxillaryTemperatureIfFeverNo() == null || this.dtim.getMeasureAxillaryTemperatureIfFeverNo().floatValue() < 99.5d) && ((this.dtim.getMeasureAxillaryTemperatureIfFeverYes() == null || this.dtim.getMeasureAxillaryTemperatureIfFeverYes().floatValue() < 99.5d) && !((this.dtim.getFeverFlag() != null && Boolean.TRUE.equals(this.dtim.getFeverFlag())) || Boolean.TRUE.equals(this.dtim.getFeverFlag()) || Boolean.TRUE.equals(this.dtim.isTouchChildSkinOnAbdomenDoesItHaveFever())))) {
            z = false;
        } else {
            z = true;
            if (Boolean.FALSE.equals(this.dtim.isChildNOTAbleToDrinkOrBreastfeed())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_NOT_ABLE_TO_DRINK_OR_BREAST_FEEDING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            } else {
                z2 = false;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isChildVomitsEverything())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isChildHadConvulsion())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAS_THE_CHILD_HAD_CONVULSION));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isIschildLethargicOrUnconscious())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_LETHARGIC_OR_UNCONSCIOUS));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isIfMoreThan7DaysHasFeverBeenPresentEachDay())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IF_MORE_THAN_7_DAYS_HAS_FEVER_BEEN_PRESENT_EACH_DAY));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isTheNeckStiff())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_NECK_STIFF));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            } else {
                z = z2;
            }
            sb.delete(0, sb.length());
        }
        if (z) {
            sb.delete(0, sb.length());
            if (this.dtim.getMeasureAxillaryTemperatureIfFeverNo() != null && this.dtim.getMeasureAxillaryTemperatureIfFeverNo().floatValue() >= 99.5d) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AXILLARY_TEMPERATURE));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getMeasureAxillaryTemperatureIfFeverNo());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (this.dtim.getMeasureAxillaryTemperatureIfFeverYes() != null && this.dtim.getMeasureAxillaryTemperatureIfFeverYes().floatValue() >= 99.5d) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AXILLARY_TEMPERATURE));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getMeasureAxillaryTemperatureIfFeverYes());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (this.dtim.getFeverFlag() != null && Boolean.TRUE.equals(this.dtim.getFeverFlag())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FEVER));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
            }
            if (Boolean.TRUE.equals(this.dtim.isTouchChildSkinOnAbdomenDoesItHaveFever())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.TOUCH_CHILD_S_SKIN_ON_ABDOMEN_DOES_IT_HAVE_FEVER));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            }
            addIdentifiedMorbidityIntoList("VSFI", identifiedMorbidityDetails);
        }
    }

    private void isSevereMalnutrition() {
        boolean z;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        if (Boolean.TRUE.equals(this.dtim.isVisibleSevereWasting())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VISIBLE_SEVERE_WASTING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        } else {
            z = false;
        }
        sb.delete(0, sb.length());
        if (Boolean.TRUE.equals(this.dtim.isEdemaOfBothFeet())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.EDEMA_OF_BOTH_FEET));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            z = true;
        }
        sb.delete(0, sb.length());
        if ("Red".equalsIgnoreCase(this.dtim.getMalnutritionGradeOfChild())) {
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.MALNUTRITION_GRADE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Red"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        } else {
            z2 = z;
        }
        if (z2) {
            addIdentifiedMorbidityIntoList("SMAL", identifiedMorbidityDetails);
        }
    }

    private void isSevereAnemia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getDoesTheChildHavePalmerPoller() == null || !this.dtim.getDoesTheChildHavePalmerPoller().equalsIgnoreCase(MorbiditiesConstant.SEVERE)) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_PALMER_POLLER) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel(LabelConstants.HB_SEVERE));
        addIdentifiedMorbidityIntoList("SAFC", identifiedMorbidityDetails);
    }

    private void isPneumonia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isDoeschildHaveCoughOrDifficultBreathing()) && Boolean.TRUE.equals(this.dtim.isChildNOTAbleToDrinkOrBreastfeed()) && Boolean.FALSE.equals(this.dtim.isChildVomitsEverything()) && Boolean.FALSE.equals(this.dtim.isChildHadConvulsion()) && Boolean.FALSE.equals(this.dtim.isIschildLethargicOrUnconscious()) && Boolean.FALSE.equals(this.dtim.isChildHaveChestIndrawing()) && this.dtim.getNumberOfBreathsIn1Minute() != null && this.dtim.getAgeOfChild() != null) {
            if ((this.dtim.getNumberOfBreathsIn1Minute().intValue() <= 50 || this.dtim.getAgeOfChild().longValue() < UtilBean.getMilliSeconds(0, 2, 0) || this.dtim.getAgeOfChild().longValue() > UtilBean.getMilliSeconds(1, 0, 0)) && (this.dtim.getNumberOfBreathsIn1Minute().intValue() <= 40 || this.dtim.getAgeOfChild().longValue() <= UtilBean.getMilliSeconds(1, 0, 0))) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_COUGH_OR_DIFFICULT_BREATHING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("Yes"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_NOT_ABLE_TO_DRINK_OR_BREAST_FEEDING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_CHEST_INDRAWING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAS_THE_CHILD_HAD_CONVULSION));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_LETHARGIC_OR_UNCONSCIOUS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AGE_IS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            int[] iArrCalculateAgeYearMonthDay = UtilBean.calculateAgeYearMonthDay(new Date().getTime() - this.dtim.getAgeOfChild().longValue());
            sb.append(UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDay[0], iArrCalculateAgeYearMonthDay[1], iArrCalculateAgeYearMonthDay[2]));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.RESPIRATORY_RATE));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(this.dtim.getNumberOfBreathsIn1Minute().toString());
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            addIdentifiedMorbidityIntoList("PNEUFC", identifiedMorbidityDetails);
        }
    }

    private void isDysentery() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (Boolean.TRUE.equals(this.dtim.isBloodInStools())) {
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.BLOOD_IN_STOOLS) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Yes"));
            addIdentifiedMorbidityIntoList("DYSEN", identifiedMorbidityDetails);
        }
    }

    private void isMalaria() {
        boolean z;
        boolean z2;
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        StringBuilder sb = new StringBuilder();
        if (Boolean.FALSE.equals(this.dtim.isChildNOTAbleToDrinkOrBreastfeed()) || Boolean.TRUE.equals(this.dtim.isChildVomitsEverything()) || Boolean.TRUE.equals(this.dtim.isChildHadConvulsion()) || Boolean.TRUE.equals(this.dtim.isIschildLethargicOrUnconscious()) || Boolean.TRUE.equals(this.dtim.isIfMoreThan7DaysHasFeverBeenPresentEachDay()) || Boolean.TRUE.equals(this.dtim.isTheNeckStiff())) {
            z = false;
        } else {
            z = true;
            if (this.dtim.getMeasureAxillaryTemperatureIfFeverNo() == null || this.dtim.getMeasureAxillaryTemperatureIfFeverNo().floatValue() < 99.5d) {
                z2 = false;
            } else {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AXILLARY_TEMPERATURE));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getMeasureAxillaryTemperatureIfFeverNo());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
                z2 = true;
            }
            if (this.dtim.getMeasureAxillaryTemperatureIfFeverYes() != null && this.dtim.getMeasureAxillaryTemperatureIfFeverYes().floatValue() >= 99.5d) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.AXILLARY_TEMPERATURE));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(this.dtim.getMeasureAxillaryTemperatureIfFeverYes());
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
                z2 = true;
            }
            if (this.dtim.getFeverFlag() != null && Boolean.TRUE.equals(this.dtim.getFeverFlag())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.FEVER));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
                sb.delete(0, sb.length());
                z2 = true;
            }
            sb.delete(0, sb.length());
            if (Boolean.TRUE.equals(this.dtim.isTouchChildSkinOnAbdomenDoesItHaveFever())) {
                sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.TOUCH_CHILD_S_SKIN_ON_ABDOMEN_DOES_IT_HAVE_FEVER));
                sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
                sb.append(UtilBean.getMyLabel("Yes"));
                identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            } else {
                z = z2;
            }
        }
        if (z) {
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_NOT_ABLE_TO_DRINK_OR_BREAST_FEEDING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VOMITING));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.HAS_THE_CHILD_HAD_CONVULSION));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_CHILD_LETHARGIC_OR_UNCONSCIOUS));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IF_MORE_THAN_7_DAYS_HAS_FEVER_BEEN_PRESENT_EACH_DAY));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.IS_THE_NECK_STIFF));
            sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
            sb.append(UtilBean.getMyLabel("No"));
            identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
            sb.delete(0, sb.length());
            addIdentifiedMorbidityIntoList("MALAR", identifiedMorbidityDetails);
        }
    }

    private void isVeryLowWeight() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.isVisibleSevereWasting() == null || !Boolean.FALSE.equals(this.dtim.isVisibleSevereWasting()) || this.dtim.isEdemaOfBothFeet() == null || !Boolean.FALSE.equals(this.dtim.isEdemaOfBothFeet()) || this.dtim.getMalnutritionGradeOfChild() == null || !this.dtim.getMalnutritionGradeOfChild().equalsIgnoreCase("Yellow")) {
            return;
        }
        StringBuilder sb = new StringBuilder(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.MALNUTRITION_GRADE));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("Yellow"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        sb.delete(0, sb.length());
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VISIBLE_SEVERE_WASTING));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("No"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        sb.delete(0, sb.length());
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.EDEMA_OF_BOTH_FEET));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("No"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        addIdentifiedMorbidityIntoList("VLW", identifiedMorbidityDetails);
    }

    private void isAnemia() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.getDoesTheChildHavePalmerPoller() == null || !this.dtim.getDoesTheChildHavePalmerPoller().equalsIgnoreCase("SMMLD")) {
            return;
        }
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.DOES_THE_CHILD_HAVE_PALMER_POLLER) + MorbiditiesConstant.EQUALS_SYMBOL + UtilBean.getMyLabel("Some"));
        addIdentifiedMorbidityIntoList("ANEMA", identifiedMorbidityDetails);
    }

    private void isNotVeryLowWeight() {
        IdentifiedMorbidityDetails identifiedMorbidityDetails = new IdentifiedMorbidityDetails();
        if (this.dtim.isVisibleSevereWasting() == null || !Boolean.FALSE.equals(this.dtim.isVisibleSevereWasting()) || this.dtim.isEdemaOfBothFeet() == null || !Boolean.FALSE.equals(this.dtim.isEdemaOfBothFeet()) || this.dtim.getMalnutritionGradeOfChild() == null || !this.dtim.getMalnutritionGradeOfChild().equalsIgnoreCase("Green")) {
            return;
        }
        StringBuilder sb = new StringBuilder(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.MALNUTRITION_GRADE));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("Green"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        sb.delete(0, sb.length());
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.VISIBLE_SEVERE_WASTING));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("No"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        sb.delete(0, sb.length());
        sb.append(UtilBean.getMyLabel(MorbiditiesConstant.MorbiditySymptoms.EDEMA_OF_BOTH_FEET));
        sb.append(MorbiditiesConstant.EQUALS_SYMBOL);
        sb.append(UtilBean.getMyLabel("No"));
        identifiedMorbidityDetails.getIdentifiedSymptoms().add(sb.toString());
        addIdentifiedMorbidityIntoList("NVW", identifiedMorbidityDetails);
    }

    private void addIdentifiedMorbidityIntoList(String str, IdentifiedMorbidityDetails identifiedMorbidityDetails) {
        identifiedMorbidityDetails.setMorbidityCode(str);
        identifiedMorbidityDetails.setRiskFactorOfIdentifiedMorbidities(MorbiditiesConstant.getMorbidityCodeAsKEYandRiskFactorAsVALUE(str));
        this.identifiedMorbidities.add(identifiedMorbidityDetails);
    }
}
