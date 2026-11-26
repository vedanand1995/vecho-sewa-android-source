package com.argusoft.sewa.android.app.util;

import android.preference.PreferenceManager;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ValidationFormulaUtil {
    private ValidationFormulaUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static String alphanumericWithSpace(String str, ValidationTagBean validationTagBean) {
        if (UtilBean.isAlphaNumericWithSpace(str)) {
            return null;
        }
        if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
            return validationTagBean.getMessage();
        }
        return "Must alphanumeric and space";
    }

    public static String isFutureDate(String[] strArr, String str, ValidationTagBean validationTagBean) {
        long j;
        try {
            try {
                if (strArr.length > 2) {
                    int i = 1;
                    if (strArr[1] != null && strArr[2] != null) {
                        String[] strArrSplit = UtilBean.split(str.trim(), strArr[1].trim());
                        try {
                            i = Integer.parseInt(strArr[2].trim());
                        } catch (NumberFormatException unused) {
                        }
                        if (strArrSplit.length > i) {
                            j = Long.parseLong(strArrSplit[i].trim());
                        } else {
                            j = Long.parseLong(str.trim());
                        }
                    } else {
                        j = Long.parseLong(str.trim());
                    }
                } else {
                    j = Long.parseLong(str.trim());
                }
            } catch (NumberFormatException unused2) {
                j = 0;
            }
            if (!UtilBean.isFutureDate(j)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return "Invalid Date";
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return "Invalid Date";
        }
    }

    public static String isFutureDeliveryTime(String[] strArr, String str, ValidationTagBean validationTagBean) {
        try {
            if (strArr.length <= 0 || !UtilBean.isToday(Long.parseLong(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_DATE)))) {
                return null;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
            try {
                if (simpleDateFormat.parse(str).after(simpleDateFormat.parse(simpleDateFormat.format(new Date())))) {
                    return validationTagBean.getMessage();
                }
                return null;
            } catch (ParseException unused) {
                return LabelConstants.INVALID_VALUE;
            }
        } catch (Exception unused2) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String isPastDate(String[] strArr, String str, ValidationTagBean validationTagBean) {
        long j;
        try {
            if (strArr.length > 2) {
                int i = 1;
                if (strArr[1] != null && strArr[2] != null) {
                    String[] strArrSplit = UtilBean.split(str.trim(), strArr[1].trim());
                    try {
                        i = Integer.parseInt(strArr[2].trim());
                    } catch (Exception unused) {
                    }
                    if (strArrSplit.length > i) {
                        j = Long.parseLong(strArrSplit[i].trim());
                    } else {
                        j = Long.parseLong(str.trim());
                    }
                } else {
                    j = Long.parseLong(str.trim());
                }
            } else {
                j = Long.parseLong(str.trim());
            }
        } catch (Exception unused2) {
            j = 0;
        }
        try {
            if (!UtilBean.isPastDate(j)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return "Invalid Date";
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return "Invalid Date";
        }
    }

    public static String isNotToday(String[] strArr, String str, ValidationTagBean validationTagBean) {
        long j;
        try {
            if (strArr.length > 2) {
                int i = 1;
                if (strArr[1] != null && strArr[2] != null) {
                    String[] strArrSplit = UtilBean.split(str.trim(), strArr[1].trim());
                    try {
                        i = Integer.parseInt(strArr[2].trim());
                    } catch (Exception unused) {
                    }
                    if (strArrSplit.length > i) {
                        j = Long.parseLong(strArrSplit[i].trim());
                    } else {
                        j = Long.parseLong(str.trim());
                    }
                } else {
                    j = Long.parseLong(str.trim());
                }
            } else {
                j = Long.parseLong(str.trim());
            }
        } catch (Exception unused2) {
            j = 0;
        }
        try {
            if (!UtilBean.isToday(j)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return "Invalid Date";
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return "Invalid Date";
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:20:0x0054
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String isDateIn(java.lang.String[] r8, java.lang.String r9, com.argusoft.sewa.android.app.databean.ValidationTagBean r10) {
        /*
            java.lang.String r0 = "Invalid Date"
            r1 = 0
            r3 = 5
            r4 = 6
            int r5 = r8.length     // Catch: java.lang.Exception -> L54
            if (r5 <= r4) goto L4b
            r5 = r8[r3]     // Catch: java.lang.Exception -> L54
            if (r5 == 0) goto L42
            r5 = r8[r4]     // Catch: java.lang.Exception -> L54
            if (r5 == 0) goto L42
            java.lang.String r5 = r9.trim()     // Catch: java.lang.Exception -> L54
            r6 = r8[r3]     // Catch: java.lang.Exception -> L54
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L54
            java.lang.String[] r5 = com.argusoft.sewa.android.app.util.UtilBean.split(r5, r6)     // Catch: java.lang.Exception -> L54
            r6 = r8[r4]     // Catch: java.lang.Exception -> L2a
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L2a
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> L2a
            goto L2b
        L2a:
            r6 = 1
        L2b:
            int r7 = r5.length     // Catch: java.lang.Exception -> L54
            if (r7 <= r6) goto L39
            r9 = r5[r6]     // Catch: java.lang.Exception -> L54
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L39:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L42:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L4b:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L54:
            r5 = r1
        L55:
            int r9 = r8.length     // Catch: java.lang.Exception -> L8a
            if (r9 != r4) goto L68
            java.util.Map<java.lang.String, java.lang.String> r9 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable     // Catch: java.lang.Exception -> L8a
            r3 = r8[r3]     // Catch: java.lang.Exception -> L8a
            java.lang.Object r9 = r9.get(r3)     // Catch: java.lang.Exception -> L8a
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L8a
            if (r9 == 0) goto L68
            long r1 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L8a
        L68:
            boolean r8 = com.argusoft.sewa.android.app.util.UtilBean.isDateIn(r5, r8, r1)     // Catch: java.lang.Exception -> L8a
            if (r8 != 0) goto L88
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            if (r8 == 0) goto L87
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            java.lang.String r8 = r8.trim()     // Catch: java.lang.Exception -> L8a
            int r8 = r8.length()     // Catch: java.lang.Exception -> L8a
            if (r8 <= 0) goto L87
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            return r8
        L87:
            return r0
        L88:
            r8 = 0
            return r8
        L8a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.isDateIn(java.lang.String[], java.lang.String, com.argusoft.sewa.android.app.databean.ValidationTagBean):java.lang.String");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:20:0x0054
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String isDateOut(java.lang.String[] r8, java.lang.String r9, com.argusoft.sewa.android.app.databean.ValidationTagBean r10) {
        /*
            java.lang.String r0 = "Invalid Date"
            r1 = 0
            r3 = 5
            r4 = 6
            int r5 = r8.length     // Catch: java.lang.Exception -> L54
            if (r5 <= r4) goto L4b
            r5 = r8[r3]     // Catch: java.lang.Exception -> L54
            if (r5 == 0) goto L42
            r5 = r8[r4]     // Catch: java.lang.Exception -> L54
            if (r5 == 0) goto L42
            java.lang.String r5 = r9.trim()     // Catch: java.lang.Exception -> L54
            r6 = r8[r3]     // Catch: java.lang.Exception -> L54
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L54
            java.lang.String[] r5 = com.argusoft.sewa.android.app.util.UtilBean.split(r5, r6)     // Catch: java.lang.Exception -> L54
            r6 = r8[r4]     // Catch: java.lang.Exception -> L2a
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L2a
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> L2a
            goto L2b
        L2a:
            r6 = 1
        L2b:
            int r7 = r5.length     // Catch: java.lang.Exception -> L54
            if (r7 <= r6) goto L39
            r9 = r5[r6]     // Catch: java.lang.Exception -> L54
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L39:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L42:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L4b:
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Exception -> L54
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L54
            goto L55
        L54:
            r5 = r1
        L55:
            int r9 = r8.length     // Catch: java.lang.Exception -> L8a
            if (r9 != r4) goto L68
            java.util.Map<java.lang.String, java.lang.String> r9 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable     // Catch: java.lang.Exception -> L8a
            r3 = r8[r3]     // Catch: java.lang.Exception -> L8a
            java.lang.Object r9 = r9.get(r3)     // Catch: java.lang.Exception -> L8a
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L8a
            if (r9 == 0) goto L68
            long r1 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Exception -> L8a
        L68:
            boolean r8 = com.argusoft.sewa.android.app.util.UtilBean.isDateOut(r5, r8, r1)     // Catch: java.lang.Exception -> L8a
            if (r8 != 0) goto L88
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            if (r8 == 0) goto L87
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            java.lang.String r8 = r8.trim()     // Catch: java.lang.Exception -> L8a
            int r8 = r8.length()     // Catch: java.lang.Exception -> L8a
            if (r8 <= 0) goto L87
            java.lang.String r8 = r10.getMessage()     // Catch: java.lang.Exception -> L8a
            return r8
        L87:
            return r0
        L88:
            r8 = 0
            return r8
        L8a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.isDateOut(java.lang.String[], java.lang.String, com.argusoft.sewa.android.app.databean.ValidationTagBean):java.lang.String");
    }

    public static String comapreDateWithGivenDate(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        String str3;
        String str4 = strArr[1];
        if (str4 == null || str4.trim().length() <= 0) {
            return null;
        }
        if (i > 0) {
            strArr[1] = strArr[1] + i;
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str5 == null || str5.trim().length() <= 0) {
            return null;
        }
        try {
            long j = Long.parseLong(str5);
            if (strArr.length == 4 && (str2 = strArr[2]) != null && str2.trim().length() > 0 && (str3 = strArr[3]) != null && str3.trim().length() > 0) {
                String[] strArrSplit = str.split(strArr[2]);
                int i2 = Integer.parseInt(strArr[3]);
                if (strArrSplit.length > i2) {
                    str = strArrSplit[i2];
                }
            }
            long j2 = Long.parseLong(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j2);
            long timeInMillis = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j);
            long timeInMillis2 = UtilBean.clearTimeFromDate(calendar2).getTimeInMillis();
            if (timeInMillis < timeInMillis2) {
                return validationTagBean.getMessage().contains("$s") ? String.format(validationTagBean.getMessage(), new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(Long.valueOf(timeInMillis2))) : validationTagBean.getMessage();
            }
            return null;
        } catch (Exception unused) {
            return "Invalid Date";
        }
    }

    public static String comapreDateWithGivenDateAfter(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        String str3;
        String str4 = strArr[1];
        if (str4 == null || str4.trim().length() <= 0) {
            return null;
        }
        if (i > 0) {
            strArr[1] = strArr[1] + i;
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str5 == null || str5.trim().length() <= 0) {
            return null;
        }
        try {
            long j = Long.parseLong(str5);
            if (strArr.length == 4 && (str2 = strArr[2]) != null && str2.trim().length() > 0 && (str3 = strArr[3]) != null && str3.trim().length() > 0) {
                String[] strArrSplit = str.split(strArr[2]);
                int i2 = Integer.parseInt(strArr[3]);
                if (strArrSplit.length > i2) {
                    str = strArrSplit[i2];
                }
            }
            long j2 = Long.parseLong(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j2);
            long timeInMillis = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j);
            if (timeInMillis > UtilBean.clearTimeFromDate(calendar2).getTimeInMillis()) {
                return validationTagBean.getMessage();
            }
            return null;
        } catch (Exception unused) {
            return "Invalid Date";
        }
    }

    public static String comapreDateBefore(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        long j;
        String str2;
        String str3;
        String str4 = strArr[1];
        if (str4 == null || str4.trim().length() <= 0) {
            return null;
        }
        if (i > 0) {
            strArr[1] = strArr[1] + i;
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str5 == null || str5.trim().length() <= 0) {
            return null;
        }
        try {
            long j2 = Long.parseLong(str5);
            if (strArr.length == 4 && (str2 = strArr[2]) != null && str2.trim().length() > 0 && (str3 = strArr[3]) != null && str3.trim().length() > 0) {
                String[] strArrSplit = str.split(strArr[2]);
                int i2 = Integer.parseInt(strArr[3]);
                if (strArrSplit.length > i2) {
                    str = strArrSplit[i2];
                }
            }
            if (str.indexOf(84) > -1) {
                j = Long.parseLong(str.substring(2));
            } else {
                j = Long.parseLong(str);
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            long timeInMillis = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j2);
            if (timeInMillis <= UtilBean.clearTimeFromDate(calendar2).getTimeInMillis()) {
                return validationTagBean.getMessage();
            }
            return null;
        } catch (Exception unused) {
            return "Invalid Date";
        }
    }

    public static String comapreDateAfter(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        String str3;
        String str4 = strArr[1];
        if (str4 == null || str4.trim().length() <= 0) {
            return null;
        }
        if (i > 0) {
            strArr[1] = strArr[1] + i;
        }
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str5 == null || str5.trim().length() <= 0) {
            return null;
        }
        try {
            long j = Long.parseLong(str5);
            if (strArr.length == 4 && (str2 = strArr[2]) != null && str2.trim().length() > 0 && (str3 = strArr[3]) != null && str3.trim().length() > 0) {
                String[] strArrSplit = str.split(strArr[2]);
                int i2 = Integer.parseInt(strArr[3]);
                if (strArrSplit.length > i2) {
                    str = strArrSplit[i2];
                }
            }
            long j2 = Long.parseLong(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j2);
            long timeInMillis = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j);
            if (timeInMillis >= UtilBean.clearTimeFromDate(calendar2).getTimeInMillis()) {
                return validationTagBean.getMessage();
            }
            return null;
        } catch (Exception unused) {
            return "Invalid Date";
        }
    }

    public static String compareDateBetween(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        String str3 = strArr[1];
        if (str3 == null || str3.trim().isEmpty() || (str2 = strArr[2]) == null || str2.trim().isEmpty()) {
            return null;
        }
        if (i > 0) {
            strArr[1] = strArr[1] + i;
            strArr[2] = strArr[2] + i;
        }
        String str4 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        if (str4 == null || str4.trim().isEmpty() || str5 == null || str5.trim().isEmpty()) {
            return null;
        }
        try {
            long j = Long.parseLong(str);
            long j2 = Long.parseLong(str4);
            long j3 = Long.parseLong(str5);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            long timeInMillis = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            calendar.setTimeInMillis(j2);
            long timeInMillis2 = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            calendar.setTimeInMillis(j3);
            long timeInMillis3 = UtilBean.clearTimeFromDate(calendar).getTimeInMillis();
            if (timeInMillis < timeInMillis2 || timeInMillis > timeInMillis3) {
                return validationTagBean.getMessage();
            }
            return null;
        } catch (Exception unused) {
            return "Invalid Date";
        }
    }

    public static String containsCharacterPipeline(String str, ValidationTagBean validationTagBean) {
        if (str == null || !str.contains(GlobalTypes.BEAN_SEPARATOR)) {
            return null;
        }
        if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
            return validationTagBean.getMessage();
        }
        return GlobalTypes.MSG_VALIDATION_PIPELINE_MSG;
    }

    public static String greaterThen0(String str, ValidationTagBean validationTagBean) {
        float f;
        String message;
        try {
            try {
                f = Float.parseFloat(str.trim());
            } catch (Exception unused) {
                return "Number is not greater than 0";
            }
        } catch (NumberFormatException unused2) {
            f = 0.0f;
        }
        if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_GREATER_THAN, f, 0.0f)) {
            message = null;
        } else {
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return "Number is not greater than 0";
            }
            message = validationTagBean.getMessage();
        }
        return message;
    }

    public static String greaterThan(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        float f2 = 0.0f;
        try {
            try {
                f = Float.parseFloat(str.trim());
            } catch (Exception unused) {
                return LabelConstants.INVALID_VALUE;
            }
        } catch (NumberFormatException unused2) {
            f = 0.0f;
        }
        String str2 = strArr[1];
        if (str2 != null && str2.length() > 0) {
            try {
                f2 = Float.parseFloat(strArr[1].trim());
            } catch (NumberFormatException unused3) {
            }
        }
        if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_GREATER_THAN, f, f2)) {
            return null;
        }
        if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
            return LabelConstants.INVALID_VALUE;
        }
        return validationTagBean.getMessage();
    }

    public static String greaterThanEq(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str2 = strArr[1];
            if (str2 != null && str2.length() > 0) {
                try {
                    f2 = Float.parseFloat(strArr[1].trim());
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_GREATER_THAN_EQUAL, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String lessThan(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str2 = strArr[1];
            if (str2 != null && str2.length() > 0) {
                try {
                    f2 = Float.parseFloat(strArr[1].trim());
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_LESS_THAN, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String lessThanEq(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str2 = strArr[1];
            if (str2 != null && str2.length() > 0) {
                try {
                    f2 = Float.parseFloat(strArr[1].trim());
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_LESS_THAN_EQUAL, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String lessThanEqRelatedProperty(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        String str2;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str3 = strArr[1];
            if (str3 != null && str3.length() > 0 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
                try {
                    f2 = Float.parseFloat(str2);
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_LESS_THAN_EQUAL, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String between(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        float f2;
        float f3 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String[] strArrSplit = UtilBean.split(strArr[1], GlobalTypes.COMMA);
            if (strArrSplit.length == 2) {
                try {
                    float f4 = Float.parseFloat(strArrSplit[0].trim());
                    f2 = Float.parseFloat(strArrSplit[1].trim());
                    f3 = f4;
                } catch (Exception unused2) {
                }
            } else {
                f2 = 0.0f;
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_GREATER_THAN_EQUAL, f, f3) && UtilBean.isValidNumber(FormulaConstants.VALIDATION_LESS_THAN_EQUAL, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String greaterThanRelatedProperty(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        String str2;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str3 = strArr[1];
            if (str3 != null && str3.length() > 0 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
                try {
                    f2 = Float.parseFloat(str2);
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_GREATER_THAN, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String lessThanRelatedProperty(String[] strArr, String str, ValidationTagBean validationTagBean) {
        float f;
        String str2;
        float f2 = 0.0f;
        try {
            f = Float.parseFloat(str.trim());
        } catch (Exception unused) {
            f = 0.0f;
        }
        try {
            String str3 = strArr[1];
            if (str3 != null && str3.length() > 0 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
                try {
                    f2 = Float.parseFloat(str2);
                } catch (Exception unused2) {
                }
            }
            if (UtilBean.isValidNumber(FormulaConstants.VALIDATION_LESS_THAN, f, f2)) {
                return null;
            }
            if (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().length() <= 0) {
                return LabelConstants.INVALID_VALUE;
            }
            return validationTagBean.getMessage();
        } catch (Exception unused3) {
            return LabelConstants.INVALID_VALUE;
        }
    }

    public static String checkInputLength(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (strArr.length <= 1 || strArr[1] == null || str.split("").length - 1 >= Integer.parseInt(strArr[1])) {
            return null;
        }
        if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
            return validationTagBean.getMessage();
        }
        return LabelConstants.INVALID_VALUE;
    }

    public static String checkEmail(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (!CommonUtil.isEmailValid(str)) {
            return (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().isEmpty()) ? LabelConstants.INVALID_VALUE : validationTagBean.getMessage();
        }
        if (strArr.length <= 1 || strArr[1] == null || str.length() >= Integer.parseInt(strArr[1])) {
            return null;
        }
        return (validationTagBean.getMessage() == null || validationTagBean.getMessage().trim().isEmpty()) ? LabelConstants.INVALID_VALUE : validationTagBean.getMessage();
    }

    public static String mobileNumber(String[] strArr, String str, ValidationTagBean validationTagBean) {
        String str2 = null;
        if (strArr.length > 1 && !strArr[1].equals("10")) {
            if (str.trim().length() == Integer.parseInt(strArr[1])) {
                return null;
            }
            if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
                return validationTagBean.getMessage();
            }
            return LabelConstants.INVALID_VALUE;
        }
        if (str.trim().length() != 10) {
            return "Mobile number must contain 10 digits.";
        }
        if (String.valueOf(str.charAt(0)).matches("[012345]")) {
            if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
                return validationTagBean.getMessage();
            }
            str2 = "Mobile number can't start from 0 to 5";
        }
        if (SharedStructureData.sewaFhsService.getMobileNumberCount(str) > 3) {
            str2 = "Mobile number is already registered with other family. Please enter another number.";
        }
        return UtilBean.getBlockedMobileNumbers().contains(str) ? "The mobile number is blocked. Please enter another number" : str2;
    }

    public static String mobileNumberFormat(String str) {
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.length() != 10) {
            return "Mobile number must contain 10 digits.";
        }
        if (String.valueOf(strTrim.charAt(0)).matches("[012345]")) {
            return "Mobile number can't start from 0 to 5";
        }
        return null;
    }

    public static String inputLengthRange(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (strArr.length > 1) {
            String[] strArrSplit = strArr[1].split(GlobalTypes.COMMA);
            if (strArrSplit.length == 2) {
                int i = Integer.parseInt(strArrSplit[0]);
                int i2 = Integer.parseInt(strArrSplit[1]);
                if (str.trim().length() < i || str.trim().length() > i2) {
                    if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
                        return validationTagBean.getMessage();
                    }
                    return LabelConstants.INVALID_VALUE;
                }
            }
        }
        return null;
    }

    public static String maxLength(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (str.trim().length() <= Integer.parseInt(strArr[1])) {
            return null;
        }
        if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
            return validationTagBean.getMessage();
        }
        return LabelConstants.INVALID_VALUE;
    }

    public static String length(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (str.trim().length() == Integer.parseInt(strArr[1])) {
            return null;
        }
        if (validationTagBean.getMessage() != null && validationTagBean.getMessage().trim().length() > 0) {
            return validationTagBean.getMessage();
        }
        return LabelConstants.INVALID_VALUE;
    }

    public static String onlyOneHead(ValidationTagBean validationTagBean) {
        String str;
        String str2;
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_FOUND);
        if (str3 == null || !str3.equals(MorbiditiesConstant.ONE_PLUS)) {
            return null;
        }
        if (SharedStructureData.loopBakCounter == 0) {
            String str4 = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag");
            if (str4 == null || !str4.equals(MorbiditiesConstant.TWO_PLUS)) {
                return null;
            }
            return UtilBean.getMyLabel("Please select atleast one head of the family");
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < SharedStructureData.loopBakCounter + 1; i3++) {
            if (i3 == 0) {
                str = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag");
                str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS);
            } else {
                str = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag" + i3);
                str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS + i3);
            }
            if ((str2 == null && str != null && str.equals(MorbiditiesConstant.ONE_PLUS)) || (str != null && str2 != null && str.equals(MorbiditiesConstant.ONE_PLUS) && str2.equals(MorbiditiesConstant.ONE_PLUS))) {
                i++;
            }
            if (str2 != null && str2.equals(MorbiditiesConstant.THREE_PLUS)) {
                i2++;
            }
        }
        if (i == 1 || i2 == SharedStructureData.totalFamilyMembersCount.intValue()) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    public static String allMembersArchiveCheck(String[] strArr, ValidationTagBean validationTagBean) {
        String str;
        if (strArr.length != 3) {
            return null;
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_FOUND);
        String str3 = SharedStructureData.relatedPropertyHashTable.get("familyId");
        if ((str2 == null || !str2.equals(MorbiditiesConstant.ONE_PLUS)) && str3 == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < SharedStructureData.loopBakCounter + 1; i2++) {
            if (i2 == 0) {
                str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            } else {
                str = SharedStructureData.relatedPropertyHashTable.get(strArr[1] + i2);
            }
            if (str != null && str.equals(strArr[2])) {
                i++;
            }
        }
        if (i != SharedStructureData.totalVerifiedFamilyMembersCount.intValue() || SharedStructureData.totalVerifiedFamilyMembersCount.intValue() == 0) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    public static String checkHeadMemberAge(ValidationTagBean validationTagBean) {
        String str;
        String str2;
        String str3;
        String str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_FOUND);
        if (str4 != null && str4.equals(MorbiditiesConstant.ONE_PLUS)) {
            String str5 = null;
            for (int i = 0; i < SharedStructureData.loopBakCounter + 1; i++) {
                if (i == 0) {
                    str = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag");
                    str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS);
                    str3 = SharedStructureData.relatedPropertyHashTable.get("dob");
                } else {
                    str = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag" + i);
                    str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.MEMBER_STATUS + i);
                    str3 = SharedStructureData.relatedPropertyHashTable.get("dob" + i);
                }
                if ((str2 == null && str != null && str.equals(MorbiditiesConstant.ONE_PLUS)) || (str != null && str2 != null && str.equals(MorbiditiesConstant.ONE_PLUS) && str2.equals(MorbiditiesConstant.ONE_PLUS))) {
                    str5 = str3;
                }
            }
            if (str5 != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(1, -18);
                if (new Date(Long.parseLong(str5)).after(calendar.getTime())) {
                    return validationTagBean.getMessage();
                }
            }
        }
        return null;
    }

    public static String maritalStatusValidation(String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        if (i == 0) {
            str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.ANS_12);
        } else {
            str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.ANS_12 + i);
        }
        if (str2 == null) {
            return null;
        }
        if ((str2.equals(MorbiditiesConstant.ONE_PLUS) && str.equals("641")) || (str2.equals(MorbiditiesConstant.TWO_PLUS) && str.equals("643"))) {
            return validationTagBean.getMessage();
        }
        return null;
    }

    public static String checkHofRelationWithMaritalStatus(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        if (strArr.length > 1) {
            String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArr[1], i));
            if (str2 == null) {
                return null;
            }
            String str3 = strArr[1];
            str3.hashCode();
            if (!str3.equals(RelatedPropertyNameConstants.RELATION_WITH_HOF)) {
                if (str3.equals(RelatedPropertyNameConstants.ANS_12) && ((str2.equals(MorbiditiesConstant.ONE_PLUS) && str.equals("641")) || (str2.equals(MorbiditiesConstant.TWO_PLUS) && str.equals("643")))) {
                    return validationTagBean.getMessage();
                }
            } else if (!str.equals("629") && (FhsConstants.RELATION_WIFE.equals(str2) || FhsConstants.RELATION_HUSBAND.contains(str2))) {
                return validationTagBean.getMessage();
            }
        }
        return null;
    }

    public static String dobMaritalStatusValidation(String[] strArr, String str, int i, ValidationTagBean validationTagBean) {
        String str2;
        if (strArr.length > 1 && (str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(strArr[1], i))) != null && str != null) {
            String str3 = strArr[1];
            str3.hashCode();
            if (str3.equals("dob")) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(Long.parseLong(str2));
                UtilBean.clearTimeFromDate(calendar);
                Calendar calendar2 = Calendar.getInstance();
                UtilBean.clearTimeFromDate(calendar2);
                calendar2.add(1, -15);
                if (calendar.getTime().after(calendar2.getTime()) && !str.equals("630")) {
                    return validationTagBean.getMessage();
                }
            } else if (str3.equals(RelatedPropertyNameConstants.DEFAULT_MARITAL_STATUS)) {
                Calendar calendar3 = Calendar.getInstance();
                UtilBean.clearTimeFromDate(calendar3);
                calendar3.add(1, -15);
                Calendar calendar4 = Calendar.getInstance();
                calendar4.setTimeInMillis(Long.parseLong(str));
                UtilBean.clearTimeFromDate(calendar4);
                if (calendar4.getTime().after(calendar3.getTime()) && !str2.equals("630")) {
                    return validationTagBean.getMessage();
                }
            }
        }
        return null;
    }

    public static String villageSelectionCheck(String str, ValidationTagBean validationTagBean) {
        String str2 = SharedStructureData.relatedPropertyHashTable.get("locationId");
        if (str2 == null || !str2.equalsIgnoreCase(str)) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    public static String motherChildComponentValidation(String str, ValidationTagBean validationTagBean) {
        String str2 = SharedStructureData.relatedPropertyHashTable.get("numberOfMemberForMotherSelection");
        if (str2 == null) {
            return null;
        }
        int i = Integer.parseInt(str2);
        Map map = (Map) new Gson().fromJson(str, new TypeToken<HashMap<String, String>>() { // from class: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.1
        }.getType());
        if (i != map.size()) {
            return validationTagBean.getMessage();
        }
        for (Map.Entry entry : map.entrySet()) {
            if (((String) entry.getKey()).equals(entry.getValue())) {
                return UtilBean.getMyLabel("Mother and Child selection for a child is not valid.");
            }
        }
        return null;
    }

    public static String vaccinationValidationChild(String str) {
        Date date;
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_DATE);
        String str3 = SharedStructureData.relatedPropertyHashTable.get("dob");
        if (SharedStructureData.formType != null && ((SharedStructureData.formType.equals("FHW_WPD") || SharedStructureData.formType.equals("FHW_PNC")) && str2 != null)) {
            date = new Date(Long.parseLong(str2));
        } else {
            date = str3 != null ? new Date(Long.parseLong(str3)) : null;
        }
        if (date != null) {
            Date date2 = new Date(Long.parseLong(str));
            String string = PreferenceManager.getDefaultSharedPreferences(SharedStructureData.context).getString("currentVaccine", null);
            if (string != null) {
                return SharedStructureData.immunisationService.vaccinationValidationForChild(date, date2, string.trim(), SharedStructureData.vaccineGivenDateMap);
            }
        }
        return null;
    }

    public static String checkNumberFormatException(String str) {
        try {
            Long.parseLong(str);
            return null;
        } catch (NumberFormatException unused) {
            return str + UtilBean.getMyLabel(" is not a number.");
        }
    }

    public static String checkSingleECMemberFamily() {
        String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.FAMILY_FOUND);
        if (SharedStructureData.loopBakCounter != 0 || !MorbiditiesConstant.ONE_PLUS.equals(str)) {
            return null;
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get("dob");
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.ANS_12);
        String str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DEFAULT_MARITAL_STATUS);
        if (str2 == null) {
            return null;
        }
        Date date = new Date(Long.parseLong(str2));
        Calendar calendar = Calendar.getInstance();
        calendar.add(1, -15);
        Date time = calendar.getTime();
        calendar.add(1, -34);
        Date time2 = calendar.getTime();
        if (str3 != null && str3.equals(MorbiditiesConstant.TWO_PLUS) && str4 != null && str4.equals("629") && date.after(time2) && date.before(time)) {
            return UtilBean.getMyLabel("Single Eligible Couple Member cannot be added as a Family. Please enter the full family details. If this member belongs to another family, use the family update feature.");
        }
        return null;
    }

    public static String checkDaysGapDeliveryDate(String[] strArr, ValidationTagBean validationTagBean) {
        int i = strArr.length == 2 ? Integer.parseInt(strArr[1]) : 2;
        if (SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE_ID) != null && RchConstants.PHI_INSTITUTIONS_TYPE_ID_FOR_2_DAYS_DEL_GAP.contains(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE_ID))) {
            String str = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.DELIVERY_DATE);
            Calendar calendar = Calendar.getInstance();
            UtilBean.clearTimeFromDate(calendar);
            calendar.add(5, -i);
            if (str != null && calendar.getTime().getTime() < Long.parseLong(str)) {
                return validationTagBean.getMessage();
            }
        }
        return null;
    }

    public static String checkServiceDateForHealthInfra(String[] strArr, ValidationTagBean validationTagBean) {
        Date time;
        String str;
        String str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE_ID);
        if (str2 == null) {
            return null;
        }
        Date date = new Date();
        if (strArr.length > 1 && (str = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
            date = new Date(Long.parseLong(str));
        }
        int i = strArr.length > 2 ? Integer.parseInt(strArr[2]) : 15;
        int i2 = strArr.length > 3 ? Integer.parseInt(strArr[3]) : 30;
        if (RchConstants.GOVERNMENT_INSTITUTIONS.contains(Long.valueOf(str2))) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, i * (-1));
            time = calendar.getTime();
        } else {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(5, i2 * (-1));
            time = calendar2.getTime();
        }
        if (date.before(time)) {
            return validationTagBean.getMessage();
        }
        return null;
    }

    public static String checkServiceDateForHomeVisit(String[] strArr, String str, ValidationTagBean validationTagBean) {
        Date date;
        String str2;
        if (str.equalsIgnoreCase(RchConstants.HOSP)) {
            return null;
        }
        if (strArr.length > 1 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) != null) {
            date = new Date(Long.parseLong(str2));
        } else {
            date = new Date();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -15);
        if (date.before(calendar.getTime())) {
            return validationTagBean.getMessage();
        }
        return null;
    }

    public static String checkIntegerPlus(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (strArr.length <= 1) {
            return null;
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        if (str2 == null) {
            return null;
        }
        if (Integer.parseInt(str) < Integer.parseInt(str2)) {
            return validationTagBean.getMessage();
        }
        return null;
    }

    public static String familyPlanningDateValidation(String[] strArr, String str, ValidationTagBean validationTagBean) {
        Calendar calendar;
        Date time;
        Date date;
        String str2;
        if (strArr.length > 1) {
            String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            if (str3 != null) {
                calendar = Calendar.getInstance();
                if (strArr.length > 2 && (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2])) != null && !str2.equalsIgnoreCase(LabelConstants.NULL)) {
                    calendar.setTimeInMillis(Long.parseLong(str2));
                }
                time = calendar.getTime();
                date = new Date(Long.parseLong(str));
                str3.hashCode();
                switch (str3) {
                    case "IUCD10":
                        calendar.add(1, -10);
                        if (date.before(calendar.getTime()) || date.after(time)) {
                            return validationTagBean.getMessage();
                        }
                        break;
                    case "PAIUCD":
                        if (strArr.length > 3) {
                            String str4 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
                            if (str4 != null && !str4.equalsIgnoreCase(LabelConstants.NULL)) {
                                calendar.setTimeInMillis(Long.parseLong(str4));
                                Date time2 = calendar.getTime();
                                calendar.add(5, 12);
                                if (date.after(calendar.getTime()) || date.before(time2)) {
                                    return validationTagBean.getMessage();
                                }
                            } else {
                                return validationTagBean.getMessage();
                            }
                        }
                        break;
                    case "PPIUCD":
                        if (strArr.length > 3) {
                            String str5 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
                            if (str5 != null && !str5.equalsIgnoreCase(LabelConstants.NULL)) {
                                calendar.setTimeInMillis(Long.parseLong(str5));
                                Date time3 = calendar.getTime();
                                calendar.add(5, 2);
                                if (date.after(calendar.getTime()) || date.before(time3)) {
                                    return validationTagBean.getMessage();
                                }
                            } else {
                                return validationTagBean.getMessage();
                            }
                        }
                        break;
                    case "IUCD5":
                        calendar.add(1, -5);
                        if (date.before(calendar.getTime()) || date.after(time)) {
                            return validationTagBean.getMessage();
                        }
                        break;
                    case "ANTARA":
                        calendar.add(2, -3);
                        Date time4 = calendar.getTime();
                        if (date.after(time) || date.before(time4)) {
                            return validationTagBean.getMessage();
                        }
                        break;
                    default:
                        return null;
                }
            }
        }
        return null;
    }

    public static String checkGivenSachets(String[] strArr, String str, ValidationTagBean validationTagBean) {
        if (strArr.length == 2 && str != null) {
            String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
            if (str2 == null) {
                return null;
            }
            if (Integer.parseInt(str) > Integer.parseInt(str2)) {
                return validationTagBean.getMessage();
            }
            return null;
        }
        return UtilBean.getMyLabel("Please enter valid given sachets.");
    }

    public static String checkConsumedSachets(String[] strArr, String str, ValidationTagBean validationTagBean) {
        String str2;
        if (strArr.length != 2 || str == null || (str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[1])) == null || Integer.parseInt(str2) >= Integer.parseInt(str)) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String checkHofRelationWithGender(java.lang.String[] r10, java.lang.String r11, int r12, com.argusoft.sewa.android.app.databean.ValidationTagBean r13) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.checkHofRelationWithGender(java.lang.String[], java.lang.String, int, com.argusoft.sewa.android.app.databean.ValidationTagBean):java.lang.String");
    }

    public static String isMemberHof(String str, ValidationTagBean validationTagBean) {
        if (str == null || !str.equals(MorbiditiesConstant.ONE_PLUS)) {
            return null;
        }
        String str2 = SharedStructureData.relatedPropertyHashTable.get("familyHeadFlag");
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CAN_ARCHIVE_HOF_MEMBER);
        if (str2 == null || !str2.equals(MorbiditiesConstant.ONE_PLUS) || str3 == null || !str3.equals(MorbiditiesConstant.TWO_PLUS)) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    public static String isOnlyEnglishText(String str, ValidationTagBean validationTagBean) {
        if (str == null || str.matches("^[a-zA-Z0-9\\s!@#$%^&*()-_=+{}|;:'\",.<>/?\\[\\]\\\\]+$")) {
            return null;
        }
        return validationTagBean.getMessage();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String validateRegex(java.lang.String[] r3, java.lang.String r4, com.argusoft.sewa.android.app.databean.ValidationTagBean r5) {
        /*
            int r0 = r3.length
            if (r0 <= 0) goto La4
            r0 = 1
            r3 = r3[r0]
            if (r3 == 0) goto La4
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r1)
            r3.hashCode()
            int r1 = r3.hashCode()
            r2 = -1
            switch(r1) {
                case -2000413939: goto L3a;
                case -1210506547: goto L31;
                case -1144011793: goto L26;
                case 68378893: goto L1b;
                default: goto L19;
            }
        L19:
            r0 = -1
            goto L44
        L1b:
            java.lang.String r0 = "letters"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L24
            goto L19
        L24:
            r0 = 3
            goto L44
        L26:
            java.lang.String r0 = "alphanumeric"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L2f
            goto L19
        L2f:
            r0 = 2
            goto L44
        L31:
            java.lang.String r1 = "alphabetic"
            boolean r3 = r3.equals(r1)
            if (r3 != 0) goto L44
            goto L19
        L3a:
            java.lang.String r0 = "numeric"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L43
            goto L19
        L43:
            r0 = 0
        L44:
            switch(r0) {
                case 0: goto L8d;
                case 1: goto L76;
                case 2: goto L5f;
                case 3: goto L48;
                default: goto L47;
            }
        L47:
            goto La4
        L48:
            java.lang.String r3 = "[0-9!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?]"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)
            java.util.regex.Matcher r3 = r3.matcher(r4)
            boolean r3 = r3.find()
            if (r3 == 0) goto La4
            java.lang.String r3 = "The value should not contain special characters or numbers"
            java.lang.String r3 = getValidationMessage(r5, r3)
            return r3
        L5f:
            java.lang.String r3 = "^[a-zA-Z0-9]*$"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)
            java.util.regex.Matcher r3 = r3.matcher(r4)
            boolean r3 = r3.matches()
            if (r3 != 0) goto La4
            java.lang.String r3 = "The value should contain alphabets and numbers only"
            java.lang.String r3 = getValidationMessage(r5, r3)
            return r3
        L76:
            java.lang.String r3 = "^[a-zA-Z]*$"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)
            java.util.regex.Matcher r3 = r3.matcher(r4)
            boolean r3 = r3.matches()
            if (r3 != 0) goto La4
            java.lang.String r3 = "The value should contain alphabets only"
            java.lang.String r3 = getValidationMessage(r5, r3)
            return r3
        L8d:
            java.lang.String r3 = "^[0-9]*$"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3)
            java.util.regex.Matcher r3 = r3.matcher(r4)
            boolean r3 = r3.matches()
            if (r3 != 0) goto La4
            java.lang.String r3 = "The value should contain numbers only"
            java.lang.String r3 = getValidationMessage(r5, r3)
            return r3
        La4:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.validateRegex(java.lang.String[], java.lang.String, com.argusoft.sewa.android.app.databean.ValidationTagBean):java.lang.String");
    }

    private static String getValidationMessage(ValidationTagBean validationTagBean, String str) {
        return (validationTagBean == null || validationTagBean.getMessage() == null || validationTagBean.getMessage().isEmpty()) ? str : validationTagBean.getMessage();
    }

    public static String validateSumAgainstProperty(String[] strArr, ValidationTagBean validationTagBean) {
        if (strArr.length < 4 || strArr[1] == null || strArr[2] == null || strArr[3] == null) {
            return null;
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(strArr[1]);
        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArr[2]);
        String str3 = SharedStructureData.relatedPropertyHashTable.get(strArr[3]);
        if (str == null || str2 == null || str3 == null) {
            return null;
        }
        if (Integer.parseInt(str) + Integer.parseInt(str2) > Integer.parseInt(str3)) {
            return validationTagBean.getMessage();
        }
        return null;
    }

    public static String checkIFSCCode(String str) {
        if (str != null) {
            if (str.length() != 11) {
                return UtilBean.getMyLabel("IFSC code should be 11 characters.");
            }
            String myLabel = !str.substring(0, 4).matches("[A-Z]{4}") ? UtilBean.getMyLabel("The first four characters for IFSC code must be uppercase letters.") : null;
            if (str.length() > 4 && str.charAt(4) != '0') {
                myLabel = UtilBean.getMyLabel("The fifth character for IFSC code must be 0.");
            }
            return (str.length() <= 5 || str.substring(5).matches("[A-Z0-9]{6}")) ? myLabel : UtilBean.getMyLabel("The last six characters for IFSC code must be uppercase letters or numbers.");
        }
        return UtilBean.getMyLabel("Please provide IFSC code.");
    }

    public static String checkImmunisationStockForTD(String str, ValidationTagBean validationTagBean) {
        String strCheckImmunisationStockAvailable;
        if (MorbiditiesConstant.ONE_PLUS.equals(str) && SharedStructureData.relatedPropertyHashTable.containsKey(RelatedPropertyNameConstants.SESSION_ID) && (strCheckImmunisationStockAvailable = SharedStructureData.routineImmunisationService.checkImmunisationStockAvailable(SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.SESSION_ID), RchConstants.TD1)) != null) {
            return validationTagBean.getMessage() != null ? validationTagBean.getMessage() : strCheckImmunisationStockAvailable;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String checkDate(java.lang.String[] r10, java.lang.String r11, int r12, com.argusoft.sewa.android.app.databean.ValidationTagBean r13) {
        /*
            r0 = 0
            if (r11 == 0) goto Le1
            boolean r1 = r11.isEmpty()
            if (r1 == 0) goto Lb
            goto Le1
        Lb:
            java.util.Date r1 = new java.util.Date
            long r2 = java.lang.Long.parseLong(r11)
            r1.<init>(r2)
            int r11 = r10.length
            r2 = 4
            if (r11 < r2) goto L42
            r11 = 2
            r11 = r10[r11]
            java.lang.String r3 = "loop"
            boolean r11 = r11.equalsIgnoreCase(r3)
            r3 = 3
            if (r11 == 0) goto L2c
            r11 = r10[r3]
            java.lang.String r11 = com.argusoft.sewa.android.app.util.UtilBean.getRelatedPropertyNameWithLoopCounter(r11, r12)
            r10[r3] = r11
        L2c:
            java.util.Map<java.lang.String, java.lang.String> r11 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            r12 = r10[r3]
            java.lang.Object r11 = r11.get(r12)
            java.lang.String r11 = (java.lang.String) r11
            if (r11 == 0) goto L42
            java.util.Date r12 = new java.util.Date
            long r3 = java.lang.Long.parseLong(r11)
            r12.<init>(r3)
            goto L43
        L42:
            r12 = r0
        L43:
            if (r12 == 0) goto La7
            int r11 = r10.length
            r3 = 8
            if (r11 != r3) goto La7
            r11 = r10[r2]
            java.lang.String r3 = "Add"
            boolean r11 = r11.equalsIgnoreCase(r3)
            r3 = 7
            r4 = 6
            r5 = 5
            if (r11 == 0) goto L77
            java.util.Date r11 = new java.util.Date
            long r6 = r12.getTime()
            r12 = r10[r5]
            int r12 = java.lang.Integer.parseInt(r12)
            r8 = r10[r4]
            int r8 = java.lang.Integer.parseInt(r8)
            r9 = r10[r3]
            int r9 = java.lang.Integer.parseInt(r9)
            long r6 = com.argusoft.sewa.android.app.util.UtilBean.addYearsMonthsDays(r6, r12, r8, r9)
            r11.<init>(r6)
            r12 = r11
        L77:
            r11 = r10[r2]
            java.lang.String r2 = "Sub"
            boolean r11 = r11.equalsIgnoreCase(r2)
            if (r11 == 0) goto La7
            java.util.Date r11 = new java.util.Date
            long r6 = r12.getTime()
            r12 = r10[r5]
            int r12 = java.lang.Integer.parseInt(r12)
            int r12 = r12 * (-1)
            r2 = r10[r4]
            int r2 = java.lang.Integer.parseInt(r2)
            int r2 = r2 * (-1)
            r3 = r10[r3]
            int r3 = java.lang.Integer.parseInt(r3)
            int r3 = r3 * (-1)
            long r2 = com.argusoft.sewa.android.app.util.UtilBean.addYearsMonthsDays(r6, r12, r2, r3)
            r11.<init>(r2)
            r12 = r11
        La7:
            java.util.Date r11 = com.argusoft.sewa.android.app.util.UtilBean.clearTimeFromDate(r12)
            java.util.Date r12 = com.argusoft.sewa.android.app.util.UtilBean.clearTimeFromDate(r1)
            if (r11 != 0) goto Lb2
            return r0
        Lb2:
            r1 = 1
            r2 = r10[r1]
            java.lang.String r3 = "after"
            boolean r2 = r2.equalsIgnoreCase(r3)
            if (r2 == 0) goto Lc3
            boolean r2 = r12.after(r11)
            if (r2 != 0) goto Ld3
        Lc3:
            r10 = r10[r1]
            java.lang.String r1 = "before"
            boolean r10 = r10.equalsIgnoreCase(r1)
            if (r10 == 0) goto Le1
            boolean r10 = r12.before(r11)
            if (r10 == 0) goto Le1
        Ld3:
            java.lang.String r10 = r13.getMessage()
            if (r10 == 0) goto Lde
            java.lang.String r10 = r13.getMessage()
            goto Le0
        Lde:
            java.lang.String r10 = "Selected date is not valid"
        Le0:
            return r10
        Le1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.ValidationFormulaUtil.checkDate(java.lang.String[], java.lang.String, int, com.argusoft.sewa.android.app.databean.ValidationTagBean):java.lang.String");
    }

    public static String aadhaarNumber(String str) {
        String strOptString;
        if (str == null) {
            return null;
        }
        if (SharedStructureData.ACTIVE_CTBA_QUESTION_ID != null) {
            try {
                strOptString = new JSONObject(str).optString(FormulaConstants.VALIDATION_AADHAAR_NUMBER, "");
            } catch (Exception unused) {
                return "Invalid Aadhaar data";
            }
        } else {
            strOptString = str.trim();
        }
        if (!Pattern.compile("^[0-9]{12}$").matcher(strOptString).matches()) {
            return "Aadhaar ID must contain 12 digit numbers only";
        }
        int[][] iArr = {new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new int[]{1, 2, 3, 4, 0, 6, 7, 8, 9, 5}, new int[]{2, 3, 4, 0, 1, 7, 8, 9, 5, 6}, new int[]{3, 4, 0, 1, 2, 8, 9, 5, 6, 7}, new int[]{4, 0, 1, 2, 3, 9, 5, 6, 7, 8}, new int[]{5, 9, 8, 7, 6, 0, 4, 3, 2, 1}, new int[]{6, 5, 9, 8, 7, 1, 0, 4, 3, 2}, new int[]{7, 6, 5, 9, 8, 2, 1, 0, 4, 3}, new int[]{8, 7, 6, 5, 9, 3, 2, 1, 0, 4}, new int[]{9, 8, 7, 6, 5, 4, 3, 2, 1, 0}};
        int[][] iArr2 = {new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new int[]{1, 5, 7, 6, 2, 8, 3, 0, 9, 4}, new int[]{5, 8, 0, 3, 7, 9, 6, 1, 4, 2}, new int[]{8, 9, 1, 6, 0, 4, 3, 5, 2, 7}, new int[]{9, 4, 5, 3, 1, 2, 6, 8, 7, 0}, new int[]{4, 2, 8, 6, 5, 7, 3, 9, 0, 1}, new int[]{2, 7, 9, 3, 8, 0, 6, 4, 1, 5}, new int[]{7, 0, 4, 6, 9, 1, 3, 2, 5, 8}};
        int length = strOptString.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = iArr[i][iArr2[i2 % 8][Integer.parseInt(strOptString.charAt((length - i2) - 1) + "")]];
        }
        if (i != 0) {
            return "Please enter valid aadhaar number";
        }
        return null;
    }
}
