package com.argusoft.sewa.android.app.core.impl;

import android.text.TextUtils;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.core.ImmunisationService;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.UtilBean;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class ImmunisationServiceImpl implements ImmunisationService {
    @Override // com.argusoft.sewa.android.app.core.ImmunisationService
    public Set<String> getDueImmunisationsForChild(Date date, String str, Date date2, Map<String, Date> map) {
        Object obj;
        Object obj2;
        Object obj3;
        Date date3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Map<String, Date> immunisationDateMap = (map == null || map.isEmpty()) ? UtilBean.getImmunisationDateMap(str) : map;
        int numberOfWeeks = UtilBean.getNumberOfWeeks(date, date2);
        int numberOfDays = UtilBean.getNumberOfDays(date, date2);
        int numberOfMonths = UtilBean.getNumberOfMonths(date, date2);
        int numberOfYears = UtilBean.getNumberOfYears(date, date2);
        String dueImmunisationVitaminAForChild = getDueImmunisationVitaminAForChild(date, date2);
        if (!TextUtils.isEmpty(dueImmunisationVitaminAForChild)) {
            linkedHashSet.add(dueImmunisationVitaminAForChild);
        }
        if (SharedStructureData.formType != null && SharedStructureData.formType.equals("FHW_WPD")) {
            linkedHashSet.add(RchConstants.HEPATITIS_B_0);
            linkedHashSet.add(RchConstants.VITAMIN_K);
            linkedHashSet.add("BCG");
            linkedHashSet.add(RchConstants.OPV_0);
        }
        if (numberOfDays <= 1) {
            linkedHashSet.add(RchConstants.HEPATITIS_B_0);
            linkedHashSet.add(RchConstants.VITAMIN_K);
        }
        if (numberOfDays <= 15) {
            linkedHashSet.add(RchConstants.HEPATITIS_B_0);
            linkedHashSet.add(RchConstants.VITAMIN_K);
            linkedHashSet.add(RchConstants.OPV_0);
        }
        if (numberOfMonths <= 12) {
            linkedHashSet.add(RchConstants.HEPATITIS_B_0);
            linkedHashSet.add(RchConstants.VITAMIN_K);
            linkedHashSet.add(RchConstants.OPV_0);
            linkedHashSet.add("BCG");
        }
        if (numberOfWeeks >= 6) {
            linkedHashSet.add(RchConstants.HEPATITIS_B_0);
            linkedHashSet.add(RchConstants.VITAMIN_K);
            linkedHashSet.add(RchConstants.OPV_0);
            linkedHashSet.add("BCG");
            linkedHashSet.add(RchConstants.OPV_1);
            linkedHashSet.add(RchConstants.PENTA_1);
            linkedHashSet.add(RchConstants.ROTA_VIRUS_1);
            linkedHashSet.add(RchConstants.F_IPV_1_01);
            linkedHashSet.add(RchConstants.PCV_1);
        }
        if (numberOfWeeks >= 10) {
            linkedHashSet.add(RchConstants.OPV_2);
            linkedHashSet.add(RchConstants.PENTA_2);
            linkedHashSet.add(RchConstants.ROTA_VIRUS_2);
        }
        if (numberOfWeeks >= 14) {
            linkedHashSet.add(RchConstants.OPV_3);
            linkedHashSet.add(RchConstants.PENTA_3);
            linkedHashSet.add(RchConstants.ROTA_VIRUS_3);
            linkedHashSet.add(RchConstants.F_IPV_2_01);
            linkedHashSet.add(RchConstants.PCV_2);
        }
        if (numberOfMonths >= 9) {
            linkedHashSet.add(RchConstants.MEASLES_RUBELLA_1);
            linkedHashSet.add(RchConstants.PCV_BOOSTER);
        }
        if (numberOfMonths >= 12) {
            linkedHashSet.add(RchConstants.DPT_1);
        }
        if (numberOfMonths >= 13) {
            linkedHashSet.add(RchConstants.DPT_2);
        }
        if (numberOfMonths >= 14) {
            linkedHashSet.add(RchConstants.DPT_3);
        }
        if (numberOfMonths >= 16) {
            linkedHashSet.add(RchConstants.MEASLES_RUBELLA_2);
            linkedHashSet.add(RchConstants.OPV_BOOSTER);
            linkedHashSet.add(RchConstants.DPT_BOOSTER);
        }
        if (numberOfYears >= 5) {
            linkedHashSet.add(RchConstants.DPT_BOOSTER_2);
        }
        if (numberOfYears >= 8) {
            linkedHashSet.add(RchConstants.TD_10);
        }
        if (numberOfYears >= 14) {
            linkedHashSet.add(RchConstants.TD_16);
        }
        if (numberOfMonths >= 9) {
            linkedHashSet.add(RchConstants.VITAMIN_A_1);
        }
        if (numberOfMonths >= 16) {
            linkedHashSet.add(RchConstants.VITAMIN_A_2);
        }
        if (!immunisationDateMap.isEmpty() && (immunisationDateMap.containsKey(RchConstants.PENTA_1) || immunisationDateMap.containsKey(RchConstants.PENTA_2) || immunisationDateMap.containsKey(RchConstants.PENTA_3))) {
            linkedHashSet.remove(RchConstants.DPT_1);
            linkedHashSet.remove(RchConstants.DPT_2);
            linkedHashSet.remove(RchConstants.DPT_3);
        }
        if (!immunisationDateMap.isEmpty() && (immunisationDateMap.containsKey(RchConstants.DPT_1) || immunisationDateMap.containsKey(RchConstants.DPT_2) || immunisationDateMap.containsKey(RchConstants.DPT_3))) {
            linkedHashSet.remove(RchConstants.PENTA_1);
            linkedHashSet.remove(RchConstants.PENTA_2);
            linkedHashSet.remove(RchConstants.PENTA_3);
        }
        Iterator<Map.Entry<String, Date>> it = immunisationDateMap.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashSet.remove(it.next().getKey());
        }
        if (immunisationDateMap.containsKey(RchConstants.OPV_BOOSTER)) {
            linkedHashSet.remove(RchConstants.OPV_0);
            linkedHashSet.remove(RchConstants.OPV_1);
            linkedHashSet.remove(RchConstants.OPV_2);
            linkedHashSet.remove(RchConstants.OPV_3);
        } else if (immunisationDateMap.containsKey(RchConstants.OPV_3)) {
            linkedHashSet.remove(RchConstants.OPV_0);
            linkedHashSet.remove(RchConstants.OPV_1);
            linkedHashSet.remove(RchConstants.OPV_2);
        } else if (immunisationDateMap.containsKey(RchConstants.OPV_2)) {
            linkedHashSet.remove(RchConstants.OPV_0);
            linkedHashSet.remove(RchConstants.OPV_1);
        } else if (immunisationDateMap.containsKey(RchConstants.OPV_1)) {
            linkedHashSet.remove(RchConstants.OPV_0);
        }
        if (immunisationDateMap.containsKey(RchConstants.ROTA_VIRUS_3)) {
            obj2 = RchConstants.ROTA_VIRUS_1;
            linkedHashSet.remove(obj2);
            obj = RchConstants.ROTA_VIRUS_2;
            linkedHashSet.remove(obj);
        } else {
            obj = RchConstants.ROTA_VIRUS_2;
            obj2 = RchConstants.ROTA_VIRUS_1;
            if (immunisationDateMap.containsKey(obj)) {
                linkedHashSet.remove(obj2);
            }
        }
        if (immunisationDateMap.containsKey(RchConstants.PENTA_3)) {
            linkedHashSet.remove(RchConstants.PENTA_1);
            linkedHashSet.remove(RchConstants.PENTA_2);
        } else if (immunisationDateMap.containsKey(RchConstants.PENTA_2)) {
            linkedHashSet.remove(RchConstants.PENTA_1);
        }
        if (immunisationDateMap.containsKey(RchConstants.DPT_BOOSTER_2)) {
            linkedHashSet.remove(RchConstants.DPT_1);
            linkedHashSet.remove(RchConstants.DPT_2);
            linkedHashSet.remove(RchConstants.DPT_3);
            linkedHashSet.remove(RchConstants.DPT_BOOSTER);
        } else if (immunisationDateMap.containsKey(RchConstants.DPT_BOOSTER)) {
            linkedHashSet.remove(RchConstants.DPT_1);
            linkedHashSet.remove(RchConstants.DPT_2);
            linkedHashSet.remove(RchConstants.DPT_3);
        } else if (immunisationDateMap.containsKey(RchConstants.DPT_3)) {
            linkedHashSet.remove(RchConstants.DPT_1);
            linkedHashSet.remove(RchConstants.DPT_2);
        } else if (immunisationDateMap.containsKey(RchConstants.DPT_2)) {
            linkedHashSet.remove(RchConstants.DPT_1);
        }
        if (immunisationDateMap.containsKey(RchConstants.MEASLES_RUBELLA_2)) {
            obj3 = RchConstants.MEASLES_RUBELLA_1;
            linkedHashSet.remove(obj3);
        } else {
            obj3 = RchConstants.MEASLES_RUBELLA_1;
        }
        boolean z = immunisationDateMap.containsKey(obj3) || immunisationDateMap.containsKey(RchConstants.MEASLES_1);
        if (linkedHashSet.contains(obj3) && z) {
            linkedHashSet.remove(obj3);
        }
        if (numberOfMonths >= 9 && numberOfMonths <= 24 && !z && !immunisationDateMap.containsKey(RchConstants.F_IPV_3)) {
            linkedHashSet.add(RchConstants.F_IPV_3);
        }
        if (!linkedHashSet.contains(RchConstants.MEASLES_RUBELLA_2)) {
            date3 = date2;
        } else if (immunisationDateMap.containsKey(RchConstants.MEASLES_RUBELLA_2) || immunisationDateMap.containsKey(RchConstants.MEASLES_2)) {
            date3 = date2;
            linkedHashSet.remove(RchConstants.MEASLES_RUBELLA_2);
            linkedHashSet.remove(obj3);
        } else {
            if (immunisationDateMap.containsKey(RchConstants.MEASLES_1)) {
                date3 = date2;
                if (UtilBean.getNumberOfWeeks(immunisationDateMap.get(RchConstants.MEASLES_1), date3) < 4) {
                    linkedHashSet.remove(RchConstants.MEASLES_RUBELLA_2);
                }
            } else {
                date3 = date2;
            }
            if (immunisationDateMap.containsKey(obj3) && UtilBean.getNumberOfWeeks(immunisationDateMap.get(obj3), date3) < 4) {
                linkedHashSet.remove(RchConstants.MEASLES_RUBELLA_2);
            }
        }
        if (UtilBean.getNumberOfMonths(date, date3) >= 12 && !immunisationDateMap.containsKey(obj2)) {
            linkedHashSet.remove(obj2);
            linkedHashSet.remove(obj);
            linkedHashSet.remove(RchConstants.ROTA_VIRUS_3);
        }
        if (immunisationDateMap.containsKey(RchConstants.TD_16)) {
            linkedHashSet.remove(RchConstants.TD_10);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, 2021);
        calendar.set(2, 8);
        calendar.set(5, 1);
        UtilBean.clearTimeFromDate(calendar);
        if (date.before(new Date(calendar.getTimeInMillis()))) {
            linkedHashSet.remove(RchConstants.PCV_1);
            linkedHashSet.remove(RchConstants.PCV_2);
            linkedHashSet.remove(RchConstants.PCV_BOOSTER);
        }
        if (!linkedHashSet.isEmpty()) {
            ArrayList arrayList = new ArrayList(linkedHashSet);
            Collections.sort(arrayList, UtilBean.VACCINATION_COMPARATOR);
            return new LinkedHashSet(arrayList);
        }
        return new LinkedHashSet();
    }

    public String getDueImmunisationVitaminAForChild(Date date, Date date2) {
        int numberOfMonths = UtilBean.getNumberOfMonths(date, date2);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date2);
        if (calendar.get(2) != 1 && calendar.get(2) != 7) {
            return null;
        }
        if (numberOfMonths >= 60) {
            return RchConstants.VITAMIN_A_9;
        }
        if (numberOfMonths >= 54) {
            return RchConstants.VITAMIN_A_8;
        }
        if (numberOfMonths >= 48) {
            return RchConstants.VITAMIN_A_7;
        }
        if (numberOfMonths >= 42) {
            return RchConstants.VITAMIN_A_6;
        }
        if (numberOfMonths >= 36) {
            return RchConstants.VITAMIN_A_5;
        }
        if (numberOfMonths >= 30) {
            return RchConstants.VITAMIN_A_4;
        }
        if (numberOfMonths >= 24) {
            return RchConstants.VITAMIN_A_3;
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.argusoft.sewa.android.app.core.ImmunisationService
    public String vaccinationValidationForChild(Date date, Date date2, String str, Map<String, Date> map) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        if (str == null) {
            return null;
        }
        if (date2 == null) {
            return LabelConstants.PLEASE_SELECT_A_DATE;
        }
        Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(date);
        Date dateClearTimeFromDate2 = UtilBean.clearTimeFromDate(date2);
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(dateClearTimeFromDate);
        calendar2.setTime(dateClearTimeFromDate);
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTime(dateClearTimeFromDate);
        boolean z = map.containsKey(RchConstants.PENTA_1) || map.containsKey(RchConstants.PENTA_2) || map.containsKey(RchConstants.PENTA_3);
        boolean z2 = map.containsKey(RchConstants.DPT_1) || map.containsKey(RchConstants.DPT_2) || map.containsKey(RchConstants.DPT_3);
        UtilBean.clearTimeFromDate(Calendar.getInstance()).add(1, -1);
        str.hashCode();
        boolean z3 = z2;
        char c = 65535;
        switch (str.hashCode()) {
            case -1867145512:
                if (str.equals(RchConstants.F_IPV_1_01)) {
                    c = 0;
                    break;
                }
                break;
            case -1867115721:
                if (str.equals(RchConstants.F_IPV_2_01)) {
                    c = 1;
                    break;
                }
                break;
            case -1867115717:
                if (str.equals(RchConstants.F_IPV_2_05)) {
                    c = 2;
                    break;
                }
                break;
            case -742534202:
                if (str.equals(RchConstants.OPV_BOOSTER)) {
                    c = 3;
                    break;
                }
                break;
            case -664912849:
                if (str.equals(RchConstants.HEPATITIS_B_0)) {
                    c = 4;
                    break;
                }
                break;
            case 65574:
                if (str.equals("BCG")) {
                    c = 5;
                    break;
                }
                break;
            case 15190004:
                if (str.equals(RchConstants.PCV_BOOSTER)) {
                    c = 6;
                    break;
                }
                break;
            case 35864408:
                if (str.equals(RchConstants.PENTA_1)) {
                    c = 7;
                    break;
                }
                break;
            case 35864409:
                if (str.equals(RchConstants.PENTA_2)) {
                    c = '\b';
                    break;
                }
                break;
            case 35864410:
                if (str.equals(RchConstants.PENTA_3)) {
                    c = '\t';
                    break;
                }
                break;
            case 55640222:
                if (str.equals(RchConstants.MEASLES_RUBELLA_1)) {
                    c = '\n';
                    break;
                }
                break;
            case 55640223:
                if (str.equals(RchConstants.MEASLES_RUBELLA_2)) {
                    c = 11;
                    break;
                }
                break;
            case 65266426:
                if (str.equals(RchConstants.DPT_1)) {
                    c = '\f';
                    break;
                }
                break;
            case 65266427:
                if (str.equals(RchConstants.DPT_2)) {
                    c = '\r';
                    break;
                }
                break;
            case 65266428:
                if (str.equals(RchConstants.DPT_3)) {
                    c = 14;
                    break;
                }
                break;
            case 75427078:
                if (str.equals(RchConstants.OPV_0)) {
                    c = 15;
                    break;
                }
                break;
            case 75427079:
                if (str.equals(RchConstants.OPV_1)) {
                    c = 16;
                    break;
                }
                break;
            case 75427080:
                if (str.equals(RchConstants.OPV_2)) {
                    c = 17;
                    break;
                }
                break;
            case 75427081:
                if (str.equals(RchConstants.OPV_3)) {
                    c = 18;
                    break;
                }
                break;
            case 75963317:
                if (str.equals(RchConstants.PCV_1)) {
                    c = 19;
                    break;
                }
                break;
            case 75963318:
                if (str.equals(RchConstants.PCV_2)) {
                    c = 20;
                    break;
                }
                break;
            case 79694414:
                if (str.equals(RchConstants.TD_10)) {
                    c = 21;
                    break;
                }
                break;
            case 79694420:
                if (str.equals(RchConstants.TD_16)) {
                    c = 22;
                    break;
                }
                break;
            case 169357690:
                if (str.equals(RchConstants.ROTA_VIRUS_1)) {
                    c = 23;
                    break;
                }
                break;
            case 169357691:
                if (str.equals(RchConstants.ROTA_VIRUS_2)) {
                    c = 24;
                    break;
                }
                break;
            case 169357692:
                if (str.equals(RchConstants.ROTA_VIRUS_3)) {
                    c = 25;
                    break;
                }
                break;
            case 490403530:
                if (str.equals(RchConstants.F_IPV_3)) {
                    c = 26;
                    break;
                }
                break;
            case 514789318:
                if (str.equals(RchConstants.VITAMIN_A_1)) {
                    c = 27;
                    break;
                }
                break;
            case 514789319:
                if (str.equals(RchConstants.VITAMIN_A_2)) {
                    c = 28;
                    break;
                }
                break;
            case 514789320:
                if (str.equals(RchConstants.VITAMIN_A_3)) {
                    c = 29;
                    break;
                }
                break;
            case 514789321:
                if (str.equals(RchConstants.VITAMIN_A_4)) {
                    c = 30;
                    break;
                }
                break;
            case 514789322:
                if (str.equals(RchConstants.VITAMIN_A_5)) {
                    c = 31;
                    break;
                }
                break;
            case 514789323:
                if (str.equals(RchConstants.VITAMIN_A_6)) {
                    c = ' ';
                    break;
                }
                break;
            case 514789324:
                if (str.equals(RchConstants.VITAMIN_A_7)) {
                    c = '!';
                    break;
                }
                break;
            case 514789325:
                if (str.equals(RchConstants.VITAMIN_A_8)) {
                    c = Typography.quote;
                    break;
                }
                break;
            case 514789326:
                if (str.equals(RchConstants.VITAMIN_A_9)) {
                    c = '#';
                    break;
                }
                break;
            case 1023998228:
                if (str.equals(RchConstants.VITAMIN_A)) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 1023998238:
                if (str.equals(RchConstants.VITAMIN_K)) {
                    c = '%';
                    break;
                }
                break;
            case 1164003193:
                if (str.equals(RchConstants.DPT_BOOSTER)) {
                    c = Typography.amp;
                    break;
                }
                break;
            case 1915574508:
                if (str.equals(RchConstants.DPT_BOOSTER_2)) {
                    c = '\'';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 19:
            case 23:
                calendar.add(5, 42);
                calendar3.add(2, 12);
                if (!dateClearTimeFromDate2.after(calendar3.getTime()) && !dateClearTimeFromDate2.before(calendar.getTime())) {
                    return null;
                }
                return FullFormConstants.getFullFormOfVaccines(str) + " should be given between 6 weeks and 1 year after birth";
            case 1:
                Date date3 = map.get(RchConstants.F_IPV_1_01);
                if (map.get(RchConstants.OPV_3) == null) {
                    return "OPV-3 is not given yet";
                }
                if (date3 == null) {
                    return "F-IPV-1-01 is not given yet";
                }
                if (date3.after(dateClearTimeFromDate2)) {
                    return "F-IPV-2-01 can not be given before F-IPV-1-01 ";
                }
                if (UtilBean.getNumberOfDays(date3, dateClearTimeFromDate2) < 28) {
                    return "F-IPV-2-01 should be given after 28 days of F-IPV-1-01 given date";
                }
                calendar.add(5, 98);
                calendar3.add(2, 12);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "F-IPV-2-01 should be given between 14 weeks and 1 year after birth";
                }
                return null;
            case 2:
                if (map.containsKey(RchConstants.F_IPV_1_01) || map.containsKey(RchConstants.F_IPV_2_01)) {
                    return "F-IPV-2-05 cannot be given because F-IPV-1-01 or F-IPV-2-01 has already been given";
                }
                Date date4 = map.get(RchConstants.OPV_3);
                if (date4 == null) {
                    return "F-IPV-2-05 cannot be given because OPV-3 is not given yet";
                }
                Calendar calendar4 = Calendar.getInstance();
                calendar4.setTime(dateClearTimeFromDate2);
                Calendar calendarClearTimeFromDate = UtilBean.clearTimeFromDate(calendar4);
                if (date4.after(calendarClearTimeFromDate.getTime()) || date4.before(calendarClearTimeFromDate.getTime())) {
                    return "F-IPV-2-05 must be given on the same date as OPV-3";
                }
                calendar.add(5, 98);
                calendar3.add(2, 12);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "F-IPV-2-05 must be given between 14 weeks and 12 months from the date of birth";
                }
                return null;
            case 3:
                Date date5 = map.get(RchConstants.OPV_3);
                if (date5 == null) {
                    return " OPV-3 is not given yet";
                }
                if (UtilBean.getNumberOfMonths(date5, dateClearTimeFromDate2) < 6) {
                    return "OPV Booster should be given at least 6 months after OPV-3";
                }
                return null;
            case 4:
            case '%':
                calendar3.add(5, 1);
                if (!dateClearTimeFromDate2.after(calendar3.getTime()) && !dateClearTimeFromDate2.before(calendar.getTime())) {
                    return null;
                }
                return FullFormConstants.getFullFormOfVaccines(str) + " should be given within 1 day of birth";
            case 5:
                calendar3.add(1, 1);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "BCG should be given within 1 year of birth";
                }
                return null;
            case 6:
                Date date6 = map.get(RchConstants.PCV_2);
                if (date6 == null) {
                    return "PCV-2 has not been given yet.";
                }
                if (UtilBean.getNumberOfMonths(dateClearTimeFromDate, dateClearTimeFromDate2) < 9) {
                    return "PCV booster should be given within 9 months of birth";
                }
                if (UtilBean.getNumberOfWeeks(date6, dateClearTimeFromDate2) < 8) {
                    return "PCV booster should be given at least 8 weeks after PCV-2";
                }
                calendar.add(2, 9);
                calendar3.add(2, 12);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "PCV booster must be given between 9 months and 1 year after birth.";
                }
                return null;
            case 7:
                if (z3) {
                    return "Penta-1 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given";
                }
                calendar.add(5, 42);
                calendar3.add(2, 12);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Penta-1 should be given between 6 weeks and 1 year after birth";
                }
                return null;
            case '\b':
                if (z3) {
                    return "Penta-2 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given";
                }
                Date date7 = map.get(RchConstants.PENTA_1);
                if (date7 == null) {
                    return "Penta-1 is not given yet";
                }
                if (date7.after(dateClearTimeFromDate2)) {
                    return "Penta-2 can not be given before Penta-1 vaccine";
                }
                if (UtilBean.getNumberOfDays(date7, dateClearTimeFromDate2) < 28) {
                    return "Penta-2 should be given after 28 days of Penta-1";
                }
                calendar.add(5, 70);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Penta-2 should be given between 10 weeks and 5 years after birth";
                }
                return null;
            case '\t':
                if (z3) {
                    return "Penta-3 cannot be given because DPT 1, DPT 2, or DPT 3 has already been given";
                }
                Date date8 = map.get(RchConstants.PENTA_2);
                if (date8 == null) {
                    return "Penta-2 is not given yet";
                }
                if (date8.after(dateClearTimeFromDate2)) {
                    return "Penta-3 can not be given before Penta 2 given date";
                }
                if (UtilBean.getNumberOfDays(date8, dateClearTimeFromDate2) < 28) {
                    return "Penta-3 should be given after 28 days of Penta 2";
                }
                calendar.add(5, 98);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Penta-3 should be given between 14 weeks and 5 years of birth";
                }
                return null;
            case '\n':
            case 27:
                calendar.add(2, 9);
                calendar3.add(2, 60);
                if (!dateClearTimeFromDate2.after(calendar3.getTime()) && !dateClearTimeFromDate2.before(calendar.getTime())) {
                    return null;
                }
                return FullFormConstants.getFullFormOfVaccines(str) + " should be given between 9 months and 5 years of birth";
            case 11:
                Date date9 = map.get(RchConstants.MEASLES_RUBELLA_1);
                Date date10 = map.get(RchConstants.MEASLES_1);
                if (date9 == null && date10 == null) {
                    return "MEASLES-RUBELLA-1 or MEASLES-1 must be given before MEASLES-RUBELLA-2.";
                }
                if (date9 != null) {
                    i = 28;
                    if (UtilBean.getNumberOfDays(date9, dateClearTimeFromDate2) < 28) {
                        return "MEASLES-RUBELLA-2 should be given at least 28 days after MEASLES-RUBELLA-1.";
                    }
                } else {
                    i = 28;
                }
                if (date10 != null && UtilBean.getNumberOfDays(date9, dateClearTimeFromDate2) < i) {
                    return "MEASLES-RUBELLA-2 should be given at least 28 days after MEASLES-1.";
                }
                calendar.add(2, 16);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "MEASLES-RUBELLA-2 should be given between 16 months and 5 years of birth.";
                }
                return null;
            case '\f':
                if (z) {
                    return "DPT-1 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given";
                }
                calendar.add(2, 12);
                calendar3.add(2, 84);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "DPT-1 should be given between 1 year and 7 years after birth";
                }
                return null;
            case '\r':
                if (z) {
                    return "DPT-2 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given";
                }
                Date date11 = map.get(RchConstants.DPT_1);
                if (date11 == null) {
                    return "DPT-1 is not given yet";
                }
                if (date11.after(dateClearTimeFromDate2)) {
                    return "DPT-2 can not be given before DPT-1";
                }
                if (UtilBean.getNumberOfDays(date11, dateClearTimeFromDate2) < 28) {
                    return "DPT-2 should be given after 28 days of DPT-1";
                }
                calendar.add(2, 13);
                calendar3.add(2, 84);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "DPT-2 should be given between 13 months and 7 years after birth.";
                }
                return null;
            case 14:
                if (z) {
                    return "DPT-3 cannot be given because Penta-1, Penta-2, or Penta-3 has already been given";
                }
                Date date12 = map.get(RchConstants.DPT_2);
                if (date12 == null) {
                    return "DPT-2 is not given yet";
                }
                if (date12.after(dateClearTimeFromDate2)) {
                    return "DPT-3 can not be given before DPT-2";
                }
                if (UtilBean.getNumberOfDays(date12, dateClearTimeFromDate2) < 28) {
                    return "DPT-3 should be given after 28 days of DPT-2";
                }
                calendar.add(2, 14);
                calendar3.add(2, 84);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "DPT-3 should be given between 14 months and 7 years after birth";
                }
                return null;
            case 15:
                calendar3.add(5, 15);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "OPV-0 should be given within 15 days of birth";
                }
                return null;
            case 16:
                calendar.add(5, 42);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "OPV-1 should be given between 6 weeks and 5 years after birth";
                }
                return null;
            case 17:
                Date date13 = map.get(RchConstants.OPV_1);
                if (date13 == null) {
                    return "OPV-1 is not given yet";
                }
                if (date13.after(dateClearTimeFromDate2)) {
                    return "OPV-2 can not be given before OPV-1";
                }
                if (UtilBean.getNumberOfDays(date13, dateClearTimeFromDate2) < 28) {
                    return "OPV-2 vaccine should be given 28 days after OPV-1";
                }
                calendar.add(5, 70);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "OPV-2 vaccine should be given between 10 weeks and 5 years after birth.";
                }
                return null;
            case 18:
                Date date14 = map.get(RchConstants.OPV_2);
                if (date14 == null) {
                    return "OPV-2 is not given yet";
                }
                if (date14.after(dateClearTimeFromDate2)) {
                    return "OPV-3 can not be given before OPV-2";
                }
                if (UtilBean.getNumberOfDays(date14, dateClearTimeFromDate2) < 28) {
                    return "OPV-3 should be given 28 days after OPV-2";
                }
                calendar.add(5, 98);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "OPV-3 should be given between 14 weeks and 5 years after birth.";
                }
                return null;
            case 20:
                Date date15 = map.get(RchConstants.PCV_1);
                if (date15 == null) {
                    return "PCV-1 is not given yet";
                }
                if (date15.after(dateClearTimeFromDate2)) {
                    return "PCV-2 can not be given before PCV-1";
                }
                if (UtilBean.getNumberOfDays(date15, dateClearTimeFromDate2) < 56) {
                    return "PCV-2 should be given at least 56 days after PCV-1";
                }
                calendar.add(5, 98);
                calendar3.add(2, 12);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "PCV-2 must be given between 14 weeks and 1 year from the date of birth.";
                }
                return null;
            case 21:
                calendar.add(1, 8);
                calendar3.add(1, 13);
                calendar3.add(6, 364);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "TD 10 should be given between 8 years and 14 years of age";
                }
                return null;
            case 22:
                calendar.add(1, 14);
                Date date16 = map.get(RchConstants.TD_10);
                if (date16 != null) {
                    calendar2.setTime(date16);
                    calendar2.add(1, 3);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                calendar3.setTime(UtilBean.clearTimeFromDate(new Date()));
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "TD 16 should be given at or after 14 years of age or 3 years after the TD 10 dose, whichever is later.";
                }
                return null;
            case 24:
                Date date17 = map.get(RchConstants.ROTA_VIRUS_1);
                if (date17 == null) {
                    return "ROTA Virus-1 is not given yet";
                }
                if (date17.after(dateClearTimeFromDate2)) {
                    return "ROTA Virus-2 can not be given before ROTA Virus-1 Vaccine";
                }
                if (UtilBean.getNumberOfDays(date17, dateClearTimeFromDate2) < 28) {
                    return "ROTA Virus-2 should be given after 28 days of ROTA virus 1";
                }
                calendar.add(5, 70);
                calendar3.add(2, 24);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "ROTA Virus-2 should be given between 10 weeks and 2 years after birth ";
                }
                return null;
            case 25:
                Date date18 = map.get(RchConstants.ROTA_VIRUS_2);
                if (date18 == null) {
                    return "ROTA Virus-2 is not given yet";
                }
                if (date18.after(dateClearTimeFromDate2)) {
                    return "ROTA Virus-3 can not be given before ROTA Virus-2 vaccine";
                }
                if (UtilBean.getNumberOfDays(date18, dateClearTimeFromDate2) < 28) {
                    return "ROTA Virus-3 should be given after 28 days of ROTA Virus-2";
                }
                calendar.add(5, 98);
                calendar3.add(2, 24);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "ROTA Virus-3 should be given between 14 weeks and 2 years after birth";
                }
                return null;
            case 26:
                Date date19 = map.get(RchConstants.F_IPV_2_01);
                if (date19 == null) {
                    return "F-IPV-2-01 is not given yet";
                }
                if (date19.after(dateClearTimeFromDate2)) {
                    return "F-IPV-3 can not be given before F-IPV-2-01 ";
                }
                if (UtilBean.getNumberOfDays(date19, dateClearTimeFromDate2) < 56) {
                    return "F-IPV-3 should be given after 56 days of F-IPV-2-01 given date";
                }
                calendar.add(2, 9);
                calendar3.add(2, 24);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "F-IPV-3 should be given between 9 months and 2 years after birth";
                }
                return null;
            case 28:
                Date date20 = map.get(RchConstants.VITAMIN_A_1);
                if (date20 != null) {
                    i2 = 4;
                    if (UtilBean.getNumberOfMonths(date20, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 2 should be given at least 4 months after Vitamin A 1.";
                    }
                } else {
                    i2 = 4;
                }
                calendar.add(2, 16);
                calendar3.add(2, 60);
                if (date20 != null) {
                    calendar2.setTime(date20);
                    calendar2.add(2, i2);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 2 should be given between 16 months and 5 years of birth.";
                }
                return null;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                calendar.add(2, 24);
                calendar3.add(2, 60);
                Date date21 = map.get(RchConstants.VITAMIN_A_1);
                if (date21 != null) {
                    i3 = 8;
                    if (UtilBean.getNumberOfMonths(date21, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 3 should be given at least 8 months after Vitamin A 1";
                    }
                } else {
                    i3 = 8;
                }
                if (date21 != null) {
                    calendar2.setTime(date21);
                    calendar2.add(2, i3);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date22 = map.get(RchConstants.VITAMIN_A_2);
                if (date22 != null) {
                    i4 = 4;
                    if (UtilBean.getNumberOfMonths(date22, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 3 should be given at least 4 months after Vitamin A 2.";
                    }
                } else {
                    i4 = 4;
                }
                if (date22 != null) {
                    calendar2.setTime(date22);
                    calendar2.add(2, i4);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 3 should be given between 2 and 5 years of birth.";
                }
                return null;
            case 30:
                calendar.add(2, 30);
                calendar3.add(2, 60);
                Date date23 = map.get(RchConstants.VITAMIN_A_1);
                if (date23 != null) {
                    i5 = 12;
                    if (UtilBean.getNumberOfMonths(date23, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 4 should be given at least 1 year after Vitamin A 1.";
                    }
                } else {
                    i5 = 12;
                }
                if (date23 != null) {
                    calendar2.setTime(date23);
                    calendar2.add(2, i5);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date24 = map.get(RchConstants.VITAMIN_A_2);
                if (date24 != null) {
                    i6 = 8;
                    if (UtilBean.getNumberOfMonths(date24, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 4 should be given at least 8 months after Vitamin A 2.";
                    }
                } else {
                    i6 = 8;
                }
                if (date24 != null) {
                    calendar2.setTime(date24);
                    calendar2.add(2, i6);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date25 = map.get(RchConstants.VITAMIN_A_3);
                if (date25 != null) {
                    i7 = 4;
                    if (UtilBean.getNumberOfMonths(date25, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 4 should be given at least 4 months after Vitamin A 3.";
                    }
                } else {
                    i7 = 4;
                }
                if (date25 != null) {
                    calendar2.setTime(date25);
                    calendar2.add(2, i7);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 4 should be given between 30 months and 5 years of birth.";
                }
                return null;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                calendar.add(2, 36);
                calendar3.add(2, 60);
                Date date26 = map.get(RchConstants.VITAMIN_A_1);
                if (date26 != null) {
                    i8 = 16;
                    if (UtilBean.getNumberOfMonths(date26, dateClearTimeFromDate2) < 16) {
                        return "Vitamin A 5 should be given at least 1 year 4 months after Vitamin A 1.";
                    }
                } else {
                    i8 = 16;
                }
                if (date26 != null) {
                    calendar2.setTime(date26);
                    calendar2.add(2, i8);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date27 = map.get(RchConstants.VITAMIN_A_2);
                if (date27 != null) {
                    i9 = 12;
                    if (UtilBean.getNumberOfMonths(date27, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 5 should be given at least 1 year after Vitamin A 2.";
                    }
                } else {
                    i9 = 12;
                }
                if (date27 != null) {
                    calendar2.setTime(date27);
                    calendar2.add(2, i9);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date28 = map.get(RchConstants.VITAMIN_A_3);
                if (date28 != null) {
                    i10 = 8;
                    if (UtilBean.getNumberOfMonths(date28, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 5 should be given at least 8 months after Vitamin A 3.";
                    }
                } else {
                    i10 = 8;
                }
                if (date28 != null) {
                    calendar2.setTime(date28);
                    calendar2.add(2, i10);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date29 = map.get(RchConstants.VITAMIN_A_4);
                if (date29 != null) {
                    i11 = 4;
                    if (UtilBean.getNumberOfMonths(date29, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 5 should be given at least 4 months after Vitamin A 4.";
                    }
                } else {
                    i11 = 4;
                }
                if (date29 != null) {
                    calendar2.setTime(date29);
                    calendar2.add(2, i11);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 5 should be given between 3 and 5 years of birth.";
                }
                return null;
            case ' ':
                calendar.add(2, 42);
                calendar3.add(2, 60);
                Date date30 = map.get(RchConstants.VITAMIN_A_1);
                if (date30 != null) {
                    i12 = 20;
                    if (UtilBean.getNumberOfMonths(date30, dateClearTimeFromDate2) < 20) {
                        return "Vitamin A 6 should be given at least 1 year 8 months after Vitamin A 1.";
                    }
                } else {
                    i12 = 20;
                }
                if (date30 != null) {
                    calendar2.setTime(date30);
                    calendar2.add(2, i12);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date31 = map.get(RchConstants.VITAMIN_A_2);
                if (date31 != null) {
                    i13 = 16;
                    if (UtilBean.getNumberOfMonths(date31, dateClearTimeFromDate2) < 16) {
                        return "Vitamin A 6 should be given at least 1 year 4 months after Vitamin A 2.";
                    }
                } else {
                    i13 = 16;
                }
                if (date31 != null) {
                    calendar2.setTime(date31);
                    calendar2.add(2, i13);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date32 = map.get(RchConstants.VITAMIN_A_3);
                if (date32 != null) {
                    i14 = 12;
                    if (UtilBean.getNumberOfMonths(date32, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 6 should be given at least 1 year after Vitamin A 3.";
                    }
                } else {
                    i14 = 12;
                }
                if (date32 != null) {
                    calendar2.setTime(date32);
                    calendar2.add(2, i14);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date33 = map.get(RchConstants.VITAMIN_A_4);
                if (date33 != null) {
                    i15 = 8;
                    if (UtilBean.getNumberOfMonths(date33, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 6 should be given at least 8 months after Vitamin A 4.";
                    }
                } else {
                    i15 = 8;
                }
                if (date33 != null) {
                    calendar2.setTime(date33);
                    calendar2.add(2, i15);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date34 = map.get(RchConstants.VITAMIN_A_5);
                if (date34 != null) {
                    i16 = 4;
                    if (UtilBean.getNumberOfMonths(date34, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 6 should be given at least 4 months after Vitamin A 5.";
                    }
                } else {
                    i16 = 4;
                }
                if (date34 != null) {
                    calendar2.setTime(date34);
                    calendar2.add(2, i16);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 6 should be given between 3.5 and 5 years of birth.";
                }
                return null;
            case '!':
                calendar.add(2, 48);
                calendar3.add(2, 60);
                Date date35 = map.get(RchConstants.VITAMIN_A_1);
                if (date35 != null) {
                    i17 = 24;
                    if (UtilBean.getNumberOfMonths(date35, dateClearTimeFromDate2) < 24) {
                        return "Vitamin A 7 should be given at least 2 years after Vitamin A 1.";
                    }
                } else {
                    i17 = 24;
                }
                if (date35 != null) {
                    calendar2.setTime(date35);
                    calendar2.add(2, i17);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date36 = map.get(RchConstants.VITAMIN_A_2);
                if (date36 != null) {
                    i18 = 20;
                    if (UtilBean.getNumberOfMonths(date36, dateClearTimeFromDate2) < 20) {
                        return "Vitamin A 7 should be given at least 2 years after Vitamin A 1.";
                    }
                } else {
                    i18 = 20;
                }
                if (date36 != null) {
                    calendar2.setTime(date36);
                    calendar2.add(2, i18);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date37 = map.get(RchConstants.VITAMIN_A_3);
                if (date37 != null) {
                    i19 = 16;
                    if (UtilBean.getNumberOfMonths(date37, dateClearTimeFromDate2) < 16) {
                        return "Vitamin A 7 should be given at least 1 year 4 months after Vitamin A 3.";
                    }
                } else {
                    i19 = 16;
                }
                if (date37 != null) {
                    calendar2.setTime(date37);
                    calendar2.add(2, i19);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date38 = map.get(RchConstants.VITAMIN_A_4);
                if (date38 != null) {
                    i20 = 12;
                    if (UtilBean.getNumberOfMonths(date38, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 7 should be given at least 1 year after Vitamin A 4.";
                    }
                } else {
                    i20 = 12;
                }
                if (date38 != null) {
                    calendar2.setTime(date38);
                    calendar2.add(2, i20);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date39 = map.get(RchConstants.VITAMIN_A_5);
                if (date39 != null) {
                    i21 = 8;
                    if (UtilBean.getNumberOfMonths(date39, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 7 should be given at least 8 months after Vitamin A 5.";
                    }
                } else {
                    i21 = 8;
                }
                if (date39 != null) {
                    calendar2.setTime(date39);
                    calendar2.add(2, i21);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date40 = map.get(RchConstants.VITAMIN_A_6);
                if (date40 != null) {
                    i22 = 4;
                    if (UtilBean.getNumberOfMonths(date40, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 7 should be given at least 4 months after Vitamin A 6.";
                    }
                } else {
                    i22 = 4;
                }
                if (date40 != null) {
                    calendar2.setTime(date40);
                    calendar2.add(2, i22);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 7 should be given between 4 and 5 years of birth.";
                }
                return null;
            case '\"':
                calendar.add(2, 54);
                calendar3.add(2, 60);
                Date date41 = map.get(RchConstants.VITAMIN_A_1);
                if (date41 != null) {
                    i23 = 28;
                    if (UtilBean.getNumberOfMonths(date41, dateClearTimeFromDate2) < 28) {
                        return "Vitamin A 8 should be given at least 2 years 4 months after Vitamin A 1.";
                    }
                } else {
                    i23 = 28;
                }
                if (date41 != null) {
                    calendar2.setTime(date41);
                    calendar2.add(2, i23);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date42 = map.get(RchConstants.VITAMIN_A_2);
                if (date42 != null) {
                    i24 = 24;
                    if (UtilBean.getNumberOfMonths(date42, dateClearTimeFromDate2) < 24) {
                        return "Vitamin A 8 should be given at least 2 years after Vitamin A 2.";
                    }
                } else {
                    i24 = 24;
                }
                if (date42 != null) {
                    calendar2.setTime(date42);
                    calendar2.add(2, i24);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date43 = map.get(RchConstants.VITAMIN_A_3);
                if (date43 != null) {
                    i25 = 20;
                    if (UtilBean.getNumberOfMonths(date43, dateClearTimeFromDate2) < 20) {
                        return "Vitamin A 8 should be given at least 1 year 8 months after Vitamin A 3.";
                    }
                } else {
                    i25 = 20;
                }
                if (date43 != null) {
                    calendar2.setTime(date43);
                    calendar2.add(2, i25);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date44 = map.get(RchConstants.VITAMIN_A_4);
                if (date44 != null) {
                    i26 = 16;
                    if (UtilBean.getNumberOfMonths(date44, dateClearTimeFromDate2) < 16) {
                        return "Vitamin A 8 should be given at least 1 year 4 months after Vitamin A 4.";
                    }
                } else {
                    i26 = 16;
                }
                if (date44 != null) {
                    calendar2.setTime(date44);
                    calendar2.add(2, i26);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date45 = map.get(RchConstants.VITAMIN_A_5);
                if (date45 != null) {
                    i27 = 12;
                    if (UtilBean.getNumberOfMonths(date45, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 8 should be given at least 1 year after Vitamin A 5.";
                    }
                } else {
                    i27 = 12;
                }
                if (date45 != null) {
                    calendar2.setTime(date45);
                    calendar2.add(2, i27);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date46 = map.get(RchConstants.VITAMIN_A_6);
                if (date46 != null) {
                    i28 = 8;
                    if (UtilBean.getNumberOfMonths(date46, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 8 should be given at least 8 months after Vitamin A 6.";
                    }
                } else {
                    i28 = 8;
                }
                if (date46 != null) {
                    calendar2.setTime(date46);
                    calendar2.add(2, i28);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date47 = map.get(RchConstants.VITAMIN_A_7);
                if (date47 != null) {
                    i29 = 4;
                    if (UtilBean.getNumberOfMonths(date47, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 8 should be given at least 4 months after Vitamin A 7.";
                    }
                } else {
                    i29 = 4;
                }
                if (date47 != null) {
                    calendar2.setTime(date47);
                    calendar2.add(2, i29);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 8 should be given between 4.5 and 5 years of age.";
                }
                return null;
            case '#':
                calendar.add(2, 60);
                calendar3.add(2, 72);
                Date date48 = map.get(RchConstants.VITAMIN_A_1);
                if (date48 != null && UtilBean.getNumberOfMonths(date48, dateClearTimeFromDate2) < 32) {
                    return "Vitamin A 9 should be given at least 2 years 8 months after Vitamin A 1.";
                }
                if (date48 != null) {
                    calendar2.setTime(date48);
                    calendar2.add(2, 32);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date49 = map.get(RchConstants.VITAMIN_A_2);
                if (date49 != null) {
                    i30 = 28;
                    if (UtilBean.getNumberOfMonths(date49, dateClearTimeFromDate2) < 28) {
                        return "Vitamin A 9 should be given at least 2 years 8 months after Vitamin A 1.";
                    }
                } else {
                    i30 = 28;
                }
                if (date49 != null) {
                    calendar2.setTime(date49);
                    calendar2.add(2, i30);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date50 = map.get(RchConstants.VITAMIN_A_3);
                if (date50 != null) {
                    i31 = 24;
                    if (UtilBean.getNumberOfMonths(date50, dateClearTimeFromDate2) < 24) {
                        return "Vitamin A 9 should be given at least 2 years after Vitamin A 3.";
                    }
                } else {
                    i31 = 24;
                }
                if (date50 != null) {
                    calendar2.setTime(date50);
                    calendar2.add(2, i31);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date51 = map.get(RchConstants.VITAMIN_A_4);
                if (date51 != null) {
                    i32 = 20;
                    if (UtilBean.getNumberOfMonths(date51, dateClearTimeFromDate2) < 20) {
                        return "Vitamin A 9 should be given at least 1 year 8 months after Vitamin A 4.";
                    }
                } else {
                    i32 = 20;
                }
                if (date51 != null) {
                    calendar2.setTime(date51);
                    calendar2.add(2, i32);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date52 = map.get(RchConstants.VITAMIN_A_5);
                if (date52 != null) {
                    i33 = 16;
                    if (UtilBean.getNumberOfMonths(date52, dateClearTimeFromDate2) < 16) {
                        return "Vitamin A 9 should be given at least 1 year 4 months after Vitamin A 5.";
                    }
                } else {
                    i33 = 16;
                }
                if (date52 != null) {
                    calendar2.setTime(date52);
                    calendar2.add(2, i33);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date53 = map.get(RchConstants.VITAMIN_A_6);
                if (date53 != null) {
                    i34 = 12;
                    if (UtilBean.getNumberOfMonths(date53, dateClearTimeFromDate2) < 12) {
                        return "Vitamin A 9 should be given at least 1 year after Vitamin A 6.";
                    }
                } else {
                    i34 = 12;
                }
                if (date53 != null) {
                    calendar2.setTime(date53);
                    calendar2.add(2, i34);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date54 = map.get(RchConstants.VITAMIN_A_7);
                if (date54 != null) {
                    i35 = 8;
                    if (UtilBean.getNumberOfMonths(date54, dateClearTimeFromDate2) < 8) {
                        return "Vitamin A 9 should be given at least 8 months after Vitamin A 7.";
                    }
                } else {
                    i35 = 8;
                }
                if (date54 != null) {
                    calendar2.setTime(date54);
                    calendar2.add(2, i35);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                Date date55 = map.get(RchConstants.VITAMIN_A_8);
                if (date55 != null) {
                    i36 = 4;
                    if (UtilBean.getNumberOfMonths(date55, dateClearTimeFromDate2) < 4) {
                        return "Vitamin A 9 should be given at least 4 months after Vitamin A 8.";
                    }
                } else {
                    i36 = 4;
                }
                if (date55 != null) {
                    calendar2.setTime(date55);
                    calendar2.add(2, i36);
                    if (calendar2.getTimeInMillis() > calendar.getTimeInMillis() && !calendar2.getTime().after(UtilBean.clearTimeFromDate(new Date()))) {
                        calendar.setTime(calendar2.getTime());
                    }
                }
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A 9 should be given between 5 and 6 years of age.";
                }
                return null;
            case '$':
                Date date56 = map.get(RchConstants.VITAMIN_A);
                if (date56 != null && date56.after(dateClearTimeFromDate2)) {
                    return "Vitamin A cannot be given before the previous dose date.";
                }
                calendar.add(2, 8);
                calendar3.add(2, 60);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "Vitamin A should be given between 8 months and 5 years from the date of birth.";
                }
                return null;
            case '&':
                Date date57 = map.get(RchConstants.DPT_3);
                Date date58 = map.get(RchConstants.PENTA_3);
                if (date57 == null && date58 == null) {
                    return "DPT-3 or PENTA-3 is required before DPT Booster";
                }
                if (date57 != null) {
                    i37 = 6;
                    if (UtilBean.getNumberOfMonths(date57, dateClearTimeFromDate2) < 6) {
                        return "DPT Booster should be given at least 6 months after DPT-3";
                    }
                } else {
                    i37 = 6;
                }
                if (date58 != null && UtilBean.getNumberOfMonths(date58, dateClearTimeFromDate2) < i37) {
                    return "DPT Booster should be given at least 6 months after PENTA-3";
                }
                calendar.add(2, 16);
                calendar3.add(2, 84);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "DPT Booster should be given between 16 months and 7 years after birth";
                }
                return null;
            case '\'':
                Date date59 = map.get(RchConstants.DPT_BOOSTER);
                if (date59 == null) {
                    return "DPT Booster-1 has not been given yet";
                }
                if (UtilBean.getNumberOfMonths(date59, dateClearTimeFromDate2) < 6) {
                    return "DPT Booster-2 should be given at least 6 months after the DPT Booster-1 dose";
                }
                calendar.add(2, 60);
                calendar3.add(2, 84);
                if (dateClearTimeFromDate2.after(calendar3.getTime()) || dateClearTimeFromDate2.before(calendar.getTime())) {
                    return "DPT Booster-2 should be given between 5 and 7 years after birth";
                }
                return null;
            default:
                return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0803  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0839  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x08c3  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x09a5  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x09de  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0af2  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0b64  */
    @Override // com.argusoft.sewa.android.app.core.ImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isImmunisationMissed(java.util.Date r24, java.lang.String r25, java.util.Map<java.lang.String, java.util.Date> r26) {
        /*
            Method dump skipped, instructions count: 3372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl.isImmunisationMissed(java.util.Date, java.lang.String, java.util.Map):boolean");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0ad0  */
    @Override // com.argusoft.sewa.android.app.core.ImmunisationService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.Boolean, java.lang.String> isImmunisationMissedOrNotValid(java.util.Date r24, java.lang.String r25, java.util.Date r26, java.util.Map<java.lang.String, java.util.Date> r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 3678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl.isImmunisationMissedOrNotValid(java.util.Date, java.lang.String, java.util.Date, java.util.Map, boolean):java.util.Map");
    }

    @Override // com.argusoft.sewa.android.app.core.ImmunisationService
    public List<String> getMissedImmunisationListFromDueList(List<String> list, Date date, Date date2, Map<String, Date> map, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (isImmunisationMissedOrNotValid(date, str, date2, map, z).containsKey(true)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
