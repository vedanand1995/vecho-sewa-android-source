package com.argusoft.sewa.android.app.util;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyListInColorComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyVaccination;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.MemberAdditionalInfoDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.datastructure.PageFormBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.NotificationBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.nutrition.NutritionKeyUtil;
import com.argusoft.sewa.android.app.util.nutrition.NutritionMaps;
import com.argusoft.sewa.android.app.util.nutrition.WaRef;
import com.argusoft.sewa.android.app.util.nutrition.WhRef;
import com.google.gson.Gson;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import org.joda.time.DateTimeConstants;

/* loaded from: classes.dex */
public class HiddenQuestionFormulaUtil {
    private static final String TAG = "HiddenQuestionFormula";
    private static MyAlertDialog myAlertDialog;

    public static void setChildGrowthChartData(String[] strArr, QueFormBean queFormBean) {
    }

    private HiddenQuestionFormulaUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static void urineTest(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str == null || str.trim().length() <= 0) {
            return;
        }
        String[] strArrSplit = UtilBean.split(str, GlobalTypes.KEY_VALUE_SEPARATOR);
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        if (strArrSplit.length > 2) {
            try {
                if (Integer.parseInt(strArrSplit[1]) > Integer.parseInt(strArr[2]) || Integer.parseInt(strArrSplit[2]) > Integer.parseInt(strArr[3])) {
                    queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                }
            } catch (Exception e) {
                Log.e(TAG, null, e);
            }
        }
    }

    public static void checkContains(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (str != null) {
            List listAsList = Arrays.asList(UtilBean.split(str, GlobalTypes.COMMA));
            if (listAsList.isEmpty()) {
                return;
            }
            for (int i = 2; i < strArr.length; i++) {
                if (listAsList.contains(strArr[i])) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
            }
        }
    }

    public static void checkIfBloodGroupNegative(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (str == null || str.isEmpty() || !Arrays.asList("A-", "B-", "O-", "AB-").contains(str)) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void checkIfBloodGroupPositive(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (str == null || str.isEmpty() || !Arrays.asList("A+", "B+", "O+", "AB+").contains(str)) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void checkContainsWithLabel(String[] strArr, QueFormBean queFormBean) {
        String myLabel = UtilBean.getMyLabel(SharedStructureData.relatedPropertyHashTable.get(strArr[1]));
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (myLabel != null) {
            List listAsList = Arrays.asList(UtilBean.split(myLabel, GlobalTypes.COMMA));
            if (listAsList.isEmpty()) {
                return;
            }
            for (int i = 2; i < strArr.length; i++) {
                if (listAsList.contains(strArr[i])) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
            }
        }
    }

    public static void pncCheckTemp(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (strArr[2] != null) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            if (str != null) {
                String[] strArrSplit = UtilBean.split(str, GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit.length <= 0 || !strArrSplit[0].equalsIgnoreCase("F")) {
                    return;
                }
                try {
                    if (UtilBean.isValidNumber(strArr[3], UtilBean.fahrenheitToCelsius(Float.parseFloat(strArrSplit[1] + GlobalTypes.DOT_SEPARATOR + strArrSplit[2])), Float.parseFloat(strArr[2]))) {
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    }
                } catch (Exception e) {
                    Log.e(TAG, null, e);
                }
            }
        }
    }

    public static void lessThan(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        int i;
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            strArr[1] = strArr[1] + queFormBean.getLoopCounter();
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str != null) {
            if (str.equalsIgnoreCase("")) {
                str = "0";
            }
            try {
                i = Integer.parseInt(str);
            } catch (Exception unused) {
                i = 0;
            }
            try {
                if (i <= Integer.parseInt(strArr[2])) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                } else {
                    queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                }
            } catch (Exception e) {
                Log.e(TAG, null, e);
            }
        }
    }

    public static void setReverseFlag(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str == null || str.trim().length() <= 0 || str.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        String str2 = "F";
        if (str.equalsIgnoreCase("F")) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            str2 = "T";
        }
        SharedStructureData.relatedPropertyHashTable.put(strArr[2], str2);
    }

    public static void appetiteTestEligibilityCheck(String[] strArr, QueFormBean queFormBean) {
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr.length == 5) {
            String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
            String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
            String str4 = SharedStructureData.relatedPropertyHashTable.get(strArr[4]);
            if ((str == null || str.isEmpty() || Float.parseFloat(str) >= 11.5d) && ((str2 == null || str2.isEmpty() || !(str2.equals(RchConstants.SD_SCORE_SD4) || str2.equals(RchConstants.SD_SCORE_SD3))) && ((str3 == null || str3.isEmpty() || !str3.equals(MorbiditiesConstant.ONE_PLUS)) && (str4 == null || str4.isEmpty() || !str4.equals(MorbiditiesConstant.ONE_PLUS))))) {
                return;
            }
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        }
    }

    public static void compareDiseaseCount(QueFormBean queFormBean) {
        queFormBean.setEvent(GlobalTypes.EVENT_DEFAULT_LOOP);
        queFormBean.setIgnoreLoop(true);
        queFormBean.setIgnoreNextQueLoop(false);
        String relatedpropertyname = queFormBean.getRelatedpropertyname();
        if (relatedpropertyname == null || relatedpropertyname.trim().length() == 0) {
            relatedpropertyname = queFormBean.getOptions().get(0).getRelatedpropertyname();
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(relatedpropertyname);
        if (str == null || str.trim().length() == 0 || str.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            str = MorbiditiesConstant.ONE_PLUS;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        if (queFormBean.getLoopCounter() >= Integer.parseInt(str) - 1) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void checkLoop(QueFormBean queFormBean) {
        String relatedpropertyname = queFormBean.getRelatedpropertyname();
        if (relatedpropertyname == null || relatedpropertyname.trim().length() == 0) {
            relatedpropertyname = queFormBean.getOptions().get(0).getRelatedpropertyname();
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(relatedpropertyname);
        if (str == null || str.trim().length() == 0 || str.trim().equalsIgnoreCase(LabelConstants.NULL)) {
            str = "0";
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        if (queFormBean.getLoopCounter() >= Integer.parseInt(str)) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void checkLoopBakCount(String[] strArr, QueFormBean queFormBean) {
        if (strArr.length > 1) {
            if (queFormBean.getLoopCounter() == Integer.parseInt(strArr[1])) {
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                return;
            } else {
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                return;
            }
        }
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (SharedStructureData.totalFamilyMembersCount.intValue() == -1 || queFormBean.getLoopCounter() >= SharedStructureData.totalFamilyMembersCount.intValue()) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        }
    }

    public static void compareDate(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        if (str == null || str.trim().length() <= 0 || str2 == null || str2.trim().length() <= 0) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(Long.parseLong(str));
        UtilBean.clearTimeFromDate(calendar);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(Long.parseLong(str2));
        UtilBean.clearTimeFromDate(calendar2);
        if (calendar.compareTo(calendar2) == 0) {
            queFormBean.setNext(UtilBean.getOptionsOrDataMap(queFormBean, false).get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(UtilBean.getOptionsOrDataMap(queFormBean, false).get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setTrue(java.lang.String[] r17, com.argusoft.sewa.android.app.datastructure.QueFormBean r18) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.setTrue(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setmobiditylist(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        if (queFormBean.getNext() == null) {
            List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
            if (!optionsOrDataMap.isEmpty()) {
                queFormBean.setNext(optionsOrDataMap.get(0).getNext());
            }
        }
        if (SharedStructureData.ismapUpdate) {
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(strArr[1])));
            if (queFormBean2 == null || !queFormBean2.getType().equalsIgnoreCase(GlobalTypes.LIST_IN_COLOR)) {
                return;
            }
            ((MyListInColorComponent) queFormBean2.getQuestionTypeView()).resetList(SharedStructureData.getListOfLIC());
        }
    }

    public static void setAnswer(QueFormBean queFormBean) {
        if (queFormBean.getRelatedpropertyname() == null || !SharedStructureData.relatedPropertyHashTable.containsKey(queFormBean.getRelatedpropertyname())) {
            return;
        }
        queFormBean.setAnswer(SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname()));
    }

    public static void contains(String[] strArr, QueFormBean queFormBean) {
        String str;
        boolean z;
        boolean z2;
        queFormBean.setNext(queFormBean.getOptions().get(1).getKey());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr[1].contains(GlobalTypes.MORBIDITY_SEPARATOR_HASH)) {
            String[] strArrSplit = strArr[1].split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
            ArrayList arrayList = new ArrayList();
            for (String str2 : strArrSplit) {
                arrayList.add(SharedStructureData.relatedPropertyHashTable.get(str2) == null ? "" : SharedStructureData.relatedPropertyHashTable.get(str2));
            }
            if (arrayList.contains(strArr[2])) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        if (strArr[1].contains(GlobalTypes.MULTI_SELECT_SEPARATOR)) {
            ArrayList arrayList2 = new ArrayList();
            for (String str3 : strArr[1].split("\\*")) {
                arrayList2.add(SharedStructureData.relatedPropertyHashTable.get(str3) == null ? "" : SharedStructureData.relatedPropertyHashTable.get(str3));
            }
            if (strArr[2].contains("\\+")) {
                String[] strArrSplit2 = strArr[2].split("\\+");
                ArrayList arrayList3 = new ArrayList(Arrays.asList(strArrSplit2).subList(0, strArrSplit2.length));
                List listAsList = Arrays.asList(((String) arrayList2.get(0)).split(GlobalTypes.COMMA));
                if (!listAsList.isEmpty()) {
                    Iterator it = arrayList3.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (listAsList.contains((String) it.next())) {
                                z2 = true;
                                break;
                            }
                        } else {
                            z2 = false;
                            break;
                        }
                    }
                    if (z2) {
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        return;
                    } else {
                        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                        return;
                    }
                }
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
            List listAsList2 = Arrays.asList(((String) arrayList2.get(0)).split(GlobalTypes.COMMA));
            if (!listAsList2.isEmpty()) {
                if (listAsList2.contains(strArr[2])) {
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    return;
                } else {
                    queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                    queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                    return;
                }
            }
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            return;
        }
        if (strArr[1].contains(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR)) {
            String[] strArrSplit3 = strArr[1].split(GlobalTypes.MULTI_VALUE_BEAN_SEPARATOR);
            if (strArr.length > 2) {
                z = true;
                for (String str4 : strArrSplit3) {
                    if (!strArr[2].equals(SharedStructureData.relatedPropertyHashTable.get(str4))) {
                        z = false;
                    }
                }
            } else {
                z = true;
            }
            if (z) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        if (strArr[1].contains(GlobalTypes.MORBIDITY_DETAILS_SEPARATOR)) {
            String[] strArrSplit4 = strArr[1].split(GlobalTypes.MORBIDITY_DETAILS_SEPARATOR);
            if (SharedStructureData.relatedPropertyHashTable.get(strArrSplit4[1]) != null && !MorbiditiesConstant.THREE_PLUS.equals(SharedStructureData.relatedPropertyHashTable.get(strArrSplit4[0]))) {
                str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit4[1]);
            } else {
                str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit4[0]) != null ? SharedStructureData.relatedPropertyHashTable.get(strArrSplit4[0]) : "";
            }
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            if (strArr[2].contains(GlobalTypes.ADD_SEPARATOR)) {
                ArrayList arrayList4 = new ArrayList(Arrays.asList(strArr[2].split("\\+")));
                if (str != null && arrayList4.contains(str)) {
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    return;
                } else {
                    queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                    queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                    return;
                }
            }
            return;
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (strArr[2].contains(GlobalTypes.ADD_SEPARATOR)) {
            String[] strArrSplit5 = strArr[2].split("\\+");
            ArrayList arrayList5 = new ArrayList(Arrays.asList(strArrSplit5).subList(0, strArrSplit5.length));
            if (str5 != null && arrayList5.contains(str5)) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        if (str5 != null && str5.contains(GlobalTypes.COMMA)) {
            String[] strArrSplit6 = str5.split(GlobalTypes.COMMA);
            if (new ArrayList(Arrays.asList(strArrSplit6).subList(0, strArrSplit6.length)).contains(strArr[2])) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        if (str5 != null && str5.equals(strArr[2])) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void dateBetween(java.lang.String[] r6, com.argusoft.sewa.android.app.datastructure.QueFormBean r7) throws java.lang.NumberFormatException {
        /*
            java.util.List r0 = r7.getOptions()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.argusoft.sewa.android.app.databean.OptionTagBean r0 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r0
            java.lang.String r0 = r0.getNext()
            r7.setNext(r0)
            java.util.List r0 = r7.getOptions()
            java.lang.Object r0 = r0.get(r1)
            com.argusoft.sewa.android.app.databean.OptionTagBean r0 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r0
            java.lang.String r0 = r0.getKey()
            r7.setAnswer(r0)
            int r0 = r6.length
            r1 = 3
            if (r0 != r1) goto Lb3
            r0 = 1
            r1 = r6[r0]
            if (r1 == 0) goto Lb3
            r2 = 2
            r6 = r6[r2]
            if (r6 == 0) goto Lb3
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat
            java.lang.String r3 = "dd/MM/yyyy"
            java.util.Locale r4 = java.util.Locale.getDefault()
            r2.<init>(r3, r4)
            r3 = 0
            java.util.Date r1 = r2.parse(r1)     // Catch: java.text.ParseException -> L48
            java.util.Date r3 = r2.parse(r6)     // Catch: java.text.ParseException -> L46
            goto L4f
        L46:
            r6 = move-exception
            goto L4a
        L48:
            r6 = move-exception
            r1 = r3
        L4a:
            java.lang.String r2 = "HiddenQuestionFormula"
            android.util.Log.e(r2, r3, r6)
        L4f:
            java.util.Map<java.lang.String, java.lang.String> r6 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            java.lang.String r2 = "deliveryDate"
            java.lang.Object r6 = r6.get(r2)
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto Lb3
            long r4 = java.lang.Long.parseLong(r6)
            java.util.Calendar r6 = java.util.Calendar.getInstance()
            r6.setTimeInMillis(r4)
            com.argusoft.sewa.android.app.util.UtilBean.clearTimeFromDate(r6)
            java.util.Date r2 = r6.getTime()
            boolean r2 = r2.after(r1)
            if (r2 == 0) goto L7d
            java.util.Date r2 = r6.getTime()
            boolean r2 = r2.before(r3)
            if (r2 != 0) goto Lb3
        L7d:
            java.util.Date r2 = r6.getTime()
            boolean r1 = r2.equals(r1)
            if (r1 != 0) goto Lb3
            java.util.Date r6 = r6.getTime()
            boolean r6 = r6.equals(r3)
            if (r6 != 0) goto Lb3
            java.util.List r6 = r7.getOptions()
            java.lang.Object r6 = r6.get(r0)
            com.argusoft.sewa.android.app.databean.OptionTagBean r6 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r6
            java.lang.String r6 = r6.getNext()
            r7.setNext(r6)
            java.util.List r6 = r7.getOptions()
            java.lang.Object r6 = r6.get(r0)
            com.argusoft.sewa.android.app.databean.OptionTagBean r6 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r6
            java.lang.String r6 = r6.getKey()
            r7.setAnswer(r6)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.dateBetween(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void setAgePerDateSelected(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        int loopId;
        String str;
        String ageDisplay;
        TextView textView;
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            loopId = DynamicUtils.getLoopId(Integer.parseInt(strArr[1]), queFormBean.getLoopCounter());
            str = SharedStructureData.relatedPropertyHashTable.get("dob" + queFormBean.getLoopCounter());
        } else {
            loopId = Integer.parseInt(strArr[1]);
            str = SharedStructureData.relatedPropertyHashTable.get("dob");
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        if (queFormBean2 == null || (textView = (TextView) queFormBean2.getQuestionTypeView()) == null) {
            ageDisplay = null;
        } else if (str != null) {
            int[] iArrCalculateAgeYearMonthDayOnGivenDate = UtilBean.calculateAgeYearMonthDayOnGivenDate(Long.valueOf(new Date(Long.parseLong(str)).getTime()), Long.valueOf(new Date().getTime()));
            ageDisplay = UtilBean.getAgeDisplay(iArrCalculateAgeYearMonthDayOnGivenDate[0], iArrCalculateAgeYearMonthDayOnGivenDate[1], iArrCalculateAgeYearMonthDayOnGivenDate[2]);
            textView.setText(UtilBean.getMyLabel(ageDisplay));
            queFormBean2.setAnswer(ageDisplay);
        } else {
            textView.setText(UtilBean.getMyLabel(LabelConstants.DATE_NOT_YET_SELECTED));
            queFormBean2.setAnswer(LabelConstants.DATE_NOT_YET_SELECTED);
            ageDisplay = null;
        }
        if (ageDisplay != null) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_AS_PER_DATE, ageDisplay);
        }
    }

    public static void checkProperty(String[] strArr, QueFormBean queFormBean) {
        String str;
        String str2;
        String str3;
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr.length <= 1 || (str = strArr[1]) == null || str.length() <= 0 || (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) == null || str2.length() <= 0 || str2.equalsIgnoreCase(LabelConstants.NULL) || str2.equalsIgnoreCase(LabelConstants.N_A) || str2.equalsIgnoreCase(LabelConstants.NOT_APPLICABLE)) {
            return;
        }
        if (strArr.length == 3 && (str3 = strArr[2]) != null && str3.length() > 0) {
            if (Integer.parseInt(str2) >= Integer.parseInt(strArr[2])) {
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                return;
            }
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void checkString(String[] strArr, QueFormBean queFormBean) {
        String str;
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr.length <= 1 || (str = strArr[1]) == null || str.length() <= 0) {
            return;
        }
        String str2 = strArr[1];
        String str3 = (strArr.length != 3 || strArr[2].length() <= 0) ? null : SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        if (str3 == null && queFormBean.getRelatedpropertyname() != null) {
            str3 = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        }
        if (str3 == null || !str3.equalsIgnoreCase(str2)) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void checkWeight(String[] strArr, QueFormBean queFormBean) {
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr[1].contains(GlobalTypes.ADD_SEPARATOR)) {
            String[] strArrSplit = strArr[1].split("\\+");
            if (Float.parseFloat(SharedStructureData.relatedPropertyHashTable.get(strArrSplit[0]) + GlobalTypes.DOT_SEPARATOR + SharedStructureData.relatedPropertyHashTable.get(strArrSplit[1])) < Float.parseFloat(strArr[2])) {
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                return;
            } else {
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                return;
            }
        }
        if (strArr[1].length() > 0) {
            String str = (strArr.length != 3 || strArr[2].length() <= 0) ? null : SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            if (str != null) {
                if (Float.parseFloat(str) < Float.parseFloat(strArr[2])) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                } else {
                    queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                }
            }
        }
    }

    public static void membersCountCheck(QueFormBean queFormBean) {
        if (SharedStructureData.totalFamilyMembersCount.intValue() == -1 || SharedStructureData.totalFamilyMembersCount.intValue() <= queFormBean.getLoopCounter() + 1) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        }
    }

    public static void loopContains(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (queFormBean.getLoopCounter() > 0) {
            str = SharedStructureData.relatedPropertyHashTable.get(strArr[1] + queFormBean.getLoopCounter());
        }
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (str == null || !str.equals(strArr[2])) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void loopCheckAgeBetween(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        Date date;
        if (strArr.length >= 3) {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            String str = strArr.length >= 4 ? strArr[3] : null;
            String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("dob", queFormBean.getLoopCounter()));
            String str3 = strArr.length == 5 ? SharedStructureData.relatedPropertyHashTable.get(strArr[4]) : null;
            if (str3 != null) {
                date = new Date(Long.parseLong(str3));
            } else {
                date = new Date();
            }
            if (str2 != null) {
                Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(new Date(Long.parseLong(str2)));
                if (dateClearTimeFromDate != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(UtilBean.clearTimeFromDate(date));
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    if (str == null || str.equals(MorbiditiesConstant.YELLOW_COLOR)) {
                        calendar.add(1, -i);
                        Date time = calendar.getTime();
                        calendar.add(1, i);
                        calendar.add(1, -i2);
                        if (dateClearTimeFromDate.before(calendar.getTime()) || dateClearTimeFromDate.after(time)) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    if (str.equals("M")) {
                        calendar.add(2, -i);
                        Date time2 = calendar.getTime();
                        calendar.add(2, i);
                        calendar.add(2, -i2);
                        if (dateClearTimeFromDate.before(calendar.getTime()) || dateClearTimeFromDate.after(time2)) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    if (str.equals(LocationConstants.LocationType.DISTRICT)) {
                        calendar.add(5, -i);
                        Date time3 = calendar.getTime();
                        calendar.add(5, i);
                        calendar.add(5, -i2);
                        if (dateClearTimeFromDate.before(calendar.getTime()) || dateClearTimeFromDate.after(time3)) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    return;
                }
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                return;
            }
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void checkDateBetween(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        String str;
        Date date;
        if (strArr.length >= 5) {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            String str2 = strArr[3];
            String str3 = strArr[4];
            if (str3 != null) {
                String str4 = SharedStructureData.relatedPropertyHashTable.get(str3);
                if (queFormBean.getLoopCounter() > 0) {
                    str4 = SharedStructureData.relatedPropertyHashTable.get(str3 + queFormBean.getLoopCounter());
                }
                if (str4 != null) {
                    if (strArr.length == 6) {
                        str = SharedStructureData.relatedPropertyHashTable.get(strArr[5]);
                        if (queFormBean.getLoopCounter() > 0) {
                            str = SharedStructureData.relatedPropertyHashTable.get(strArr[5] + queFormBean.getLoopCounter());
                        }
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        date = new Date(Long.parseLong(str));
                    } else {
                        date = new Date();
                    }
                    int[] iArrCalculateAgeYearMonthDayOnGivenDate = UtilBean.calculateAgeYearMonthDayOnGivenDate(Long.valueOf(new Date(Long.parseLong(str4)).getTime()), Long.valueOf(date.getTime()));
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    if (str2 == null || str2.equals(MorbiditiesConstant.YELLOW_COLOR)) {
                        int i3 = iArrCalculateAgeYearMonthDayOnGivenDate[0];
                        if (i3 > i2 || i3 < i) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    if (str2.equals("M")) {
                        int i4 = iArrCalculateAgeYearMonthDayOnGivenDate[1] + (iArrCalculateAgeYearMonthDayOnGivenDate[0] * 12);
                        if (i4 > i2 || i4 < i) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    if (str2.equals(LocationConstants.LocationType.DISTRICT)) {
                        int i5 = iArrCalculateAgeYearMonthDayOnGivenDate[2] + (iArrCalculateAgeYearMonthDayOnGivenDate[0] * 365) + (iArrCalculateAgeYearMonthDayOnGivenDate[1] * 30);
                        if (i5 > i2 || i5 < i) {
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            return;
                        }
                        return;
                    }
                    return;
                }
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                return;
            }
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
    }

    public static void setAreaQuestionVisibility(String[] strArr, QueFormBean queFormBean) {
        String str;
        if (strArr[1] != null) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            List<FieldValueMobDataBean> list = SharedStructureData.mapDataMapLabelBean.get(strArr[1]);
            if (list == null || list.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList<LocationBean> arrayList3 = new ArrayList(SharedStructureData.sewaService.retrieveLocationByLevel(SewaConstants.getLocationLevel().get(strArr[1])));
            if (strArr.length > 2 && (str = strArr[2]) != null && str.equalsIgnoreCase("filterRequired")) {
                String str2 = SharedStructureData.relatedPropertyHashTable.get("locationId");
                if (str2 != null && !str2.equals(LabelConstants.NULL)) {
                    for (LocationBean locationBean : arrayList3) {
                        if (locationBean.getParent().intValue() != Integer.parseInt(str2)) {
                            arrayList.add(locationBean);
                        }
                    }
                }
                arrayList3.removeAll(arrayList);
            }
            for (LocationBean locationBean2 : arrayList3) {
                FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
                fieldValueMobDataBean.setIdOfValue(locationBean2.getActualID().intValue());
                fieldValueMobDataBean.setValue(locationBean2.getName());
                arrayList2.add(fieldValueMobDataBean);
            }
            SharedStructureData.mapDataMapLabelBean.put(strArr[1], arrayList2);
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void checkFamilyReverification(QueFormBean queFormBean) {
        List<MemberDataBean> members;
        if (SharedStructureData.currentFamilyDataBean == null || SharedStructureData.currentFamilyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED) || SharedStructureData.currentFamilyDataBean.getState().equals(FhsConstants.FHS_FAMILY_STATE_ORPHAN) || FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES.contains(SharedStructureData.currentFamilyDataBean.getState()) || FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES.contains(SharedStructureData.currentFamilyDataBean.getState())) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
        if (SharedStructureData.currentFamilyDataBean == null || (members = SharedStructureData.currentFamilyDataBean.getMembers()) == null || members.isEmpty()) {
            return;
        }
        Iterator<MemberDataBean> it = members.iterator();
        while (it.hasNext()) {
            if (FhsConstants.FHS_IN_REVERIFICATION_MEMBER_STATES.contains(it.next().getState())) {
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                return;
            }
        }
    }

    public static void isNull(String[] strArr, QueFormBean queFormBean) {
        if (strArr.length == 1) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        String[] strArrSplit = strArr[1].split(GlobalTypes.COMMA);
        int length = strArrSplit.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            String str = strArrSplit[i];
            if (queFormBean.getLoopCounter() > 0) {
                str = str + queFormBean.getLoopCounter();
            }
            z = SharedStructureData.relatedPropertyHashTable.get(str) == null;
        }
        if (z) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void addAllOptionInSubcentreList(QueFormBean queFormBean) {
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(queFormBean.getNext())));
        if (queFormBean2 == null || queFormBean2.getQuestionTypeView() == null) {
            return;
        }
        List<FieldValueMobDataBean> arrayList = SharedStructureData.mapDataMapLabelBean.get("Level-5");
        boolean zBooleanValue = Boolean.FALSE.booleanValue();
        if (arrayList != null) {
            Iterator<FieldValueMobDataBean> it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getIdOfValue() == 0) {
                        zBooleanValue = Boolean.TRUE.booleanValue();
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            arrayList = new ArrayList<>();
        }
        if (!zBooleanValue) {
            FieldValueMobDataBean fieldValueMobDataBean = new FieldValueMobDataBean();
            fieldValueMobDataBean.setIdOfValue(0);
            fieldValueMobDataBean.setValue(LabelConstants.ALL);
            arrayList.add(0, fieldValueMobDataBean);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList2.add(UtilBean.getMyLabel("-Select-"));
        for (FieldValueMobDataBean fieldValueMobDataBean2 : arrayList) {
            OptionTagBean optionTagBean = new OptionTagBean();
            optionTagBean.setKey("" + fieldValueMobDataBean2.getIdOfValue());
            optionTagBean.setValue(fieldValueMobDataBean2.getValue());
            arrayList3.add(optionTagBean);
            arrayList2.add(UtilBean.getMyLabel(fieldValueMobDataBean2.getValue()));
        }
        try {
            Spinner spinner = (Spinner) queFormBean2.getQuestionTypeView();
            spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList2));
            if (SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()) != null) {
                for (OptionTagBean optionTagBean2 : arrayList3) {
                    if (optionTagBean2.getKey().equals(SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()))) {
                        spinner.setSelection(arrayList2.indexOf(optionTagBean2.getValue()));
                    }
                }
            }
            queFormBean2.setOptions(arrayList3);
            queFormBean2.setDatamap(null);
        } catch (NullPointerException e) {
            Log.e(TAG, null, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void clearScannedAadharDetails(java.lang.String[] r14, com.argusoft.sewa.android.app.datastructure.QueFormBean r15) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.clearScannedAadharDetails(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void isDateWithin(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        long time;
        try {
            String str = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
            if (strArr.length == 6) {
                String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[5]);
                if (str2 == null) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
                long j = Long.parseLong(str2);
                if (str != null) {
                    time = Long.parseLong(str);
                } else {
                    time = new Date().getTime();
                }
                int i = Integer.parseInt(strArr[2]);
                int i2 = Integer.parseInt(strArr[3]);
                int i3 = Integer.parseInt(strArr[4]);
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                if (strArr[1].equalsIgnoreCase("Sub")) {
                    if (UtilBean.calculateDateMinus(j, i, i2, i3) < time) {
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                        return;
                    }
                    return;
                }
                if (!strArr[1].equalsIgnoreCase("Add") || UtilBean.calculateDatePlus(j, i, i2, i3) <= time) {
                    return;
                }
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                return;
            }
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } catch (Exception e) {
            Log.e(TAG, null, e);
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void isDateOutside(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        long time;
        String str = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        if (strArr.length == 6) {
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[5]);
            if (str2 == null) {
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                return;
            }
            long j = Long.parseLong(str2);
            if (str != null) {
                time = Long.parseLong(str);
            } else {
                time = new Date().getTime();
            }
            int i = Integer.parseInt(strArr[2]);
            int i2 = Integer.parseInt(strArr[3]);
            int i3 = Integer.parseInt(strArr[4]);
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            if (strArr[1].equalsIgnoreCase("Sub")) {
                if (UtilBean.calculateDateMinus(j, i, i2, i3) > time || time > j) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
                return;
            }
            if (strArr[1].equalsIgnoreCase("Add")) {
                if (UtilBean.calculateDatePlus(j, i, i2, i3) < time || time < j) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
                return;
            }
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }

    public static void isDateBetween(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        int i;
        Calendar calendar;
        String str;
        String str2 = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        long j = 0;
        long j2 = str2 != null ? Long.parseLong(str2) : 0L;
        if (strArr.length > 1 && (str = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
            j = Long.parseLong(str);
        }
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (strArr.length > 3) {
            String str3 = strArr[2];
            String str4 = strArr[3];
            i = str4 != null ? Integer.parseInt(str4) : 0;
            calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            str3.hashCode();
            switch (str3) {
                case "D":
                    calendar.add(5, i);
                    if (calendar.getTimeInMillis() > j2) {
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                        break;
                    }
                    break;
                case "M":
                    calendar.add(2, i);
                    if (calendar.getTimeInMillis() > j2) {
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                        break;
                    }
                    break;
                case "Y":
                    calendar.add(1, i);
                    if (calendar.getTimeInMillis() > j2) {
                        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                        break;
                    }
                    break;
            }
        }
    }

    public static void isDateIn(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        long j;
        int i;
        String str;
        String str2 = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        if (str2 == null) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        long j2 = (strArr.length <= 1 || (str = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) == null) ? 0L : Long.parseLong(str);
        if (strArr.length > 6 && strArr[5] != null && strArr[6] != null) {
            String[] strArrSplit = UtilBean.split(str2.trim(), strArr[5].trim());
            try {
                i = Integer.parseInt(strArr[6].trim());
            } catch (Exception unused) {
                i = 1;
            }
            if (strArrSplit.length > i) {
                j = Long.parseLong(strArrSplit[i].trim());
            } else {
                j = Long.parseLong(str2.trim());
            }
        } else {
            j = Long.parseLong(str2.trim());
        }
        if (!UtilBean.isDateIn(j, strArr, j2)) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void isDateOut(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        long j;
        String str;
        String str2 = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        if (str2 == null) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        long j2 = 0;
        long j3 = (strArr.length <= 1 || (str = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) == null) ? 0L : Long.parseLong(str);
        try {
            if (strArr.length > 6 && strArr[5] != null && strArr[6] != null) {
                String[] strArrSplit = UtilBean.split(str2.trim(), strArr[5].trim());
                int index = getIndex(strArr[6].trim());
                if (strArrSplit.length > index) {
                    j = Long.parseLong(strArrSplit[index].trim());
                } else {
                    j = Long.parseLong(str2.trim());
                }
            } else {
                j = Long.parseLong(str2.trim());
            }
            j2 = j;
        } catch (NumberFormatException e) {
            Log.e(TAG, null, e);
        }
        if (!UtilBean.isDateOut(j2, strArr, j3)) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    private static int getIndex(String str) {
        try {
            return Integer.parseInt(str.trim());
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public static void checkPretermBirth(QueFormBean queFormBean) throws NumberFormatException {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_DATE);
        String str2 = SharedStructureData.relatedPropertyHashTable.get("lmpDate");
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        if (str == null || str2 == null) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            return;
        }
        long j = Long.parseLong(str2);
        calendar.setTime(new Date(j));
        calendar.add(5, 238);
        calendar2.setTime(new Date(j));
        calendar2.add(5, DateTimeConstants.HOURS_PER_WEEK);
        long j2 = Long.parseLong(str);
        if (calendar.getTime().getTime() > j2 && calendar2.getTime().getTime() < j2) {
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        } else {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        }
    }

    public static void updateCurrentGravida(String[] strArr) {
        int i;
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[1]));
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[2]));
        if (queFormBean == null || queFormBean.getAnswer() == null || !queFormBean.getAnswer().equals(MorbiditiesConstant.TWO_PLUS)) {
            return;
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.LOOP_COUNT);
        int i2 = str != null ? Integer.parseInt(str) : 0;
        if (queFormBean2 == null || queFormBean2.getAnswer() == null) {
            i = 0;
        } else {
            i = 0;
            for (String str2 : queFormBean2.getAnswer().toString().split(GlobalTypes.COMMA)) {
                if (!str2.equals("ADDNEW")) {
                    i++;
                }
            }
        }
        int i3 = i + i2;
        SharedStructureData.relatedPropertyHashTable.put("currentGravida", Integer.toString(i3));
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[3]));
        if (queFormBean3 != null) {
            ((TextView) queFormBean3.getQuestionTypeView()).setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i3)));
            queFormBean3.setAnswer(Integer.toString(i3));
        }
    }

    public static void identifyHighRiskAnc(String[] strArr) throws NumberFormatException {
        int i = Integer.parseInt(strArr[1]);
        int i2 = Integer.parseInt(strArr[2]);
        int i3 = Integer.parseInt(strArr[3]);
        int i4 = Integer.parseInt(strArr[4]);
        int i5 = Integer.parseInt(strArr[5]);
        int i6 = Integer.parseInt(strArr[6]);
        int i7 = Integer.parseInt(strArr[7]);
        int i8 = Integer.parseInt(strArr[8]);
        int i9 = Integer.parseInt(strArr[9]);
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i2));
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i3));
        QueFormBean queFormBean4 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i4));
        QueFormBean queFormBean5 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i5));
        QueFormBean queFormBean6 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i6));
        QueFormBean queFormBean7 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i7));
        QueFormBean queFormBean8 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i8));
        QueFormBean queFormBean9 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i9));
        HashMap map = new HashMap();
        if (queFormBean != null) {
            map.put("weightAnswer", queFormBean.getAnswer());
        }
        if (queFormBean2 != null) {
            map.put("haemoglobinAnswer", queFormBean2.getAnswer());
        }
        if (queFormBean3 != null) {
            map.put("bpAnswer", queFormBean3.getAnswer());
        }
        if (queFormBean4 != null) {
            map.put("dangerousSignAnswer", queFormBean4.getAnswer());
        }
        if (queFormBean7 != null) {
            map.put("urineAlbuminAnswer", queFormBean7.getAnswer());
        }
        if (queFormBean8 != null) {
            map.put("urineSugarAnswer", queFormBean8.getAnswer());
        }
        if (queFormBean9 != null) {
            map.put("sickleCellTestAnswer", queFormBean9.getAnswer());
        }
        if (queFormBean5 != null) {
            map.put("otherDangerousSignAnswer", queFormBean5.getAnswer());
        }
        if (strArr.length > 10) {
            int i10 = Integer.parseInt(strArr[10]);
            int i11 = Integer.parseInt(strArr[11]);
            QueFormBean queFormBean10 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i10));
            QueFormBean queFormBean11 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i11));
            if (queFormBean10 != null) {
                map.put("previousComplicationsAnswer", queFormBean10.getAnswer());
            }
            if (queFormBean11 != null) {
                map.put("otherPreviousComplicationsAnswer", queFormBean11.getAnswer());
            }
        }
        String strIdentifyHighRiskForRchAnc = SharedStructureData.rchHighRiskService.identifyHighRiskForRchAnc(map);
        if (queFormBean6 != null) {
            TextView textView = (TextView) queFormBean6.getQuestionTypeView();
            if (textView != null) {
                TextView instructionsView = queFormBean6.getInstructionsView();
                if (strIdentifyHighRiskForRchAnc.equals(RchConstants.NO_RISK_FOUND)) {
                    if (instructionsView != null) {
                        instructionsView.setText(RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT);
                    } else {
                        queFormBean6.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT));
                    }
                    textView.setText("");
                } else {
                    if (instructionsView != null) {
                        instructionsView.setText(queFormBean6.getInstruction());
                    } else {
                        queFormBean6.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), queFormBean6.getInstruction()));
                    }
                    textView.setText(strIdentifyHighRiskForRchAnc);
                }
            }
            queFormBean6.setAnswer(strIdentifyHighRiskForRchAnc);
        }
    }

    public static void identifyHighRiskAdolescent(String[] strArr) throws NumberFormatException {
        int i = Integer.parseInt(strArr[1]);
        int i2 = Integer.parseInt(strArr[2]);
        int i3 = Integer.parseInt(strArr[3]);
        int i4 = Integer.parseInt(strArr[4]);
        int i5 = Integer.parseInt(strArr[5]);
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i));
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i2));
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i3));
        QueFormBean queFormBean4 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i4));
        QueFormBean queFormBean5 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(i5));
        HashMap map = new HashMap();
        if (queFormBean != null) {
            map.put("haemoglobinAnswer", queFormBean.getAnswer());
        }
        if (queFormBean2 != null) {
            map.put("bmiAnswer", queFormBean2.getAnswer());
        }
        if (queFormBean3 != null) {
            map.put("isHavingIssueWithMenstruation", queFormBean3.getAnswer());
        }
        if (queFormBean4 != null) {
            map.put("issueWithMenstruationAnswer", queFormBean4.getAnswer());
        }
        String strIdentifyHighRiskForAdolescent = SharedStructureData.rchHighRiskService.identifyHighRiskForAdolescent(map);
        if (queFormBean5 != null) {
            TextView textView = (TextView) queFormBean5.getQuestionTypeView();
            if (textView != null) {
                TextView instructionsView = queFormBean5.getInstructionsView();
                if (strIdentifyHighRiskForAdolescent.equals(UtilBean.getMyLabel(RchConstants.NO_RISK_FOUND)) || strIdentifyHighRiskForAdolescent.equals(RchConstants.NO_RISK_FOUND)) {
                    if (instructionsView != null) {
                        instructionsView.setText(RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT);
                    } else {
                        queFormBean5.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT));
                    }
                    textView.setText("");
                } else {
                    if (instructionsView != null) {
                        instructionsView.setText(queFormBean5.getInstruction());
                    } else {
                        queFormBean5.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), queFormBean5.getInstruction()));
                    }
                    textView.setText(strIdentifyHighRiskForAdolescent);
                }
            }
            queFormBean5.setAnswer(strIdentifyHighRiskForAdolescent);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HIGH_RISK_ADOLESCENT, strIdentifyHighRiskForAdolescent);
        }
    }

    public static void identifyHighRiskPncChild(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        int loopId = Integer.parseInt(strArr[2]);
        int loopId2 = Integer.parseInt(strArr[3]);
        int loopId3 = Integer.parseInt(strArr[4]);
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            loopId = DynamicUtils.getLoopId(loopId, queFormBean.getLoopCounter());
            loopId2 = DynamicUtils.getLoopId(loopId2, queFormBean.getLoopCounter());
            loopId3 = DynamicUtils.getLoopId(loopId3, queFormBean.getLoopCounter());
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId2));
        QueFormBean queFormBean4 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId3));
        String strIdentifyHighRiskForChildRchPnc = null;
        if (queFormBean2 != null) {
            if (queFormBean3 != null) {
                strIdentifyHighRiskForChildRchPnc = SharedStructureData.rchHighRiskService.identifyHighRiskForChildRchPnc(queFormBean2.getAnswer(), queFormBean3.getAnswer());
            } else {
                strIdentifyHighRiskForChildRchPnc = SharedStructureData.rchHighRiskService.identifyHighRiskForChildRchPnc(queFormBean2.getAnswer(), null);
            }
        }
        if (strIdentifyHighRiskForChildRchPnc == null) {
            return;
        }
        if (queFormBean4 == null) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DISPLAY_MORBIDITY_CHILD, queFormBean.getLoopCounter()), strIdentifyHighRiskForChildRchPnc);
            return;
        }
        TextView textView = (TextView) queFormBean4.getQuestionTypeView();
        if (textView != null) {
            TextView instructionsView = queFormBean4.getInstructionsView();
            if (strIdentifyHighRiskForChildRchPnc.equals(RchConstants.NO_RISK_FOUND)) {
                if (instructionsView != null) {
                    instructionsView.setText(RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT);
                } else {
                    queFormBean4.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT));
                }
                textView.setText("");
                return;
            }
            if (instructionsView != null) {
                instructionsView.setText(queFormBean4.getInstruction());
            } else {
                queFormBean4.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), queFormBean4.getInstruction()));
            }
            textView.setText(strIdentifyHighRiskForChildRchPnc);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void identifyHighRiskPncMother(java.lang.String[] r7) throws java.lang.NumberFormatException {
        /*
            r0 = 1
            r0 = r7[r0]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            r1 = r7[r1]
            int r1 = java.lang.Integer.parseInt(r1)
            int r2 = r7.length
            r3 = 3
            r4 = -1
            r5 = 4
            if (r2 != r5) goto L1c
            r7 = r7[r3]
            int r7 = java.lang.Integer.parseInt(r7)
            r4 = r7
            goto L2f
        L1c:
            int r2 = r7.length
            if (r2 <= r5) goto L2f
            r2 = r7[r3]
            int r4 = java.lang.Integer.parseInt(r2)
            r7 = r7[r5]
            int r7 = java.lang.Integer.parseInt(r7)
            r6 = r4
            r4 = r7
            r7 = r6
            goto L30
        L2f:
            r7 = -1
        L30:
            java.util.Map<java.lang.Integer, com.argusoft.sewa.android.app.datastructure.QueFormBean> r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.mapIndexQuestion
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object r0 = r2.get(r0)
            com.argusoft.sewa.android.app.datastructure.QueFormBean r0 = (com.argusoft.sewa.android.app.datastructure.QueFormBean) r0
            java.util.Map<java.lang.Integer, com.argusoft.sewa.android.app.datastructure.QueFormBean> r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.mapIndexQuestion
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r1 = r2.get(r1)
            com.argusoft.sewa.android.app.datastructure.QueFormBean r1 = (com.argusoft.sewa.android.app.datastructure.QueFormBean) r1
            java.util.Map<java.lang.Integer, com.argusoft.sewa.android.app.datastructure.QueFormBean> r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.mapIndexQuestion
            java.lang.Integer r3 = java.lang.Integer.valueOf(r4)
            java.lang.Object r2 = r2.get(r3)
            com.argusoft.sewa.android.app.datastructure.QueFormBean r2 = (com.argusoft.sewa.android.app.datastructure.QueFormBean) r2
            java.util.Map<java.lang.Integer, com.argusoft.sewa.android.app.datastructure.QueFormBean> r3 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.mapIndexQuestion
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.Object r7 = r3.get(r7)
            com.argusoft.sewa.android.app.datastructure.QueFormBean r7 = (com.argusoft.sewa.android.app.datastructure.QueFormBean) r7
            r3 = 0
            if (r7 == 0) goto L68
            java.lang.Object r7 = r7.getAnswer()
            goto L69
        L68:
            r7 = r3
        L69:
            if (r0 == 0) goto L86
            if (r1 == 0) goto L7c
            com.argusoft.sewa.android.app.core.RchHighRiskService r3 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.rchHighRiskService
            java.lang.Object r0 = r0.getAnswer()
            java.lang.Object r1 = r1.getAnswer()
            java.lang.String r3 = r3.identifyHighRiskForMotherRchPnc(r0, r1, r7)
            goto L86
        L7c:
            com.argusoft.sewa.android.app.core.RchHighRiskService r1 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.rchHighRiskService
            java.lang.Object r0 = r0.getAnswer()
            java.lang.String r3 = r1.identifyHighRiskForMotherRchPnc(r0, r3, r7)
        L86:
            if (r3 != 0) goto L89
            return
        L89:
            if (r2 == 0) goto Ld7
            java.lang.Object r7 = r2.getQuestionTypeView()
            android.widget.TextView r7 = (android.widget.TextView) r7
            if (r7 == 0) goto Ld4
            android.widget.TextView r0 = r2.getInstructionsView()
            java.lang.String r1 = "No risks found"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto Lb8
            java.lang.String r1 = "No high risks were identified in this visit"
            if (r0 == 0) goto La7
            r0.setText(r1)
            goto Lb2
        La7:
            android.content.Context r0 = r7.getContext()
            com.google.android.material.textview.MaterialTextView r0 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateInstructionView(r0, r1)
            r2.setInstructionsView(r0)
        Lb2:
            java.lang.String r0 = ""
            r7.setText(r0)
            goto Ld4
        Lb8:
            if (r0 == 0) goto Lc2
            java.lang.String r1 = r2.getInstruction()
            r0.setText(r1)
            goto Ld1
        Lc2:
            android.content.Context r0 = r7.getContext()
            java.lang.String r1 = r2.getInstruction()
            com.google.android.material.textview.MaterialTextView r0 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateInstructionView(r0, r1)
            r2.setInstructionsView(r0)
        Ld1:
            r7.setText(r3)
        Ld4:
            r2.setAnswer(r3)
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.identifyHighRiskPncMother(java.lang.String[]):void");
    }

    public static void identifyHighRiskWpdChild(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        int loopId = Integer.parseInt(strArr[1]);
        int loopId2 = Integer.parseInt(strArr[2]);
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            loopId = DynamicUtils.getLoopId(loopId, queFormBean.getLoopCounter());
            loopId2 = DynamicUtils.getLoopId(loopId2, queFormBean.getLoopCounter());
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        QueFormBean queFormBean3 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId2));
        String strIdentifyHighRiskForChildRchWpd = queFormBean2 != null ? SharedStructureData.rchHighRiskService.identifyHighRiskForChildRchWpd(queFormBean2.getAnswer()) : null;
        if (strIdentifyHighRiskForChildRchWpd == null) {
            return;
        }
        if (!RchConstants.NO_RISK_FOUND.equals(strIdentifyHighRiskForChildRchWpd)) {
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            if (queFormBean3 != null) {
                TextView textView = (TextView) queFormBean3.getQuestionTypeView();
                if (textView != null) {
                    TextView instructionsView = queFormBean3.getInstructionsView();
                    if (instructionsView != null) {
                        instructionsView.setText(queFormBean3.getInstruction());
                    } else {
                        queFormBean3.setInstructionsView(MyStaticComponents.generateInstructionView(textView.getContext(), queFormBean3.getInstruction()));
                    }
                    textView.setText(strIdentifyHighRiskForChildRchWpd);
                }
                queFormBean3.setAnswer(strIdentifyHighRiskForChildRchWpd);
                return;
            }
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DISPLAY_MORBIDITY_CHILD, queFormBean.getLoopCounter()), strIdentifyHighRiskForChildRchWpd);
            return;
        }
        SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DISPLAY_MORBIDITY_CHILD, queFormBean.getLoopCounter()), null);
    }

    public static void checkContainsLoop(String[] strArr, QueFormBean queFormBean) {
        String str;
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            str = SharedStructureData.relatedPropertyHashTable.get(strArr[1] + queFormBean.getLoopCounter());
        } else {
            str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        }
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        if (str != null) {
            List listAsList = Arrays.asList(UtilBean.split(str, GlobalTypes.COMMA));
            if (listAsList.isEmpty()) {
                return;
            }
            for (int i = 2; i < strArr.length; i++) {
                if (listAsList.contains(strArr[i])) {
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    return;
                }
            }
        }
    }

    public static void checkIfLmpIsAvailable(QueFormBean queFormBean) {
        if (SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.LAST_LMP) == null) {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void putRemainingVaccines(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        Integer numValueOf;
        String str;
        if (strArr.length > 1) {
            String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.IMMUNISATION_GIVEN_STRING, queFormBean.getLoopCounter()));
            String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            Date date = new Date();
            if (strArr.length > 2 && (str = SharedStructureData.relatedPropertyHashTable.get(strArr[2])) != null) {
                date = new Date(Long.parseLong(str));
            }
            if (str3 == null || str3.isEmpty() || str3.equals(LabelConstants.NULL)) {
                return;
            }
            Set<String> dueImmunisationsForChild = SharedStructureData.immunisationService.getDueImmunisationsForChild(new Date(Long.parseLong(str3)), str2, date, null);
            if (dueImmunisationsForChild == null || dueImmunisationsForChild.isEmpty()) {
                return;
            }
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.REMAINING_VACCINES, queFormBean.getLoopCounter()), dueImmunisationsForChild.toString().replace("[", "").replace("]", ""));
            if (queFormBean.getLoopCounter() == 0) {
                numValueOf = Integer.valueOf(queFormBean.getNext());
            } else {
                numValueOf = Integer.valueOf((Integer.valueOf(queFormBean.getNext()).intValue() * 10000) + queFormBean.getLoopCounter());
            }
            PageFormBean pageFromNext = DynamicUtils.getPageFromNext(DynamicUtils.getLoopId(SharedStructureData.mapIndexQuestion.get(numValueOf)));
            if (pageFromNext != null) {
                ImmunisationSelectionComponent immunisationSelectionComponent = pageFromNext.getImmunisationSelectionComponent();
                MyVaccination myVaccination = pageFromNext.getMyVaccination();
                if (myVaccination != null) {
                    myVaccination.reSet(new LinkedList(dueImmunisationsForChild));
                }
                if (immunisationSelectionComponent != null) {
                    immunisationSelectionComponent.resetComponent();
                }
            }
        }
    }

    public static void checkIfThirdTrimester(QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get("lmpDate");
        if (str != null && !str.isEmpty() && !str.equals(LabelConstants.NULL)) {
            Date date = new Date(Long.parseLong(str));
            Calendar calendar = Calendar.getInstance();
            calendar.add(2, -6);
            if (calendar.getTime().after(date)) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
    }

    public static void checkAgeIfWronglyRegistered(QueFormBean queFormBean) {
        Date date = new Date();
        String str = SharedStructureData.relatedPropertyHashTable.get("dob");
        if (str != null) {
            date = new Date(Long.parseLong(str));
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -18);
        Date time = calendar.getTime();
        calendar.add(1, -32);
        if (date.after(calendar.getTime()) && date.before(time)) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        }
    }

    public static void checkAgeLessThan20(QueFormBean queFormBean) {
        String strValueOf = String.valueOf(queFormBean.getLoopCounter());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SharedStructureData.context);
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        HashSet hashSet = new HashSet();
        Set<String> stringSet = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_ALIVE_MEMBERS, hashSet);
        Set<String> stringSet2 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_FEMALE_MARRIED_MEMBERS, hashSet);
        Set<String> stringSet3 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_WIFE_MEMBERS, hashSet);
        Set<String> stringSet4 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_MALE_MARRIED_MEMBERS, hashSet);
        if (SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("motherId", queFormBean.getLoopCounter())) == null) {
            ((Set) Objects.requireNonNull(stringSet)).add(strValueOf);
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()));
        String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.DEFAULT_MARITAL_STATUS, queFormBean.getLoopCounter()));
        if (str != null && str.equals(MorbiditiesConstant.TWO_PLUS)) {
            if (str2 != null && (str2.equals("629") || str2.equals("641"))) {
                ((Set) Objects.requireNonNull(stringSet2)).add(strValueOf);
                if (SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.HUSBAND_ID, queFormBean.getLoopCounter())) == null) {
                    ((Set) Objects.requireNonNull(stringSet3)).add(strValueOf);
                }
            } else if (((Set) Objects.requireNonNull(stringSet2)).contains(strValueOf)) {
                stringSet2.remove(strValueOf);
            }
            if (((Set) Objects.requireNonNull(stringSet4)).contains(strValueOf)) {
                stringSet4.remove(strValueOf);
            }
        }
        if (str != null && str.equals(MorbiditiesConstant.ONE_PLUS)) {
            if (str2 != null && str2.equals("629")) {
                ((Set) Objects.requireNonNull(stringSet4)).add(strValueOf);
            } else if (((Set) Objects.requireNonNull(stringSet4)).contains(strValueOf)) {
                stringSet4.remove(strValueOf);
            }
            if (((Set) Objects.requireNonNull(stringSet2)).contains(strValueOf)) {
                stringSet2.remove(strValueOf);
            }
            if (((Set) Objects.requireNonNull(stringSet3)).contains(strValueOf)) {
                stringSet3.remove(strValueOf);
            }
        }
        editorEdit.putStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_ALIVE_MEMBERS, stringSet);
        editorEdit.putStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_FEMALE_MARRIED_MEMBERS, stringSet2);
        editorEdit.putStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_WIFE_MEMBERS, stringSet3);
        editorEdit.putStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_MALE_MARRIED_MEMBERS, stringSet4);
        editorEdit.apply();
    }

    public static void removeMemberCountForRemovedMember() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SharedStructureData.context);
        int i = SharedStructureData.loopBakCounter;
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        updateMemberCountSetTillLastLoopCount(i, RelatedPropertyNameConstants.LOOP_COUNTER_FOR_ALIVE_MEMBERS, defaultSharedPreferences, editorEdit);
        updateMemberCountSetTillLastLoopCount(i, RelatedPropertyNameConstants.LOOP_COUNTER_FOR_FEMALE_MARRIED_MEMBERS, defaultSharedPreferences, editorEdit);
        updateMemberCountSetTillLastLoopCount(i, RelatedPropertyNameConstants.LOOP_COUNTER_FOR_WIFE_MEMBERS, defaultSharedPreferences, editorEdit);
        updateMemberCountSetTillLastLoopCount(i, RelatedPropertyNameConstants.LOOP_COUNTER_FOR_MALE_MARRIED_MEMBERS, defaultSharedPreferences, editorEdit);
        editorEdit.apply();
    }

    public static void updateMemberCountSetTillLastLoopCount(int i, String str, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        HashSet hashSet = new HashSet();
        Set<String> stringSet = sharedPreferences.getStringSet(str, new HashSet());
        if (stringSet != null) {
            for (String str2 : stringSet) {
                if (Integer.parseInt(str2) <= i) {
                    hashSet.add(str2);
                }
            }
        }
        editor.putStringSet(str, hashSet);
    }

    public static void checkIfAnyChildExisits(QueFormBean queFormBean) {
        LinearLayout pageLayout;
        removeMemberCountForRemovedMember();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SharedStructureData.context);
        Object obj = null;
        Set<String> stringSet = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_FEMALE_MARRIED_MEMBERS, null);
        Set<String> stringSet2 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_ALIVE_MEMBERS, null);
        int i = 1;
        if (stringSet2 != null && !stringSet2.isEmpty() && stringSet != null && !stringSet.isEmpty()) {
            for (String str : stringSet2) {
                String str2 = str.equals("0") ? "" : str;
                String str3 = SharedStructureData.relatedPropertyHashTable.get("dob" + str2);
                if (str3 != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(Long.parseLong(str3));
                    calendar.add(i, -12);
                    calendar.set(11, 0);
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    long time = calendar.getTime().getTime();
                    for (String str4 : stringSet) {
                        if (str.equals(str4)) {
                            obj = null;
                        } else {
                            if (str4.equals("0")) {
                                str4 = "";
                            }
                            String str5 = SharedStructureData.relatedPropertyHashTable.get("dob" + str4);
                            if (str5 != null) {
                                calendar.setTimeInMillis(Long.parseLong(str5));
                                calendar.set(11, 0);
                                calendar.set(12, 0);
                                calendar.set(13, 0);
                                calendar.set(14, 0);
                                if (calendar.getTimeInMillis() <= time) {
                                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                                    QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(queFormBean.getNext()));
                                    if (queFormBean2 != null) {
                                        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(SharedStructureData.context, IdConstants.DATE_PICKER_TEXT_DATE_ID, 1, null);
                                        linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, SharedStructureData.context, queFormBean2.getQuestion()));
                                        linearLayout.addView(MyDynamicComponents.getMotherChildRelationshipView(SharedStructureData.context, queFormBean2));
                                        queFormBean2.setQuestionTypeView(linearLayout);
                                        queFormBean2.setQuestionUIFrame(linearLayout);
                                        PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(queFormBean2.getPage()));
                                        if (pageFormBean == null || (pageLayout = pageFormBean.getPageLayout(true, 0)) == null) {
                                            return;
                                        }
                                        pageLayout.removeAllViews();
                                        pageLayout.addView(linearLayout);
                                        return;
                                    }
                                    return;
                                }
                            }
                            obj = null;
                        }
                    }
                }
                obj = obj;
                i = 1;
            }
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
    }

    public static void checkIfAnyFemaleMarriedMembersExists(QueFormBean queFormBean) {
        LinearLayout pageLayout;
        Set<String> stringSet = PreferenceManager.getDefaultSharedPreferences(SharedStructureData.context).getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_WIFE_MEMBERS, null);
        if (stringSet == null || stringSet.isEmpty()) {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
            return;
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(queFormBean.getNext()));
        if (queFormBean2 != null) {
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(SharedStructureData.context, IdConstants.DATE_PICKER_TEXT_DATE_ID, 1, null);
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, SharedStructureData.context, queFormBean2.getQuestion()));
            linearLayout.addView(MyDynamicComponents.getHusbandWifeRelationshipView(SharedStructureData.context, queFormBean2));
            queFormBean2.setQuestionTypeView(linearLayout);
            queFormBean2.setQuestionUIFrame(linearLayout);
            PageFormBean pageFormBean = SharedStructureData.mapIndexPage.get(Integer.valueOf(queFormBean2.getPage()));
            if (pageFormBean == null || (pageLayout = pageFormBean.getPageLayout(true, -1)) == null) {
                return;
            }
            pageLayout.removeAllViews();
            pageLayout.addView(linearLayout);
        }
    }

    public static void checkFamilyState(String[] strArr, QueFormBean queFormBean) {
        String state;
        if (strArr.length > 1) {
            if (SharedStructureData.currentFamilyDataBean != null) {
                state = SharedStructureData.currentFamilyDataBean.getState();
                String str = strArr[1];
                str.hashCode();
                switch (str) {
                    case "A":
                        if (FhsConstants.FHS_ARCHIVED_CRITERIA_FAMILY_STATES.contains(state)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                    case "N":
                        if (FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES.contains(state)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                    case "R":
                        if (FhsConstants.FHS_IN_REVERIFICATION_CRITERIA_FAMILY_STATES.contains(state)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                    case "U":
                        if (state.equals(FhsConstants.FHS_FAMILY_STATE_UNVERIFIED)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                    case "V":
                        if (FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES.contains(state)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                    case "VN":
                        if (FhsConstants.FHS_NEW_CRITERIA_FAMILY_STATES.contains(state) || FhsConstants.FHS_VERIFIED_CRITERIA_FAMILY_STATES.contains(state)) {
                            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                            break;
                        } else {
                            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                            break;
                        }
                        break;
                    default:
                        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                        break;
                }
            }
            if ("U".equals(strArr[1])) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            }
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkMemberState(java.lang.String[] r7, com.argusoft.sewa.android.app.datastructure.QueFormBean r8) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.checkMemberState(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void checkNewFamily(QueFormBean queFormBean) {
        if (SharedStructureData.currentFamilyDataBean != null) {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void contactGynecologist() {
        String str;
        if (!RchConstants.MEMBER_STATUS_AVAILABLE.equals(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS)) || (str = SharedStructureData.relatedPropertyHashTable.get("notificationId")) == null) {
            return;
        }
        NotificationBean notificationBeanRetrieveNotificationById = SharedStructureData.sewaService.retrieveNotificationById(Long.valueOf(str));
        if (notificationBeanRetrieveNotificationById.getCustomField().equals(MorbiditiesConstant.ONE_PLUS) && notificationBeanRetrieveNotificationById.getState().equals(NotificationConstants.NOTIFICATION_STATE_RESCHEDULE)) {
            MyAlertDialog myAlertDialog2 = new MyAlertDialog(SharedStructureData.context, LabelConstants.REFERRED_TO_GYNECOLOGIST, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HiddenQuestionFormulaUtil.myAlertDialog.dismiss();
                }
            }, DynamicUtils.BUTTON_OK);
            myAlertDialog = myAlertDialog2;
            myAlertDialog2.show();
        }
    }

    public static void addMotherList(QueFormBean queFormBean) {
        ArrayList<MemberDataBean> arrayList = new ArrayList();
        if (queFormBean.getNext() != null) {
            for (MemberDataBean memberDataBean : SharedStructureData.sewaFhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(SharedStructureData.currentFamilyDataBean.getFamilyId())) {
                if (memberDataBean.getGender() != null && memberDataBean.getGender().equalsIgnoreCase("F") && memberDataBean.getMaritalStatus() != null && (memberDataBean.getMaritalStatus().equals("629") || memberDataBean.getMaritalStatus().equals("641"))) {
                    arrayList.add(memberDataBean);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList<OptionTagBean> arrayList3 = new ArrayList();
            OptionTagBean optionTagBean = new OptionTagBean();
            optionTagBean.setKey("-1");
            optionTagBean.setValue(UtilBean.getMyLabel("-Select-"));
            arrayList3.add(optionTagBean);
            arrayList2.add(UtilBean.getMyLabel("-Select-"));
            if (!arrayList.isEmpty()) {
                for (MemberDataBean memberDataBean2 : arrayList) {
                    OptionTagBean optionTagBean2 = new OptionTagBean();
                    optionTagBean2.setKey("" + memberDataBean2.getId());
                    optionTagBean2.setValue(memberDataBean2.getFirstName() + " " + memberDataBean2.getLastName());
                    arrayList3.add(optionTagBean2);
                    arrayList2.add(memberDataBean2.getFirstName() + " " + memberDataBean2.getLastName());
                }
            }
            OptionTagBean optionTagBean3 = new OptionTagBean();
            optionTagBean3.setKey("0");
            optionTagBean3.setValue(UtilBean.getMyLabel("Not available"));
            arrayList3.add(optionTagBean3);
            arrayList2.add(UtilBean.getMyLabel("Not available"));
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(queFormBean.getNext()));
            if (queFormBean2 != null) {
                queFormBean2.setOptions(arrayList3);
                Spinner spinner = (Spinner) queFormBean2.getQuestionTypeView();
                if (spinner != null) {
                    spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList2));
                    if (SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()) != null) {
                        for (OptionTagBean optionTagBean4 : arrayList3) {
                            if (optionTagBean4.getKey().equals(SharedStructureData.relatedPropertyHashTable.get(queFormBean2.getRelatedpropertyname()))) {
                                spinner.setSelection(arrayList2.indexOf(optionTagBean4.getValue()));
                            }
                        }
                    }
                }
            }
        }
    }

    public static void calculateCbacScore() {
        Integer numCalculateCbacScoreForMember = SharedStructureData.ncdScoreService.calculateCbacScoreForMember();
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.CBAC_SCORE, numCalculateCbacScoreForMember.toString());
        QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(numCalculateCbacScoreForMember.intValue() <= 4 ? 50 : 51));
        if (queFormBean != null) {
            TextView textView = (TextView) queFormBean.getQuestionTypeView();
            if (textView != null) {
                textView.setText(String.format(Locale.getDefault(), "%d", numCalculateCbacScoreForMember));
            }
            queFormBean.setAnswer(numCalculateCbacScoreForMember);
        }
    }

    public static void checkMisoprostol(QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_PLACE);
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE);
        if ((str != null && str.equals(RchConstants.HOME)) || (str2 != null && str2.equals(RchConstants.INFRA_TYPE_SC))) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        }
    }

    public static void resetProperty(String[] strArr, QueFormBean queFormBean) {
        String str;
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        if (strArr.length <= 1 || (str = strArr[1]) == null || str.equalsIgnoreCase(RelatedPropertyNameConstants.HUSBANDS_BLOOD_GROUP)) {
            return;
        }
        SharedStructureData.relatedPropertyHashTable.remove(strArr[1]);
    }

    public static void checkContainsMultiple(String[] strArr, QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (strArr.length > 1) {
            String str = strArr[1];
            for (int i = 2; i < strArr.length; i++) {
                if (str.equals(SharedStructureData.relatedPropertyHashTable.get(strArr[i]))) {
                    queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                    queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                    return;
                }
            }
        }
    }

    public static void checkChiranjeeviEligibility(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (SharedStructureData.selectedHealthInfra == null || !SharedStructureData.selectedHealthInfra.getTypeId().equals(RchConstants.INFRA_PRIVATE_HOSPITAL) || !Boolean.TRUE.equals(SharedStructureData.selectedHealthInfra.getChiranjeevi()) || SharedStructureData.currentRchFamilyDataBean == null) {
            return;
        }
        if ((SharedStructureData.currentRchFamilyDataBean.getBplFlag() == null || !SharedStructureData.currentRchFamilyDataBean.getBplFlag().booleanValue()) && (SharedStructureData.currentRchFamilyDataBean.getCaste() == null || !SharedStructureData.currentRchFamilyDataBean.getCaste().equals("625"))) {
            return;
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
    }

    public static void addAdditionDischargeQuestion(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (SharedStructureData.selectedHealthInfra == null || !RchConstants.GOVERNMENT_INSTITUTIONS.contains(SharedStructureData.selectedHealthInfra.getTypeId())) {
            return;
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
    }

    public static void calculateAllSd(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        QueFormBean queFormBean2;
        if (strArr.length >= 6) {
            String relatedpropertyname = queFormBean.getRelatedpropertyname();
            float f = Float.parseFloat((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get(strArr[1])));
            float f2 = Float.parseFloat((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get(strArr[2]))) / 1000.0f;
            char cCharAt = ((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get(strArr[3]))).charAt(0);
            int i = Integer.parseInt((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.AGE)));
            int iCalculateWaSd = calculateWaSd(i, cCharAt, f2);
            int iCalculateHaSd = calculateHaSd(i, cCharAt, f);
            int iCalculateWhSd = calculateWhSd(f, f2, cCharAt);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) coloredLine("Weight for Age", iCalculateWaSd));
            spannableStringBuilder.append((CharSequence) LabelConstants.NEW_LINE);
            spannableStringBuilder.append((CharSequence) coloredLine("Height for Age", iCalculateHaSd));
            spannableStringBuilder.append((CharSequence) LabelConstants.NEW_LINE);
            spannableStringBuilder.append((CharSequence) coloredLine("Weight for Height", iCalculateWhSd));
            if (strArr.length == 7 && (queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[6]))) != null) {
                ((TextView) queFormBean2.getQuestionTypeView()).setText(spannableStringBuilder);
                queFormBean2.setAnswer("Weight for Age:" + iCalculateWaSd + ", Height for Age:" + iCalculateHaSd + ", Weight for Height:" + iCalculateWhSd);
            }
            SharedStructureData.relatedPropertyHashTable.put(relatedpropertyname, spannableStringBuilder.toString());
        }
    }

    private static SpannableString coloredLine(String str, int i) throws Resources.NotFoundException {
        String str2;
        int color;
        if (i < -3) {
            str2 = str + ": Severe Malnutrition (SD " + i + ")";
            color = SharedStructureData.context.getResources().getColor(R.color.pregnantWomenTextColor);
        } else if (i <= -2) {
            str2 = str + ": Moderate Malnutrition (SD " + i + ")";
            color = SharedStructureData.context.getResources().getColor(R.color.yellow);
        } else {
            str2 = str + ": Normal (SD " + i + ")";
            color = SharedStructureData.context.getResources().getColor(R.color.hofTextColor);
        }
        SpannableString spannableString = new SpannableString(str2);
        spannableString.setSpan(new ForegroundColorSpan(color), 0, str2.length(), 33);
        return spannableString;
    }

    private static String formatSd(int i) {
        if (i == Integer.MIN_VALUE) {
            return "NA";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i > 0 ? GlobalTypes.ADD_SEPARATOR : "");
        sb.append(i);
        return sb.toString();
    }

    public static int calculateWaSd(int i, char c, float f) {
        WaRef waRef = NutritionMaps.WA_MAP.get(NutritionKeyUtil.ageKey(i, c));
        if (waRef == null) {
            return Integer.MIN_VALUE;
        }
        if (f < waRef.sdMinus3) {
            return -4;
        }
        if (f < waRef.sdMinus2) {
            return -3;
        }
        if (f < waRef.sdMinus1) {
            return -2;
        }
        if (f < waRef.median) {
            return -1;
        }
        if (f < waRef.sdPlus1) {
            return 0;
        }
        return f < waRef.sdPlus2 ? 1 : 2;
    }

    public static int calculateHaSd(int i, char c, float f) {
        WaRef waRef = NutritionMaps.HFA_MAP.get(NutritionKeyUtil.ageKey(i, c));
        if (waRef == null) {
            return Integer.MIN_VALUE;
        }
        if (f < waRef.sdMinus3) {
            return -4;
        }
        if (f < waRef.sdMinus2) {
            return -3;
        }
        if (f < waRef.sdMinus1) {
            return -2;
        }
        if (f < waRef.median) {
            return -1;
        }
        if (f < waRef.sdPlus1) {
            return 0;
        }
        return f < waRef.sdPlus2 ? 1 : 2;
    }

    public static int calculateWhSd(float f, float f2, char c) {
        WhRef whRef = NutritionMaps.WH_MAP.get(NutritionKeyUtil.heightKey(Math.round(f), c));
        if (whRef == null) {
            return Integer.MIN_VALUE;
        }
        if (f2 < whRef.sdMinus3) {
            return -4;
        }
        if (f2 < whRef.sdMinus2) {
            return -3;
        }
        return f2 < whRef.median ? -2 : 0;
    }

    public static void calculateSDScore(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        float f;
        QueFormBean queFormBean2;
        if (strArr.length >= 4) {
            String relatedpropertyname = queFormBean.getRelatedpropertyname();
            String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
            String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
            int i = str != null ? Integer.parseInt(str) : 0;
            if (str2 == null || str2.equals("T")) {
                f = 0.0f;
            } else {
                if (str2.contains("/")) {
                    str2 = str2.split("/")[0];
                }
                f = Float.parseFloat(str2);
            }
            String strCalculateSDScore = SDScoreUtil.calculateSDScore(Integer.valueOf(i), Float.valueOf(f), (String) Objects.requireNonNull(str3));
            if (strCalculateSDScore != null) {
                SharedStructureData.relatedPropertyHashTable.put(relatedpropertyname, strCalculateSDScore);
                String sDScoreForDisplay = SDScoreUtil.getSDScoreForDisplay(strCalculateSDScore);
                if (strArr.length != 5 || (queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[4]))) == null) {
                    return;
                }
                if (!strCalculateSDScore.equals(RchConstants.SD_SCORE_CANNOT_BE_CALCULATED)) {
                    queFormBean2.setAnswer(strCalculateSDScore);
                } else {
                    queFormBean2.setAnswer(null);
                }
                TextView textView = (TextView) queFormBean2.getQuestionTypeView();
                if (queFormBean.getDatamap().equalsIgnoreCase(LabelConstants.COLOR_CODING)) {
                    if (strCalculateSDScore.equals(RchConstants.SD_SCORE_SD2)) {
                        textView.setTextColor(SharedStructureData.context.getResources().getColor(R.color.yellow));
                    } else if (strCalculateSDScore.equals(RchConstants.SD_SCORE_SD1) || strCalculateSDScore.equals(RchConstants.SD_SCORE_MEDIAN) || strCalculateSDScore.equals("NONE")) {
                        textView.setTextColor(SharedStructureData.context.getResources().getColor(R.color.hofTextColor));
                    } else {
                        textView.setTextColor(SharedStructureData.context.getResources().getColor(R.color.pregnantWomenTextColor));
                    }
                }
                textView.setText(sDScoreForDisplay);
            }
        }
    }

    public static void showAlertIfYesInAny(String[] strArr, QueFormBean queFormBean, Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            return;
        }
        if (strArr.length > 1) {
            for (int i = 1; i < strArr.length; i++) {
                if (SharedStructureData.relatedPropertyHashTable.containsKey(strArr[i]) && ("T".equalsIgnoreCase(SharedStructureData.relatedPropertyHashTable.get(strArr[i])) || MorbiditiesConstant.ONE_PLUS.equalsIgnoreCase(SharedStructureData.relatedPropertyHashTable.get(strArr[i])))) {
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            HiddenQuestionFormulaUtil.myAlertDialog.dismiss();
                        }
                    };
                    MyAlertDialog myAlertDialog2 = myAlertDialog;
                    if (myAlertDialog2 == null || !myAlertDialog2.isShowing()) {
                        MyAlertDialog myAlertDialog3 = new MyAlertDialog(SharedStructureData.context, false, queFormBean.getDatamap(), onClickListener, DynamicUtils.BUTTON_OK);
                        myAlertDialog = myAlertDialog3;
                        myAlertDialog3.show();
                        return;
                    }
                    return;
                }
            }
        }
    }

    public static void isCMAMFollowupsProblem(String[] strArr, QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        Float weight = SharedStructureData.currentRchMemberBean.getWeight();
        Gson gson = new Gson();
        if (!"NONE".equals(str)) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            return;
        }
        if (SharedStructureData.currentRchMemberBean.getAdditionalInfo() != null) {
            MemberAdditionalInfoDataBean memberAdditionalInfoDataBean = (MemberAdditionalInfoDataBean) gson.fromJson(SharedStructureData.currentRchMemberBean.getAdditionalInfo(), MemberAdditionalInfoDataBean.class);
            if (memberAdditionalInfoDataBean.getWtGainStatus() == null || memberAdditionalInfoDataBean.getWtGainStatus().length() <= 2) {
                return;
            }
            String strSubstring = memberAdditionalInfoDataBean.getWtGainStatus().substring(memberAdditionalInfoDataBean.getWtGainStatus().length() - 1);
            if (weight == null || str2 == null) {
                return;
            }
            if ((weight.floatValue() <= Float.parseFloat(str2) || !strSubstring.equals(GlobalTypes.KEY_VALUE_SEPARATOR)) && !(weight.floatValue() == Float.parseFloat(str2) && strSubstring.equals(SimpleComparison.EQUAL_TO_OPERATION))) {
                return;
            }
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void isFamilyHeadIdentified(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_FOUND);
        if (str == null || !str.equals(MorbiditiesConstant.ONE_PLUS)) {
            return;
        }
        if (SharedStructureData.loopBakCounter == 0) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            return;
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("familyHeadFlag", queFormBean.getLoopCounter()));
        if (str2 != null && str2.equals(MorbiditiesConstant.ONE_PLUS)) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            return;
        }
        for (int i = 0; i < SharedStructureData.loopBakCounter + 1; i++) {
            String str3 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("familyHeadFlag", i));
            String str4 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_STATUS, i));
            if (str3 != null && str4 != null && str3.equals(MorbiditiesConstant.ONE_PLUS) && str4.equals(MorbiditiesConstant.ONE_PLUS)) {
                return;
            }
            if (str4 == null && str3 != null && str3.equals(MorbiditiesConstant.ONE_PLUS)) {
                return;
            }
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
    }

    public static void setDefaultGenderBasedOnRelationWithHOF(QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("familyHeadFlag", queFormBean.getLoopCounter()));
        if (str != null && str.equals(MorbiditiesConstant.ONE_PLUS)) {
            for (int i = 0; i < queFormBean.getLoopCounter(); i++) {
                String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.RELATION_WITH_HOF, i));
                if (FhsConstants.RELATION_HUSBAND.equals(str2)) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()), MorbiditiesConstant.TWO_PLUS);
                } else if (FhsConstants.RELATION_WIFE.equals(str2)) {
                    SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()), MorbiditiesConstant.ONE_PLUS);
                }
            }
            return;
        }
        String str3 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.RELATION_WITH_HOF, queFormBean.getLoopCounter()));
        if (str3 != null) {
            if (FhsConstants.MALE_RELATION.contains(str3)) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()), queFormBean.getOptions().get(0).getKey());
            } else if (FhsConstants.FEMALE_RELATION.contains(str3)) {
                SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()), queFormBean.getOptions().get(1).getKey());
            }
        }
    }

    public static void isUserOnline(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (SharedStructureData.sewaService.isOnline()) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void isMobileNumberVerfied(String[] strArr, QueFormBean queFormBean) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (strArr.length > 2) {
            try {
                int loopCounter = queFormBean.getLoopCounter();
                String str = strArr[1];
                String str2 = strArr[2];
                if (loopCounter > 0) {
                    str = str + loopCounter;
                    str2 = str2 + loopCounter;
                }
                String str3 = SharedStructureData.relatedPropertyHashTable.get(str);
                String strReplace = SharedStructureData.relatedPropertyHashTable.get(str2);
                if (strReplace != null) {
                    strReplace = strReplace.replace("F/", "");
                }
                if (str3 == null || (memberBeanRetrieveMemberBeanByActualId = SharedStructureData.sewaFhsService.retrieveMemberBeanByActualId(Long.valueOf(Long.parseLong(str3)))) == null || memberBeanRetrieveMemberBeanByActualId.getMobileNumber() == null || !memberBeanRetrieveMemberBeanByActualId.getMobileNumber().equals(strReplace) || !Boolean.TRUE.equals(memberBeanRetrieveMemberBeanByActualId.getMobileNumberVerified())) {
                    return;
                }
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
            } catch (Exception e) {
                Log.e(TAG, null, e);
            }
        }
    }

    public static void isMobileNumberVerificationBlocked(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (Boolean.TRUE.equals(SharedStructureData.isMobileVerificationBlocked)) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void setOTPBasedVerificationComponent(QueFormBean queFormBean) {
        QueFormBean queFormBean2;
        LinearLayout linearLayout;
        String next = queFormBean.getNext();
        if (next == null || (queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(DynamicUtils.getLoopId(Integer.parseInt(next), queFormBean.getLoopCounter())))) == null || (linearLayout = (LinearLayout) queFormBean2.getQuestionUIFrame()) == null) {
            return;
        }
        TextView textView = (TextView) linearLayout.findViewById(R.id.mobileText);
        String relatedpropertyname = queFormBean.getRelatedpropertyname();
        if (queFormBean.getLoopCounter() > 0) {
            relatedpropertyname = relatedpropertyname + queFormBean.getLoopCounter();
        }
        String strTrim = textView.getText().toString().trim();
        String str = SharedStructureData.relatedPropertyHashTable.get(relatedpropertyname);
        if (str != null) {
            String strReplace = str.replace("F/", "");
            if (strReplace.equalsIgnoreCase(strTrim)) {
                return;
            }
            if (strTrim.length() != 0) {
                Button button = (Button) linearLayout.findViewById(R.id.resetBtn);
                button.performClick();
                button.setPressed(true);
                button.invalidate();
                button.setPressed(false);
                button.invalidate();
            }
            textView.setText(strReplace);
            linearLayout.requestLayout();
            queFormBean2.setAnswer(null);
        }
    }

    public static void checkAnyMemberOtpVerificationDone(QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (Boolean.TRUE.equals(SharedStructureData.isAnyMemberMobileVerificationDone)) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        }
    }

    public static void calculateRUTFSachets(String[] strArr, QueFormBean queFormBean) {
        String strCountSachets;
        TextView textView;
        if (strArr.length >= 3) {
            String relatedpropertyname = queFormBean.getRelatedpropertyname();
            String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
            String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
            float f = (str == null || str.equals("T")) ? 0.0f : Float.parseFloat(str);
            if (str2 != null) {
                strCountSachets = countSachets(Float.valueOf(f), Integer.parseInt(str2), str3);
            } else {
                strCountSachets = countSachets(Float.valueOf(f), 0, str3);
            }
            SharedStructureData.relatedPropertyHashTable.put(relatedpropertyname, strCountSachets);
            QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(strArr[4]));
            if (queFormBean2 == null || (textView = (TextView) queFormBean2.getQuestionTypeView()) == null) {
                return;
            }
            textView.setText(strCountSachets);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String countSachets(java.lang.Float r5, int r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.countSachets(java.lang.Float, int, java.lang.String):java.lang.String");
    }

    public static void setSchoolType(QueFormBean queFormBean) {
        QueFormBean queFormBean2;
        View viewFindViewById;
        String next = queFormBean.getNext();
        if (next == null || (queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(DynamicUtils.getLoopId(Integer.parseInt(next), queFormBean.getLoopCounter())))) == null || queFormBean2.getQuestionUIFrame() == null || (viewFindViewById = ((LinearLayout) queFormBean2.getQuestionUIFrame()).findViewById(IdConstants.SCHOOL_COMPONENT_RESET_BUTTON_ID)) == null) {
            return;
        }
        viewFindViewById.performClick();
    }

    public static void setOnsiteBeneficiaryDisplay(QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get("firstName");
        String str2 = SharedStructureData.relatedPropertyHashTable.get("middleName");
        String str3 = SharedStructureData.relatedPropertyHashTable.get("lastName");
        StringBuilder sb = new StringBuilder();
        if (str != null && !str.trim().isEmpty()) {
            sb.append(str.trim());
        }
        if (str2 != null && !str2.trim().isEmpty()) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str2.trim());
        }
        if (str3 != null && !str3.trim().isEmpty()) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str3.trim());
        }
        String string = sb.toString();
        if (!string.isEmpty()) {
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, string);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.MEMBER_NAME, string);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG, string);
        }
        String str4 = SharedStructureData.relatedPropertyHashTable.get("dob");
        if (str4 != null) {
            try {
                Date date = new Date(Long.parseLong(str4));
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DOB_DISPLAY, new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(date));
                String ageDisplayOnGivenDate = UtilBean.getAgeDisplayOnGivenDate(date, new Date());
                if (ageDisplayOnGivenDate != null) {
                    SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.AGE_DISPLAY, ageDisplayOnGivenDate);
                }
            } catch (NumberFormatException e) {
                Log.e(TAG, "Invalid onsite dob value: " + str4, e);
            }
        }
    }

    public static void reapplyOptionalIfUnder18() {
        Iterator<QueFormBean> it = SharedStructureData.mapIndexQuestion.values().iterator();
        while (it.hasNext()) {
            MyDynamicComponents.relaxMandatoryIfUnder18(it.next());
        }
    }

    public static void checkContainsAnyLoop(String[] strArr, QueFormBean queFormBean) {
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        if (strArr.length <= 2 || strArr[2].trim().isEmpty()) {
            return;
        }
        for (int i = 0; i <= SharedStructureData.loopBakCounter; i++) {
            String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArr[2], i));
            if (str != null && str.equals(strArr[1])) {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            }
        }
    }

    public static void checkIfIsFemale(String[] strArr, QueFormBean queFormBean) {
        if (Objects.equals(SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter("gender", queFormBean.getLoopCounter()), queFormBean.getOptions().get(1).getKey()), "F")) {
            queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        } else {
            queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
            queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        }
    }

    public static void getFullName(String[] strArr) {
        SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.DISPLAY_FULL_NAME_NEW_MEMBER, String.format("%s %s %s", SharedStructureData.relatedPropertyHashTable.get(strArr[1]), SharedStructureData.relatedPropertyHashTable.get(strArr[2]), SharedStructureData.relatedPropertyHashTable.get(strArr[3])));
    }

    public static void displayHighRiskData(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        String highRiskStringFromList;
        TextView textView;
        if (strArr.length <= 1) {
            return;
        }
        if (strArr.length > 2) {
            highRiskStringFromList = getHighRiskStringFromList(strArr[2]);
        } else {
            highRiskStringFromList = getHighRiskStringFromList(" ");
        }
        if (queFormBean.getRelatedpropertyname() != null && !queFormBean.getRelatedpropertyname().isEmpty()) {
            SharedStructureData.relatedPropertyHashTable.put(UtilBean.getRelatedPropertyNameWithLoopCounter(queFormBean.getRelatedpropertyname(), queFormBean.getLoopCounter()), highRiskStringFromList);
        }
        int loopId = Integer.parseInt(strArr[1]);
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            loopId = DynamicUtils.getLoopId(loopId, queFormBean.getLoopCounter());
        }
        QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(loopId));
        if (queFormBean2 == null || (textView = (TextView) queFormBean2.getQuestionTypeView()) == null) {
            return;
        }
        TextView instructionsView = queFormBean2.getInstructionsView();
        if (instructionsView == null) {
            instructionsView = MyStaticComponents.generateInstructionView(textView.getContext(), UtilBean.getMyLabel(RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT));
            queFormBean2.setInstructionsView(instructionsView);
        }
        if (SharedStructureData.highRiskConditions.isEmpty() && SharedStructureData.highRiskConditionsChild.isEmpty()) {
            instructionsView.setText(UtilBean.getMyLabel(RchConstants.NO_RISK_IDENTIFIED_IN_THIS_VISIT));
            textView.setText("");
        } else {
            instructionsView.setText(UtilBean.getMyLabel(RchConstants.HIGH_RISK_IDENTIFIED_INSTRUCTION));
            textView.setText(highRiskStringFromList);
        }
        queFormBean2.setAnswer(highRiskStringFromList);
    }

    private static String getHighRiskStringFromList(String str) {
        HashSet<String> hashSet;
        if (str.equalsIgnoreCase("child")) {
            hashSet = new HashSet(SharedStructureData.highRiskConditionsChild);
        } else {
            hashSet = new HashSet(SharedStructureData.highRiskConditions);
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String str2 : hashSet) {
            if (i != 0) {
                sb.append(LabelConstants.NEW_LINE);
            }
            sb.append(str2);
            i++;
        }
        return sb.toString();
    }

    public static void checkReferal(String[] strArr, QueFormBean queFormBean) {
        if (new HashSet(SharedStructureData.highRiskConditions).isEmpty()) {
            if (new HashSet(SharedStructureData.highRiskConditionsChild).isEmpty()) {
                queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
                return;
            } else {
                queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
                queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
                return;
            }
        }
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void compareProperties(java.lang.String[] r8, com.argusoft.sewa.android.app.datastructure.QueFormBean r9) throws java.lang.NumberFormatException {
        /*
            int r0 = r8.length
            r1 = 4
            if (r0 != r1) goto Lc6
            r0 = 1
            r1 = r8[r0]
            java.util.Map<java.lang.String, java.lang.String> r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            r3 = 2
            r4 = r8[r3]
            java.lang.Object r2 = r2.get(r4)
            java.lang.String r2 = (java.lang.String) r2
            java.util.Map<java.lang.String, java.lang.String> r4 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            r5 = 3
            r8 = r8[r5]
            java.lang.Object r8 = r4.get(r8)
            java.lang.String r8 = (java.lang.String) r8
            java.util.List r4 = r9.getOptions()
            java.lang.Object r4 = r4.get(r0)
            com.argusoft.sewa.android.app.databean.OptionTagBean r4 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r4
            java.lang.String r4 = r4.getNext()
            r9.setNext(r4)
            java.util.List r4 = r9.getOptions()
            java.lang.Object r4 = r4.get(r0)
            com.argusoft.sewa.android.app.databean.OptionTagBean r4 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r4
            java.lang.String r4 = r4.getKey()
            r9.setAnswer(r4)
            if (r2 == 0) goto Lc6
            if (r8 == 0) goto Lc6
            int r2 = java.lang.Integer.parseInt(r2)
            int r8 = java.lang.Integer.parseInt(r8)
            r1.hashCode()
            int r4 = r1.hashCode()
            r6 = 0
            r7 = -1
            switch(r4) {
                case 3294: goto L78;
                case 3307: goto L6f;
                case 3449: goto L64;
                case 3463: goto L59;
                default: goto L57;
            }
        L57:
            r0 = -1
            goto L82
        L59:
            java.lang.String r0 = "ls"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L62
            goto L57
        L62:
            r0 = 3
            goto L82
        L64:
            java.lang.String r0 = "le"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L6d
            goto L57
        L6d:
            r0 = 2
            goto L82
        L6f:
            java.lang.String r3 = "gr"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L82
            goto L57
        L78:
            java.lang.String r0 = "ge"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L81
            goto L57
        L81:
            r0 = 0
        L82:
            switch(r0) {
                case 0: goto La2;
                case 1: goto L9f;
                case 2: goto L9c;
                case 3: goto L99;
                default: goto L85;
            }
        L85:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Invalid comparison operator: "
            r9.<init>(r0)
            r9.append(r1)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        L99:
            if (r2 >= r8) goto Lc6
            goto La4
        L9c:
            if (r2 > r8) goto Lc6
            goto La4
        L9f:
            if (r2 <= r8) goto Lc6
            goto La4
        La2:
            if (r2 < r8) goto Lc6
        La4:
            java.util.List r8 = r9.getOptions()
            java.lang.Object r8 = r8.get(r6)
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8
            java.lang.String r8 = r8.getNext()
            r9.setNext(r8)
            java.util.List r8 = r9.getOptions()
            java.lang.Object r8 = r8.get(r6)
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8
            java.lang.String r8 = r8.getKey()
            r9.setAnswer(r8)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.compareProperties(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x004b, code lost:
    
        if (r1 < r4) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void differenceInAge(java.lang.String[] r8, com.argusoft.sewa.android.app.datastructure.QueFormBean r9) throws java.lang.NumberFormatException {
        /*
            java.util.Map<java.lang.String, java.lang.String> r0 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            java.lang.String r1 = "dob"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            java.util.Map<java.lang.String, java.lang.String> r1 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            r2 = 1
            r3 = r8[r2]
            java.lang.Object r1 = r1.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            r3 = 2
            r4 = r8[r3]
            r5 = 3
            r8 = r8[r5]
            java.lang.String r5 = "greaterthan"
            boolean r8 = r8.equalsIgnoreCase(r5)
            r5 = 0
            long r6 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L93
            long r0 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L93
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: java.lang.NumberFormatException -> L93
            int[] r0 = com.argusoft.sewa.android.app.util.UtilBean.calculateAgeYearMonthDayOnGivenDate(r6, r0)     // Catch: java.lang.NumberFormatException -> L93
            r1 = r0[r5]     // Catch: java.lang.NumberFormatException -> L93
            int r1 = r1 * 365
            r6 = r0[r2]     // Catch: java.lang.NumberFormatException -> L93
            int r6 = r6 * 30
            int r1 = r1 + r6
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L93
            int r1 = r1 + r0
            if (r8 == 0) goto L4b
            if (r1 < r4) goto L70
            goto L4d
        L4b:
            if (r1 >= r4) goto L70
        L4d:
            java.util.List r8 = r9.getOptions()     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Object r8 = r8.get(r5)     // Catch: java.lang.NumberFormatException -> L93
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8     // Catch: java.lang.NumberFormatException -> L93
            java.lang.String r8 = r8.getNext()     // Catch: java.lang.NumberFormatException -> L93
            r9.setNext(r8)     // Catch: java.lang.NumberFormatException -> L93
            java.util.List r8 = r9.getOptions()     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Object r8 = r8.get(r5)     // Catch: java.lang.NumberFormatException -> L93
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8     // Catch: java.lang.NumberFormatException -> L93
            java.lang.String r8 = r8.getKey()     // Catch: java.lang.NumberFormatException -> L93
            r9.setAnswer(r8)     // Catch: java.lang.NumberFormatException -> L93
            return
        L70:
            java.util.List r8 = r9.getOptions()     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Object r8 = r8.get(r2)     // Catch: java.lang.NumberFormatException -> L93
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8     // Catch: java.lang.NumberFormatException -> L93
            java.lang.String r8 = r8.getNext()     // Catch: java.lang.NumberFormatException -> L93
            r9.setNext(r8)     // Catch: java.lang.NumberFormatException -> L93
            java.util.List r8 = r9.getOptions()     // Catch: java.lang.NumberFormatException -> L93
            java.lang.Object r8 = r8.get(r2)     // Catch: java.lang.NumberFormatException -> L93
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8     // Catch: java.lang.NumberFormatException -> L93
            java.lang.String r8 = r8.getKey()     // Catch: java.lang.NumberFormatException -> L93
            r9.setAnswer(r8)     // Catch: java.lang.NumberFormatException -> L93
            return
        L93:
            r8 = move-exception
            java.lang.String r0 = "HiddenQuestionFormula"
            r1 = 0
            android.util.Log.e(r0, r1, r8)
            java.util.List r8 = r9.getOptions()
            java.lang.Object r8 = r8.get(r5)
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8
            java.lang.String r8 = r8.getNext()
            r9.setNext(r8)
            java.util.List r8 = r9.getOptions()
            java.lang.Object r8 = r8.get(r5)
            com.argusoft.sewa.android.app.databean.OptionTagBean r8 = (com.argusoft.sewa.android.app.databean.OptionTagBean) r8
            java.lang.String r8 = r8.getKey()
            r9.setAnswer(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.HiddenQuestionFormulaUtil.differenceInAge(java.lang.String[], com.argusoft.sewa.android.app.datastructure.QueFormBean):void");
    }

    public static void calculateNutritionScore(String[] strArr, QueFormBean queFormBean) throws NumberFormatException {
        String str;
        if (strArr.length >= 3) {
            int i = 0;
            for (int i2 = 1; i2 < strArr.length - 1; i2++) {
                String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[i2]);
                if (str2 != null && !str2.isEmpty()) {
                    try {
                        i += Integer.parseInt(str2.split(GlobalTypes.KEY_VALUE_SEPARATOR)[0].trim());
                    } catch (Exception unused) {
                    }
                }
            }
            if (i >= 12 && i <= 14) {
                str = "Normal nutritional status";
            } else if (i >= 8 && i <= 11) {
                str = "At risk of malnutrition";
            } else {
                str = "Malnourished";
            }
            String str3 = strArr[strArr.length - 1];
            SharedStructureData.relatedPropertyHashTable.put(str3, String.valueOf(i));
            queFormBean.setAnswer(String.valueOf(i));
            try {
                QueFormBean queFormBean2 = SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(str3)));
                if (queFormBean2 != null) {
                    queFormBean2.setAnswer(String.valueOf(i));
                    TextView textView = (TextView) queFormBean2.getQuestionTypeView();
                    if (textView != null) {
                        textView.setText(i + " (" + str + ")");
                    }
                }
            } catch (NumberFormatException unused2) {
            }
        }
    }

    public static void identifyHighRiskNPCB(String[] strArr) {
        TextView textView;
        int i;
        String[] strArr2;
        String[] strArr3;
        if (strArr == null || strArr.length < 2) {
            return;
        }
        try {
            QueFormBean question = getQuestion(strArr[1]);
            QueFormBean question2 = strArr.length > 2 ? getQuestion(strArr[2]) : null;
            QueFormBean question3 = strArr.length > 3 ? getQuestion(strArr[3]) : null;
            if (question == null) {
                return;
            }
            SharedStructureData.relatedPropertyHashTable.put("eyeProblems", String.valueOf(question.getAnswer()));
            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(8889);
            if (queFormBean == null || (textView = (TextView) queFormBean.getQuestionTypeView()) == null) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            String answer = getAnswer(question);
            if (answer == null || "NONE".equalsIgnoreCase(answer)) {
                i = 1;
            } else {
                String[] strArrSplit = answer.split(GlobalTypes.COMMA);
                int length = strArrSplit.length;
                int i2 = 0;
                int i3 = 1;
                while (i2 < length) {
                    String str = strArrSplit[i2];
                    if ("NONE".equalsIgnoreCase(str.trim())) {
                        strArr2 = strArrSplit;
                    } else {
                        String[] strArrSplit2 = str.toLowerCase().replace("_", " ").split(" ");
                        StringBuilder sb2 = new StringBuilder();
                        int length2 = strArrSplit2.length;
                        int i4 = 0;
                        while (i4 < length2) {
                            int i5 = length2;
                            String str2 = strArrSplit2[i4];
                            if (str2.isEmpty()) {
                                strArr3 = strArrSplit;
                            } else {
                                strArr3 = strArrSplit;
                                sb2.append(Character.toUpperCase(str2.charAt(0)));
                                sb2.append(str2.substring(1));
                                sb2.append(" ");
                            }
                            i4++;
                            length2 = i5;
                            strArrSplit = strArr3;
                        }
                        strArr2 = strArrSplit;
                        sb.append(i3);
                        sb.append(". ");
                        sb.append(UtilBean.getMyLabel(sb2.toString().trim()));
                        sb.append(LabelConstants.NEW_LINE);
                        i3++;
                    }
                    i2++;
                    strArrSplit = strArr2;
                }
                i = i3;
            }
            if ("F".equalsIgnoreCase(getAnswer(question2))) {
                sb.append(i);
                sb.append(". ");
                sb.append(UtilBean.getMyLabel("Large letter visibility issue"));
                sb.append(LabelConstants.NEW_LINE);
                i++;
            }
            if ("T".equalsIgnoreCase(getAnswer(question2)) && "F".equalsIgnoreCase(getAnswer(question3))) {
                sb.append(i);
                sb.append(". ");
                sb.append(UtilBean.getMyLabel("Multiple letter visibility issue"));
            }
            textView.setText(sb.toString().trim());
        } catch (NumberFormatException e) {
            Log.e(TAG, null, e);
        }
    }

    private static QueFormBean getQuestion(String str) {
        return SharedStructureData.mapIndexQuestion.get(Integer.valueOf(Integer.parseInt(str)));
    }

    private static String getAnswer(QueFormBean queFormBean) {
        if (queFormBean == null || queFormBean.getAnswer() == null) {
            return null;
        }
        return queFormBean.getAnswer().toString().trim();
    }

    public static void makePrescriptionCard(String[] strArr) {
        WebView webView;
        if (strArr == null || strArr.length < 2) {
            return;
        }
        try {
            QueFormBean queFormBean = SharedStructureData.mapIndexQuestion.get(8889);
            String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            String str2 = strArr.length > 2 ? SharedStructureData.relatedPropertyHashTable.get(strArr[2]) : null;
            String str3 = strArr.length > 3 ? SharedStructureData.relatedPropertyHashTable.get(strArr[3]) : null;
            String str4 = strArr.length > 4 ? SharedStructureData.relatedPropertyHashTable.get(strArr[4]) : null;
            StringBuilder sb = new StringBuilder();
            appendVisionData(sb, "Near Vision RE", str);
            appendVisionData(sb, "Near Vision LE", str2);
            appendVisionData(sb, "Distant Vision RE", str3);
            appendVisionData(sb, "Distant Vision LE", str4);
            String strTrim = sb.toString().replace(GlobalTypes.BEAN_SEPARATOR, " | ").trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String visionDataString = FormMetaDataUtil.formatVisionDataString(strTrim);
            SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.PRESCRIPTION_CARD, visionDataString);
            if (queFormBean == null || (webView = getWebView(queFormBean)) == null) {
                return;
            }
            webView.loadDataWithBaseURL(null, visionDataString, "text/html", "UTF-8", null);
        } catch (Exception e) {
            Log.e(TAG, "Error generating prescription card", e);
        }
    }

    private static WebView getWebView(QueFormBean queFormBean) {
        View view = (View) queFormBean.getQuestionTypeView();
        if (view instanceof WebView) {
            return (WebView) view;
        }
        if (view instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) view;
            for (int i = 0; i < linearLayout.getChildCount(); i++) {
                if (linearLayout.getChildAt(i) instanceof WebView) {
                    return (WebView) linearLayout.getChildAt(i);
                }
            }
        }
        return null;
    }

    public static void appendVisionData(StringBuilder sb, String str, String str2) {
        if (str2 == null || str2.trim().isEmpty()) {
            return;
        }
        sb.append(str);
        sb.append(" ->\n");
        sb.append(str2.trim());
        sb.append("\n\n");
    }

    public static void visionCheckFormula(String[] strArr, QueFormBean queFormBean) {
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
        String str4 = SharedStructureData.relatedPropertyHashTable.get(strArr[4]);
        queFormBean.setNext(queFormBean.getOptions().get(1).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(1).getKey());
        List listAsList = Arrays.asList("N/9", "N/6");
        List listAsList2 = Arrays.asList("6/12", "6/9", "6/6");
        if ((str == null || listAsList.contains(str)) && ((str2 == null || listAsList.contains(str2)) && ((str3 == null || listAsList2.contains(str3)) && (str4 == null || listAsList2.contains(str4))))) {
            return;
        }
        queFormBean.setNext(queFormBean.getOptions().get(0).getNext());
        queFormBean.setAnswer(queFormBean.getOptions().get(0).getKey());
    }
}
