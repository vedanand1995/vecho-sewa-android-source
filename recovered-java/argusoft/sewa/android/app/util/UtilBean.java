package com.argusoft.sewa.android.app.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.BulletSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyArrayAdapter;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormConstants;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.LocationConstants;
import com.argusoft.sewa.android.app.constants.NotificationConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.SewaFhsService;
import com.argusoft.sewa.android.app.databean.AdolescentDataBean;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LabelBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.UserBean;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.regex.Pattern;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.Months;
import org.joda.time.Period;
import org.joda.time.PeriodType;
import org.joda.time.Weeks;
import org.joda.time.Years;
import org.joda.time.format.PeriodFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UtilBean {
    public static final long DAY_LONG_VALUE = 86400000;
    public static final long HOUR_LONG_VALUE = 3600000;
    public static final long MINUTE_LONG_VALUE = 60000;
    public static final Comparator<String> VACCINATION_COMPARATOR;
    private static final Map<String, Integer> VACCINATION_SORT_MAP;
    private static final Map<String, String> VISIT_DURATION_MAP_FOR_AMRUTPAN;
    public static final long YEAR_LONG_VALUE = 31536000000L;
    public static MyAlertDialog dialogForExit;
    private static Map<String, String> dosageHashTable;
    private static Map<String, String> entityFullFormNames;
    private static Map<String, String> malnutritionGradeMapBoy;
    private static Map<String, String> malnutritionGradeMapGirl;
    public static final JsonSerializer<Date> JSON_DATE_SERIALIZER = new JsonSerializer() { // from class: com.argusoft.sewa.android.app.util.UtilBean$$ExternalSyntheticLambda0
        @Override // com.google.gson.JsonSerializer
        public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
            return UtilBean.lambda$static$0((Date) obj, type, jsonSerializationContext);
        }
    };
    public static final JsonDeserializer<Date> JSON_DATE_DESERIALIZER = new JsonDeserializer() { // from class: com.argusoft.sewa.android.app.util.UtilBean$$ExternalSyntheticLambda1
        @Override // com.google.gson.JsonDeserializer
        public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            return UtilBean.lambda$static$1(jsonElement, type, jsonDeserializationContext);
        }
    };

    public static float calculateYearsBetweenDates(long j, long j2) {
        return (j - j2) / 3.1536E10f;
    }

    public static float fahrenheitToCelsius(float f) {
        return ((f - 32.0f) * 5.0f) / 9.0f;
    }

    public static long getMilliSeconds(int i, int i2, int i3) {
        return ((i * 365) + (i2 * 30) + i3) * DAY_LONG_VALUE;
    }

    public static boolean isNotInGivenRange(int i, int i2, int i3) {
        return i > i2 && i < i3;
    }

    private UtilBean() {
        throw new IllegalStateException("Utility Class");
    }

    static {
        HashMap map = new HashMap();
        VACCINATION_SORT_MAP = map;
        map.put(RchConstants.HEPATITIS_B_0, 1);
        map.put(RchConstants.VITAMIN_K, 2);
        map.put("BCG", 3);
        map.put(RchConstants.OPV_0, 4);
        map.put(RchConstants.OPV_1, 5);
        map.put(RchConstants.ROTA_VIRUS_1, 6);
        map.put(RchConstants.PENTA_1, 7);
        map.put(RchConstants.DPT_1, 8);
        map.put(RchConstants.F_IPV_1_01, 9);
        map.put(RchConstants.OPV_2, 10);
        map.put(RchConstants.ROTA_VIRUS_2, 11);
        map.put(RchConstants.PENTA_2, 12);
        map.put(RchConstants.DPT_2, 13);
        map.put(RchConstants.OPV_3, 14);
        map.put(RchConstants.ROTA_VIRUS_3, 15);
        map.put(RchConstants.PENTA_3, 16);
        map.put(RchConstants.DPT_3, 17);
        map.put(RchConstants.F_IPV_2_01, 18);
        map.put(RchConstants.F_IPV_2_05, 19);
        map.put(RchConstants.MEASLES_RUBELLA_1, 20);
        map.put(RchConstants.MEASLES_RUBELLA_2, 21);
        map.put(RchConstants.OPV_BOOSTER, 22);
        map.put(RchConstants.DPT_BOOSTER, 23);
        map.put(RchConstants.DPT_BOOSTER_2, 24);
        map.put(RchConstants.VITAMIN_A_1, 25);
        map.put(RchConstants.VITAMIN_A_2, 26);
        map.put(RchConstants.VITAMIN_A_3, 27);
        map.put(RchConstants.VITAMIN_A_4, 28);
        map.put(RchConstants.VITAMIN_A_5, 29);
        map.put(RchConstants.VITAMIN_A_6, 30);
        map.put(RchConstants.VITAMIN_A_7, 31);
        map.put(RchConstants.VITAMIN_A_8, 32);
        map.put(RchConstants.VITAMIN_A_9, 33);
        map.put(RchConstants.TD_10, 34);
        map.put(RchConstants.TD_16, 35);
        VACCINATION_COMPARATOR = new Comparator() { // from class: com.argusoft.sewa.android.app.util.UtilBean$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return UtilBean.lambda$static$2((String) obj, (String) obj2);
            }
        };
        HashMap map2 = new HashMap();
        VISIT_DURATION_MAP_FOR_AMRUTPAN = map2;
        map2.put(MorbiditiesConstant.ONE_PLUS, "3 days");
        map2.put(MorbiditiesConstant.TWO_PLUS, "7 days");
        map2.put(MorbiditiesConstant.THREE_PLUS, "14 days");
        map2.put(MorbiditiesConstant.FOUR_PLUS, "1.5 months");
        map2.put("5", "3.5 months");
        map2.put("6", "5 months");
        map2.put("7", "6 months");
        map2.put("8", "6.5 months");
        map2.put("9", "7.5 months");
        map2.put("10", "9 months");
        map2.put("11", "12 months");
        map2.put("12", "15 months");
        map2.put("13", "18 months");
        map2.put("14", "24 months");
    }

    static /* synthetic */ JsonElement lambda$static$0(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        if (date == null) {
            return null;
        }
        return new JsonPrimitive(Long.valueOf(date.getTime()));
    }

    static /* synthetic */ Date lambda$static$1(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement == null) {
            return null;
        }
        try {
            return new Date(jsonElement.getAsLong());
        } catch (Exception unused) {
            try {
                return new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_4).parse(jsonElement.getAsString());
            } catch (ParseException unused2) {
                try {
                    return new SimpleDateFormat("MMM dd, yyyy, hh:mm:ss a").parse(jsonElement.getAsString());
                } catch (ParseException unused3) {
                    try {
                        return new SimpleDateFormat("MMM dd, yyyy hh:mm:ss a").parse(jsonElement.getAsString());
                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
    }

    static /* synthetic */ int lambda$static$2(String str, String str2) {
        Map<String, Integer> map = VACCINATION_SORT_MAP;
        Integer num = map.get(str);
        Integer num2 = map.get(str2);
        if (num == null || num2 == null) {
            return 0;
        }
        return num.compareTo(num2);
    }

    public static Map<String, String> getMalnutritionGradeMapForBOYS() {
        if (malnutritionGradeMapBoy == null) {
            HashMap map = new HashMap();
            malnutritionGradeMapBoy = map;
            map.put("0", "2.1~2.5");
            malnutritionGradeMapBoy.put(MorbiditiesConstant.ONE_PLUS, "3.0~3.5");
            malnutritionGradeMapBoy.put(MorbiditiesConstant.TWO_PLUS, "3.8~4.3");
            malnutritionGradeMapBoy.put(MorbiditiesConstant.THREE_PLUS, "4.5~5.0");
            malnutritionGradeMapBoy.put(MorbiditiesConstant.FOUR_PLUS, "4.9~5.6");
            malnutritionGradeMapBoy.put("5", "5.3~6.0");
            malnutritionGradeMapBoy.put("6", "5.7~6.4");
            malnutritionGradeMapBoy.put("7", "5.9~6.7");
            malnutritionGradeMapBoy.put("8", "6.2~6.9");
            malnutritionGradeMapBoy.put("9", "6.4~7.1");
            malnutritionGradeMapBoy.put("10", "6.6~7.3");
            malnutritionGradeMapBoy.put("11", "6.8~7.5");
            malnutritionGradeMapBoy.put("12", "6.9~7.7");
            malnutritionGradeMapBoy.put("13", "7.1~7.9");
            malnutritionGradeMapBoy.put("14", "7.2~8.1");
            malnutritionGradeMapBoy.put("15", "7.4~8.2");
            malnutritionGradeMapBoy.put("16", "7.5~8.4");
            malnutritionGradeMapBoy.put("17", "7.6~8.6");
            malnutritionGradeMapBoy.put("18", "7.8~8.8");
            malnutritionGradeMapBoy.put("19", "8.0~8.9");
            malnutritionGradeMapBoy.put("20", "8.1~9.1");
            malnutritionGradeMapBoy.put("21", "8.3~9.2");
            malnutritionGradeMapBoy.put("22", "8.3~9.4");
            malnutritionGradeMapBoy.put("23", "8.4~9.5");
            malnutritionGradeMapBoy.put("24", "8.5~9.7");
            malnutritionGradeMapBoy.put("25", "8.6~9.8");
            malnutritionGradeMapBoy.put("26", "8.8~10.0");
            malnutritionGradeMapBoy.put("27", "9.0~10.1");
            malnutritionGradeMapBoy.put("28", "9.1~10.2");
            malnutritionGradeMapBoy.put("29", "9.2~10.3");
            malnutritionGradeMapBoy.put("30", "9.3~10.5");
            malnutritionGradeMapBoy.put("31", "9.4~10.6");
            malnutritionGradeMapBoy.put("32", "9.5~10.7");
            malnutritionGradeMapBoy.put("33", "9.7~10.9");
            malnutritionGradeMapBoy.put("34", "9.8~11.0");
            malnutritionGradeMapBoy.put("35", "9.9~11.1");
            malnutritionGradeMapBoy.put("36", "10.0~11.3");
            malnutritionGradeMapBoy.put("37", "10.1~11.4");
            malnutritionGradeMapBoy.put("38", "10.2~11.5");
            malnutritionGradeMapBoy.put("39", "10.3~11.6");
            malnutritionGradeMapBoy.put("40", "10.4~11.7");
            malnutritionGradeMapBoy.put("41", "10.5~11.9");
            malnutritionGradeMapBoy.put(RoomMasterTable.DEFAULT_ID, "10.6~12.0");
            malnutritionGradeMapBoy.put("43", "10.7~12.1");
            malnutritionGradeMapBoy.put("44", "10.8~12.2");
            malnutritionGradeMapBoy.put("45", "10.9~12.3");
            malnutritionGradeMapBoy.put("46", "11.0~12.5");
            malnutritionGradeMapBoy.put("47", "11.1~12.6");
            malnutritionGradeMapBoy.put("48", "11.2~12.7");
            malnutritionGradeMapBoy.put("49", "11.3~12.8");
            malnutritionGradeMapBoy.put("50", "11.4~12.9");
            malnutritionGradeMapBoy.put("51", "11.5~13.0");
            malnutritionGradeMapBoy.put("52", "11.6~13.1");
            malnutritionGradeMapBoy.put("53", "11.7~13.3");
            malnutritionGradeMapBoy.put("54", "11.8~13.4");
            malnutritionGradeMapBoy.put("55", "11.9~13.5");
            malnutritionGradeMapBoy.put("56", "12.0~13.6");
            malnutritionGradeMapBoy.put("57", "12.1~13.7");
            malnutritionGradeMapBoy.put("58", "12.2~13.8");
            malnutritionGradeMapBoy.put("59", "12.3~13.9");
            malnutritionGradeMapBoy.put("60", "12.4~14.1");
        }
        return malnutritionGradeMapBoy;
    }

    public static Map<String, String> getMalnutritionGradeMapForGIRLS() {
        if (malnutritionGradeMapGirl == null) {
            HashMap map = new HashMap();
            malnutritionGradeMapGirl = map;
            map.put("0", "2.0~2.4");
            malnutritionGradeMapGirl.put(MorbiditiesConstant.ONE_PLUS, "2.7~3.1");
            malnutritionGradeMapGirl.put(MorbiditiesConstant.TWO_PLUS, "3.4~3.9");
            malnutritionGradeMapGirl.put(MorbiditiesConstant.THREE_PLUS, "4.0~4.5");
            malnutritionGradeMapGirl.put(MorbiditiesConstant.FOUR_PLUS, "4.4~5.0");
            malnutritionGradeMapGirl.put("5", "4.8~5.4");
            malnutritionGradeMapGirl.put("6", "5.1~5.7");
            malnutritionGradeMapGirl.put("7", "5.3~6.0");
            malnutritionGradeMapGirl.put("8", "5.6~6.4");
            malnutritionGradeMapGirl.put("9", "5.8~6.5");
            malnutritionGradeMapGirl.put("10", "5.9~6.7");
            malnutritionGradeMapGirl.put("11", "6.1~6.9");
            malnutritionGradeMapGirl.put("12", "6.2~7.0");
            malnutritionGradeMapGirl.put("13", "6.4~7.2");
            malnutritionGradeMapGirl.put("14", "6.5~7.4");
            malnutritionGradeMapGirl.put("15", "6.7~7.6");
            malnutritionGradeMapGirl.put("16", "6.8~7.8");
            malnutritionGradeMapGirl.put("17", "7.0~7.9");
            malnutritionGradeMapGirl.put("18", "7.2~8.1");
            malnutritionGradeMapGirl.put("19", "7.3~8.2");
            malnutritionGradeMapGirl.put("20", "7.5~8.4");
            malnutritionGradeMapGirl.put("21", "7.6~8.6");
            malnutritionGradeMapGirl.put("22", "7.7~8.7");
            malnutritionGradeMapGirl.put("23", "7.9~8.9");
            malnutritionGradeMapGirl.put("24", "8.0~9.0");
            malnutritionGradeMapGirl.put("25", "8.2~9.2");
            malnutritionGradeMapGirl.put("26", "8.3~9.4");
            malnutritionGradeMapGirl.put("27", "8.5~9.5");
            malnutritionGradeMapGirl.put("28", "8.6~9.7");
            malnutritionGradeMapGirl.put("29", "8.8~9.8");
            malnutritionGradeMapGirl.put("30", "8.9~10.0");
            malnutritionGradeMapGirl.put("31", "9.0~10.1");
            malnutritionGradeMapGirl.put("32", "9.2~10.3");
            malnutritionGradeMapGirl.put("33", "9.3~10.4");
            malnutritionGradeMapGirl.put("34", "9.4~10.5");
            malnutritionGradeMapGirl.put("35", "9.5~10.7");
            malnutritionGradeMapGirl.put("36", "9.6~10.8");
            malnutritionGradeMapGirl.put("37", "9.7~11.0");
            malnutritionGradeMapGirl.put("38", "9.8~11.1");
            malnutritionGradeMapGirl.put("39", "9.9~11.2");
            malnutritionGradeMapGirl.put("40", "10.0~11.4");
            malnutritionGradeMapGirl.put("41", "10.2~11.5");
            malnutritionGradeMapGirl.put(RoomMasterTable.DEFAULT_ID, "10.3~11.6");
            malnutritionGradeMapGirl.put("43", "10.4~11.8");
            malnutritionGradeMapGirl.put("44", "10.5~11.9");
            malnutritionGradeMapGirl.put("45", "10.6~12.0");
            malnutritionGradeMapGirl.put("46", "10.7~12.1");
            malnutritionGradeMapGirl.put("47", "10.8~12.2");
            malnutritionGradeMapGirl.put("48", "10.9~12.4");
            malnutritionGradeMapGirl.put("49", "11.0~12.5");
            malnutritionGradeMapGirl.put("50", "11.1~12.6");
            malnutritionGradeMapGirl.put("51", "11.2~12.7");
            malnutritionGradeMapGirl.put("52", "11.3~12.8");
            malnutritionGradeMapGirl.put("53", "11.4~12.9");
            malnutritionGradeMapGirl.put("54", "11.5~13.1");
            malnutritionGradeMapGirl.put("55", "11.6~13.2");
            malnutritionGradeMapGirl.put("56", "11.7~13.3");
            malnutritionGradeMapGirl.put("57", "11.8~13.4");
            malnutritionGradeMapGirl.put("58", "11.9~13.5");
            malnutritionGradeMapGirl.put("59", "12.0~13.1");
            malnutritionGradeMapGirl.put("60", "12.1~13.2");
        }
        return malnutritionGradeMapGirl;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String findMalnutritionGrade(java.lang.String r4, int r5, float r6) throws java.lang.NumberFormatException {
        /*
            java.lang.String r0 = "M"
            boolean r0 = r4.equalsIgnoreCase(r0)
            r1 = 0
            r2 = 126(0x7e, float:1.77E-43)
            r3 = 0
            if (r0 != 0) goto L3e
            java.lang.String r0 = "Male"
            boolean r4 = r4.equalsIgnoreCase(r0)
            if (r4 == 0) goto L15
            goto L3e
        L15:
            java.util.Map r4 = getMalnutritionGradeMapForGIRLS()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.Object r4 = r4.get(r5)
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto L3c
            int r5 = r4.indexOf(r2)
            java.lang.String r0 = r4.substring(r1, r5)
            float r3 = java.lang.Float.parseFloat(r0)
            int r5 = r5 + 1
            java.lang.String r4 = r4.substring(r5)
            float r4 = java.lang.Float.parseFloat(r4)
            goto L64
        L3c:
            r4 = 0
            goto L64
        L3e:
            java.util.Map r4 = getMalnutritionGradeMapForBOYS()
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.Object r4 = r4.get(r5)
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto L3c
            int r5 = r4.indexOf(r2)
            java.lang.String r0 = r4.substring(r1, r5)
            float r3 = java.lang.Float.parseFloat(r0)
            int r5 = r5 + 1
            java.lang.String r4 = r4.substring(r5)
            float r4 = java.lang.Float.parseFloat(r4)
        L64:
            int r5 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r5 < 0) goto L72
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 > 0) goto L6f
            java.lang.String r4 = "Moderately malnourished"
            goto L74
        L6f:
            java.lang.String r4 = "Well-nourished"
            goto L74
        L72:
            java.lang.String r4 = "Severely malnourished"
        L74:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.UtilBean.findMalnutritionGrade(java.lang.String, int, float):java.lang.String");
    }

    public static String checkWeightForPNCMorbidity(String str, String str2, String str3) {
        String str4;
        Float fValueOf;
        if (str2 != null && !str2.equals("") && !str2.equals("T")) {
            if (Float.parseFloat(str2) > 0.0d && Float.parseFloat(str2) < 1.5d) {
                return str2;
            }
            String str5 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.IS_CHILD_FIRST_PNC_DONE);
            if (str5 != null && str5.equalsIgnoreCase("false")) {
                if (Integer.parseInt(str3) == 0) {
                    String str6 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_LAST_WEIGHT);
                    fValueOf = str6 != null ? Float.valueOf(Float.parseFloat(str6)) : null;
                    str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.WHEN_DID_BABY_CRY);
                } else {
                    String str7 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.WHEN_DID_BABY_CRY + str3);
                    String str8 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_LAST_WEIGHT + str3);
                    if (str8 != null) {
                        Float fValueOf2 = Float.valueOf(Float.parseFloat(str8));
                        str4 = str7;
                        fValueOf = fValueOf2;
                    } else {
                        str4 = str7;
                        fValueOf = null;
                    }
                }
                if ((fValueOf != null && fValueOf.floatValue() >= 2.0d && fValueOf.floatValue() < 2.5d) || (str4 != null && str4.equalsIgnoreCase(MorbiditiesConstant.CRY_AFTER_EFFORTS))) {
                    return null;
                }
            }
            if (SharedStructureData.isEmptyMapAllMorbidities(str, str3)) {
                return pncWeightCheck(str2, str3);
            }
        }
        return null;
    }

    public static String pncWeightCheck(String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        Boolean bool = Boolean.FALSE;
        if (Integer.parseInt(str2) == 0) {
            str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_DOB);
        } else {
            str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_DOB + str2);
        }
        if (str3 != null) {
            String[] strArrSplit = split(str3, GlobalTypes.KEY_VALUE_SEPARATOR);
            Long lValueOf = (strArrSplit.length != 3 || (str4 = strArrSplit[0]) == null || str4.trim().equalsIgnoreCase("") || (str5 = strArrSplit[1]) == null || str5.trim().equalsIgnoreCase("") || (str6 = strArrSplit[2]) == null || str6.trim().equalsIgnoreCase("")) ? null : Long.valueOf(getMilliSeconds(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
            if (Float.parseFloat(str) >= 1.5d && Float.parseFloat(str) < 1.999d && lValueOf != null && lValueOf.longValue() <= getMilliSeconds(0, 0, 15)) {
                bool = Boolean.TRUE;
            }
            if (Float.parseFloat(str) > 0.0d && Float.parseFloat(str) < 2.1d && lValueOf != null && lValueOf.longValue() >= getMilliSeconds(0, 0, 15) && lValueOf.longValue() <= getMilliSeconds(0, 0, 21)) {
                bool = Boolean.TRUE;
            }
            if (Float.parseFloat(str) > 0.0d && Float.parseFloat(str) < 2.2d && lValueOf != null && lValueOf.longValue() >= getMilliSeconds(0, 0, 22) && lValueOf.longValue() <= getMilliSeconds(0, 0, 27)) {
                bool = Boolean.TRUE;
            }
            if (Float.parseFloat(str) > 0.0d && Float.parseFloat(str) < 2.3d && lValueOf != null && lValueOf.longValue() > getMilliSeconds(0, 0, 27)) {
                bool = Boolean.TRUE;
            }
        }
        if (Boolean.TRUE.equals(bool)) {
            return str;
        }
        return null;
    }

    public static void addLBWorAsphyxiaIntoLICForFirstPNC(String str) {
        String str2;
        String str3 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.IS_CHILD_FIRST_PNC_DONE);
        if (str3 == null || !str3.equalsIgnoreCase("false")) {
            return;
        }
        if (Integer.parseInt(str) == 0) {
            String str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_LAST_WEIGHT);
            fValueOf = str4 != null ? Float.valueOf(Float.parseFloat(str4)) : null;
            str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.WHEN_DID_BABY_CRY);
        } else {
            str2 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.WHEN_DID_BABY_CRY + str);
            String str5 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.CHILD_LAST_WEIGHT + str);
            if (str5 != null) {
                fValueOf = Float.valueOf(Float.parseFloat(str5));
            }
        }
        if ((fValueOf == null || fValueOf.floatValue() < 2.0d || fValueOf.floatValue() >= 2.5d) && (str2 == null || !str2.equalsIgnoreCase(MorbiditiesConstant.CRY_AFTER_EFFORTS))) {
            return;
        }
        if (fValueOf != null && fValueOf.floatValue() >= 2.0d && fValueOf.floatValue() < 2.5d) {
            SharedStructureData.addItemInLICList("Birth weight:", fValueOf.toString(), str);
        }
        if (str2 == null || !str2.equalsIgnoreCase(MorbiditiesConstant.CRY_AFTER_EFFORTS)) {
            return;
        }
        SharedStructureData.addItemInLICList("When did the baby cry?", MorbiditiesConstant.getStaticValueAndKeyMap().get(MorbiditiesConstant.CRY_AFTER_EFFORTS), str);
    }

    public static String getVaccineNamesFromImmunizationString(String str) {
        String string = "";
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : str.split(GlobalTypes.COMMA)) {
                String[] strArrSplit = str2.split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                String str3 = strArrSplit[0];
                String str4 = strArrSplit[1];
                if ("BCG".equalsIgnoreCase(str3) || RchConstants.PENTA_1.equalsIgnoreCase(str3) || RchConstants.OPV_1.equalsIgnoreCase(str3)) {
                    sb.append(String.format("%s - %s", str3.replace("_", " "), str4));
                    sb.append(LabelConstants.NEW_LINE);
                    string = sb.toString();
                }
            }
        }
        return string;
    }

    public static List<String> getListFromStringBySeparator(String str, String str2) {
        if (str != null && str.trim().length() > 0 && str2 != null && str2.trim().length() > 0) {
            return Arrays.asList(split(str.trim(), str2.trim()));
        }
        return new ArrayList();
    }

    public static Boolean getBooleanValue(String str) {
        if (str == null) {
            return null;
        }
        if (str.trim().equalsIgnoreCase("T") || str.trim().equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    public static List<String> getListOfOptions(List<OptionDataBean> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<OptionDataBean> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
        }
        return arrayList;
    }

    public static List<OptionDataBean> getOptionsOrDataMap(QueFormBean queFormBean, boolean z) {
        ArrayList arrayList = new ArrayList();
        OptionDataBean optionDataBean = new OptionDataBean();
        if (z) {
            optionDataBean.setKey("-1");
            optionDataBean.setValue("-Select-");
            arrayList.add(optionDataBean);
        }
        if (queFormBean.getDatamap() != null && queFormBean.getDatamap().length() > 0) {
            if (queFormBean.getDatamap().equalsIgnoreCase("Countries list")) {
                OptionDataBean optionDataBean2 = new OptionDataBean();
                optionDataBean2.setKey("0");
                optionDataBean2.setValue("Within India");
                arrayList.add(optionDataBean2);
            }
            if (queFormBean.getDatamap().equalsIgnoreCase("Doctors List")) {
                for (String str : SharedStructureData.sewaFhsService.getHealthInfraOfficersAssignedToUser()) {
                    if (str != null && !str.trim().isEmpty()) {
                        OptionDataBean optionDataBean3 = new OptionDataBean();
                        optionDataBean3.setKey(String.valueOf(str.hashCode()));
                        optionDataBean3.setValue(str);
                        arrayList.add(optionDataBean3);
                    }
                }
                OptionDataBean optionDataBean4 = new OptionDataBean();
                optionDataBean4.setKey(String.valueOf(76517104));
                optionDataBean4.setValue("Other");
                arrayList.add(optionDataBean4);
            }
            List<FieldValueMobDataBean> dataMapValues = getDataMapValues(queFormBean.getDatamap());
            if (dataMapValues != null && !dataMapValues.isEmpty()) {
                for (FieldValueMobDataBean fieldValueMobDataBean : dataMapValues) {
                    OptionDataBean optionDataBean5 = new OptionDataBean();
                    optionDataBean5.setKey(String.valueOf(fieldValueMobDataBean.getIdOfValue()));
                    optionDataBean5.setValue(fieldValueMobDataBean.getValue());
                    optionDataBean5.setNext(null);
                    optionDataBean5.setRelatedProperty(null);
                    arrayList.add(optionDataBean5);
                }
            }
        }
        if (queFormBean.getOptions() != null && !queFormBean.getOptions().isEmpty()) {
            for (OptionTagBean optionTagBean : queFormBean.getOptions()) {
                if (optionTagBean.getKey() != null && optionTagBean.getValue() != null) {
                    OptionDataBean optionDataBean6 = new OptionDataBean();
                    optionDataBean6.setKey(optionTagBean.getKey());
                    optionDataBean6.setValue(optionTagBean.getValue());
                    optionDataBean6.setNext(optionTagBean.getNext());
                    optionDataBean6.setRelatedProperty(optionTagBean.getRelatedpropertyname());
                    arrayList.add(optionDataBean6);
                    optionDataBean.setRelatedProperty(optionDataBean6.getRelatedProperty());
                }
            }
        }
        List<FormulaTagBean> formulas = queFormBean.getFormulas();
        if (formulas != null && !formulas.isEmpty()) {
            String[] strArrSplit = split(formulas.get(0).getFormulavalue(), GlobalTypes.KEY_VALUE_SEPARATOR);
            if (Arrays.toString(strArrSplit).contains(FormulaConstants.FORMULA_SET_DEFAULT_MIDDLE_NAMES_CBDS)) {
                arrayList.addAll(SharedStructureData.middleNameList);
            } else if (Arrays.toString(strArrSplit).contains(FormulaConstants.FORMULA_SET_DEFAULT_MEMBERS_UNDER_20_MS)) {
                arrayList.addAll(SharedStructureData.membersUnderTwenty);
            } else if (Arrays.toString(strArrSplit).contains(FormulaConstants.FORMULA_SET_GIVEN_VACCINES_TO_CHILD)) {
                arrayList.addAll(SharedStructureData.givenVaccinesToChild);
            } else if (Arrays.toString(strArrSplit).contains(FormulaConstants.FORMULA_SET_MEMBERS_FROM_3_TO_6_YEARS)) {
                arrayList.addAll(SharedStructureData.childrenFrom3To6Years);
            } else if (Arrays.toString(strArrSplit).contains(FormulaConstants.FORMULA_SET_DEFAULT_NON_HOF_MEMBER_NAMES_CBDS)) {
                arrayList.addAll(SharedStructureData.nonHofMemberNameList);
            }
        }
        return arrayList;
    }

    public static ArrayAdapter<String> createAdapter(List<String> list) {
        MyArrayAdapter myArrayAdapter = new MyArrayAdapter(SharedStructureData.context, R.layout.spinner_item_top, list);
        myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
        return myArrayAdapter;
    }

    public static List<FieldValueMobDataBean> getDataMapValues(String str) {
        if (str != null && str.trim().length() > 0) {
            List<FieldValueMobDataBean> list = SharedStructureData.mapDataMapLabelBean.get(str);
            return (list == null || list.isEmpty()) ? SharedStructureData.sewaService.getFieldValueMobDataBeanByDataMap(str) : list;
        }
        return new ArrayList();
    }

    public static String getIronFolicAcidTablet(int i) {
        if (i <= 6 || i > 24) {
            return null;
        }
        return getDosageHashTable().get(GlobalTypes.IRON_FOLIC_ACID_TABLET_DOSAGE_GT_6_MONTHS);
    }

    private static Map<String, String> getDosageHashTable() {
        if (dosageHashTable == null) {
            HashMap map = new HashMap();
            dosageHashTable = map;
            map.put(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_LT_4_MONTHS, "200 - 400 ml (2 cups)");
            dosageHashTable.put(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_LT_4_TO_12_MONTHS, "400 - 700 ml (3 cups)");
            dosageHashTable.put(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_GT_12_MONTHS, "700 - 900 ml (5 cups)");
            dosageHashTable.put(GlobalTypes.DIARRHOEA_WO_DEHYDRATION_LT_2_MONTHS, "5 teaspoon of ORS for every episode of diarrohea");
            dosageHashTable.put(GlobalTypes.DIARRHOEA_WO_DEHYDRATION_GT_2_MONTHS, "200 ml of ORS for every episode of diarrohea (1/2 cup)");
            dosageHashTable.put(GlobalTypes.CHLOROQUINE_TABLET_DOSAGE_0_TO_1_YEAR, "1/2 tablet");
            dosageHashTable.put(GlobalTypes.CHLOROQUINE_TABLET_DOSAGE_GT_1_YEAR, "1 tablet");
            dosageHashTable.put(GlobalTypes.PCM_TABLET_DOSAGE_GT_2_MONTHS, "1/4 tablet");
            dosageHashTable.put(GlobalTypes.VITAMIN_A_DOSAGE_6_TO_12_MONTHS, "Vitamin A 1  lac IU");
            dosageHashTable.put(GlobalTypes.VITAMIN_A_DOSAGE_GT_12_MONTHS, "Vitamin A 2 lac IU");
            dosageHashTable.put(GlobalTypes.IRON_FOLIC_ACID_TABLET_DOSAGE_GT_6_MONTHS, "1 tablet daily for 14 days daily");
        }
        return dosageHashTable;
    }

    public static String getPCMTabletDosage(int i) {
        if (i <= 2 || i > 24) {
            return null;
        }
        return getDosageHashTable().get(GlobalTypes.PCM_TABLET_DOSAGE_GT_2_MONTHS);
    }

    public static String getDosageForDiarrhoeaWithDehydration(int i) {
        if (i <= 4) {
            return getDosageHashTable().get(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_LT_4_MONTHS);
        }
        if (i > 12 && i <= 24) {
            return getDosageHashTable().get(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_GT_12_MONTHS);
        }
        if (i <= 12) {
            return getDosageHashTable().get(GlobalTypes.DIARRHOEA_WITH_DEHYDRATION_LT_4_TO_12_MONTHS);
        }
        return null;
    }

    public static String getDosageForDiarrhoeaWithoutDehydration(int i) {
        if (i <= 2) {
            return getDosageHashTable().get(GlobalTypes.DIARRHOEA_WO_DEHYDRATION_LT_2_MONTHS);
        }
        if (i <= 24) {
            return getDosageHashTable().get(GlobalTypes.DIARRHOEA_WO_DEHYDRATION_GT_2_MONTHS);
        }
        return null;
    }

    public static String getVitaminADosage(int i) {
        if (i > 6 && i <= 12) {
            return getDosageHashTable().get(GlobalTypes.VITAMIN_A_DOSAGE_6_TO_12_MONTHS);
        }
        if (i > 12) {
            return getDosageHashTable().get(GlobalTypes.VITAMIN_A_DOSAGE_GT_12_MONTHS);
        }
        return null;
    }

    public static String getChloroquineTabletDosage(int i) {
        if (i <= 12) {
            return getDosageHashTable().get(GlobalTypes.CHLOROQUINE_TABLET_DOSAGE_0_TO_1_YEAR);
        }
        return getDosageHashTable().get(GlobalTypes.CHLOROQUINE_TABLET_DOSAGE_GT_1_YEAR);
    }

    public static int calculateMonthsBetweenDates(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        if (date.before(date2)) {
            calendar.setTime(date);
            date = date2;
        } else {
            calendar.setTime(date2);
        }
        int i = 0;
        while (calendar.getTime().before(date)) {
            calendar.add(2, 1);
            i++;
        }
        return i - 1;
    }

    public static int calculateDaysBetweenDates(Date date, Date date2) {
        return Integer.parseInt(String.valueOf(Math.abs(date.getTime() - date2.getTime()) / DAY_LONG_VALUE));
    }

    public static String setWeightDisplay(String str) {
        if (str != null && str.length() > 0 && str.contains(GlobalTypes.DOT_SEPARATOR)) {
            String[] strArrSplit = split(str, GlobalTypes.DOT_SEPARATOR);
            if (strArrSplit.length == 2) {
                return strArrSplit[0] + "  Kgs  " + strArrSplit[1] + "00  Gms  ";
            }
        }
        return getMyLabel("Not available");
    }

    public static String getMyLabel(String str) {
        LabelBean labelBean;
        if (str == null || str.trim().length() == 0) {
            return str;
        }
        String strReplace = replace(str, "[ \n]", "");
        LabelBean labelBean2 = new LabelBean();
        labelBean2.setLabelKey(strReplace);
        if (SewaTransformer.loginBean != null) {
            labelBean2.setLanguage(SewaTransformer.loginBean.getLanguageCode());
        } else {
            labelBean2.setLanguage("GU");
        }
        return (SharedStructureData.listLabelBeans == null || (labelBean = SharedStructureData.listLabelBeans.get(labelBean2.getMapIndex())) == null) ? str : labelBean.getLabelValue();
    }

    public static boolean isFileExists(String str) {
        if (str != null) {
            try {
                return new File(str).exists();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static String replace(String str, String str2, String str3) {
        return str.replaceAll(str2, str3);
    }

    public static String stringListJoin(Collection<String> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str2 : collection) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String stringListJoin(List<String> list, String str, boolean z) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (String str2 : list) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(str);
            }
            if (z) {
                sb.append(getMyLabel(str2));
            } else {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public static String arrayJoinToString(String[] strArr, String str) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str2 : strArr) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String arrayJoinToString(long[] jArr, String str) {
        if (jArr == null || jArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (long j : jArr) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(j);
        }
        return sb.toString();
    }

    public static Map<String, String> getFullFormOfEntity() {
        if (entityFullFormNames == null) {
            HashMap map = new HashMap();
            entityFullFormNames = map;
            map.put(FormConstants.ANC_MORBIDITY, "ANC Morbidity");
            entityFullFormNames.put(FormConstants.CHILD_CARE_MORBIDITY, "Child Care Morbidity");
            entityFullFormNames.put(FormConstants.PNC_MORBIDITY, "PNC Morbidity");
            entityFullFormNames.put("FHS", LabelConstants.FAMILY_HEALTH_SURVEY_TITLE);
            entityFullFormNames.put("CFHC", "Comprehensive Family Health Census");
            entityFullFormNames.put(FormConstants.AADHAR_UPDATION, "Aadhar Updation");
            entityFullFormNames.put(FormConstants.AADHAR_PHONE_UPDATION, "Aadhar and Phone Updation");
            entityFullFormNames.put(FormConstants.PHONE_UPDATION, "Phone Updation");
            entityFullFormNames.put(FormConstants.FHSR_PHONE_UPDATE, LabelConstants.PHONE_NUMBER_VERIFICATION_TITLE);
            entityFullFormNames.put(FormConstants.FHS_ADD_MEMBER, "Add New Member");
            entityFullFormNames.put(FormConstants.FHS_MEMBER_UPDATE, "Update Member Information");
            entityFullFormNames.put(FormConstants.MOBILE_NUMBER_VERIFICATION, LabelConstants.MOBILE_NUMBER_VERIFICATION_TITLE);
            entityFullFormNames.put("LMPFU", "LMP Follow Up Visit");
            entityFullFormNames.put("AMRUTPAN", "Amrutpan Abhiyan");
            entityFullFormNames.put(FormConstants.AMRUTPAN_SUPERVISION, "Amrutpan Supervision");
            entityFullFormNames.put(FormConstants.TECHO_FHW_RIM, "Reproductive Info Modification Visit");
            entityFullFormNames.put("FHW_ANC", "Ante Natal Care Visit");
            entityFullFormNames.put("FHW_WPD", "Pregnancy Outcome Visit (WPD)");
            entityFullFormNames.put("DISCHARGE", "Discharge Date Entry for WPD");
            entityFullFormNames.put("FHW_PNC", "Post Natal Care Visit");
            entityFullFormNames.put(FormConstants.TECHO_FHW_CI, "Child Immunisation Visit");
            entityFullFormNames.put("FHW_CS", "Child Services Visit");
            entityFullFormNames.put("MR_VACCINATION", "Measles and Rubella Drive");
            entityFullFormNames.put("APPETITE", "Appetite Test Alert For Child");
            entityFullFormNames.put(FormConstants.TECHO_FHW_VAE, "Vaccine Adverse Effect Visit");
            entityFullFormNames.put(FormConstants.TECHO_MIGRATION_IN, "Migration In");
            entityFullFormNames.put(FormConstants.TECHO_MIGRATION_OUT, "Migration Out");
            entityFullFormNames.put(FormConstants.TECHO_MIGRATION_IN_CONFIRMATION, "Migration In Confirmation");
            entityFullFormNames.put(FormConstants.TECHO_MIGRATION_OUT_CONFIRMATION, "Migration Out Confirmation");
            entityFullFormNames.put(FormConstants.TECHO_MIGRATION_REVERTED, "Reverted Migration");
            entityFullFormNames.put(FormConstants.TECHO_FAMILY_MIGRATION_REVERTED, "Reverted Family Migration");
            entityFullFormNames.put(FormConstants.TECHO_GAURAVI_DIWAS, LabelConstants.GAURAVI_DIWAS);
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_MIGRATION_IN, "Migration-in Alert");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_MIGRATION_OUT, "Migration-out Alert");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_IN, "Family Migration-in Alert");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_FAMILY_MIGRATION_OUT, "Family Migration-out Alert");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_READ_ONLY, "Read Only Alert");
            entityFullFormNames.put("TT2_ALERT", "TT2 Alert");
            entityFullFormNames.put("IRON_SUCROSE_ALERT", "Iron Sucrose Alert");
            entityFullFormNames.put("DPT_BOOSTER_2_ALERT", "DPT Booster 2 Alert");
            entityFullFormNames.put("SAM_SCREENING", "SAM Screening");
            entityFullFormNames.put(NotificationConstants.FHW_WORK_PLAN_MAMTA_DAY, "Mamta Day Workplan");
            entityFullFormNames.put(NotificationConstants.FHW_WORK_PLAN_OTHER_SERVICES, "Other Services Workplan");
            entityFullFormNames.put(NotificationConstants.FHW_WORK_PLAN_ASHA_REPORTED_EVENT, "Confirmation of ASHA reported Events");
            entityFullFormNames.put("ADOLESCENT_HEALTH_SCREENING", LabelConstants.ADOLESCENT_HEALTH_SCREENING_TITLE);
            entityFullFormNames.put("FHW_NS", LabelConstants.NAMOSHREE_TITLE);
            entityFullFormNames.put("AMRUTPAN", "Amrutpan Abhiyan");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_MISSED, "Amrutpan Abhiyan Missed Notifications");
            entityFullFormNames.put(NotificationConstants.FHW_NOTIFICATION_AMRUTPAN_UNDERWEIGHT_CHILD, "Amrutpan Abhiyan Underweight Child Alert");
            entityFullFormNames.put(FormConstants.NCD_FHW_HYPERTENSION, "NCD Hypertension Screening");
            entityFullFormNames.put(FormConstants.NCD_FHW_DIABETES, "NCD Diabetes Screening");
            entityFullFormNames.put(FormConstants.NCD_FHW_ORAL, "NCD Oral Screening");
            entityFullFormNames.put(FormConstants.NCD_FHW_BREAST, "NCD Breast Screening");
            entityFullFormNames.put(FormConstants.NCD_FHW_CERVICAL, "NCD Cervical Screening");
            entityFullFormNames.put(FormConstants.NCD_ASHA_CBAC, "NCD CBAC Screening");
            entityFullFormNames.put(FormConstants.ASHA_LMPFU, "LMP Follow Up Visit");
            entityFullFormNames.put(FormConstants.ASHA_HBNC, "HBNC");
            entityFullFormNames.put(FormConstants.ASHA_HBYC, "HBYC");
            entityFullFormNames.put(FormConstants.ASHA_PNC, "HBNC Visit");
            entityFullFormNames.put(FormConstants.ASHA_CS, "HBYC Visit");
            entityFullFormNames.put("ASHA_NPCB", LabelConstants.NPCB_SCREENING_TITLE);
            entityFullFormNames.put(FormConstants.NPCB_SPECTS_APPROVAL, "Spects Approval");
            entityFullFormNames.put("OA_NPCB", LabelConstants.NPCB_SCREENING_TITLE);
            entityFullFormNames.put(FormConstants.OA_NPCB_FU, "OA National Program for Blindness Control Follow Up");
            entityFullFormNames.put("CHO_NPCB", LabelConstants.NPCB_SCREENING_TITLE);
            entityFullFormNames.put(FormConstants.CHO_NPCB_FU, "National Program for Blindness Control Follow Up");
            entityFullFormNames.put(FormConstants.ASHA_ANC, "Ante Natal Care Visit");
            entityFullFormNames.put(FormConstants.ASHA_WPD, "Work Plan Delivery Visit");
            entityFullFormNames.put(FormConstants.ASHA_REPORT_FAMILY_MIGRATION, LabelConstants.REPORT_FAMILY_MIGRATION);
            entityFullFormNames.put(FormConstants.ASHA_REPORT_FAMILY_SPLIT, LabelConstants.REPORT_FAMILY_SPLIT);
            entityFullFormNames.put(FormConstants.ASHA_REPORT_MEMBER_MIGRATION, LabelConstants.REPORT_MEMBER_MIGRATION);
            entityFullFormNames.put(FormConstants.ASHA_REPORT_MEMBER_DEATH, LabelConstants.REPORT_MEMBER_DEATH);
            entityFullFormNames.put(FormConstants.ASHA_REPORT_MEMBER_DELIVERY, "Report Member Delivery");
            entityFullFormNames.put("FHW_PREG_CONF", "Pregnancy Confirmation");
            entityFullFormNames.put("FHW_DEATH_CONF", LabelConstants.DEATH_CONFORMATION);
            entityFullFormNames.put(NotificationConstants.NOTIFICATION_FHW_DELIVERY_CONF, LabelConstants.DELIVERY_CONFORMATION);
            entityFullFormNames.put(NotificationConstants.NOTIFICATION_FHW_MEMBER_MIGRATION, "Process Member Migration");
            entityFullFormNames.put(NotificationConstants.NOTIFICATION_FHW_FAMILY_MIGRATION, "Process Family Migration");
            entityFullFormNames.put(NotificationConstants.NOTIFICATION_FHW_FAMILY_SPLIT, "Process Family Split");
            entityFullFormNames.put(NotificationConstants.SELF_HELP_GROUP, "Self Help Group");
            entityFullFormNames.put(NotificationConstants.ASHA_NOTIFICATION_READ_ONLY, "Read Only Alert");
            entityFullFormNames.put(FormConstants.FAMILY_MIGRATION_OUT, LabelConstants.FAMILY_MIGRATION_OUT_TITLE);
            entityFullFormNames.put(FormConstants.FAMILY_MIGRATION_IN_CONFIRMATION, LabelConstants.FAMILY_MIGRATION_IN_CONFIRMATION_TITLE);
            entityFullFormNames.put(FormConstants.TECHO_AWW_CS, "Child Service Visit");
            entityFullFormNames.put(FormConstants.TECHO_AWW_THR, LabelConstants.TAKE_HOME_RATION_TITLE);
            entityFullFormNames.put(FormConstants.TECHO_AWW_HEIGHT_GROWTH_GRAPH, "Child Height growth chart");
            entityFullFormNames.put(FormConstants.TECHO_AWW_WEIGHT_GROWTH_GRAPH, "Child Weight growth chart");
            entityFullFormNames.put(FormConstants.TECHO_AWW_DAILY_NUTRITION, LabelConstants.DAILY_NUTRITION_TITLE);
            entityFullFormNames.put(FormConstants.FHW_SAM_SCREENING_REF, "SAM Screening Referral");
            entityFullFormNames.put(FormConstants.ASHA_SAM_SCREENING, "SAM Screening");
            entityFullFormNames.put(FormConstants.CMAM_FOLLOWUP, "CMAM followup");
            entityFullFormNames.put(FormConstants.FHW_MONTHLY_SAM_SCREENING, "Monthly SAM Screening");
            entityFullFormNames.put(FormConstants.PREGNANCY_STATUS, LabelConstants.PREGNANCY_STATUS_TITLE);
            entityFullFormNames.put("GMA", "Geriatrics Medication");
            entityFullFormNames.put("TRAVELLERS_SCREENING", LabelConstants.SERVICE_TRAVELLERS_SCREENING);
            entityFullFormNames.put(FormConstants.IDSP_MEMBER, "IDSP MEMBER");
            entityFullFormNames.put(FormConstants.IDSP_MEMBER_2, "Member Surveillance");
            entityFullFormNames.put(FormConstants.IDSP_FAMILY_2, "Family Surveillance");
            entityFullFormNames.put(FormConstants.IDSP_NEW_FAMILY, "Surveillance New Family");
            entityFullFormNames.put(FormConstants.LMS_TEST, "Learning Test");
            entityFullFormNames.put(FormConstants.OFFLINE_ABHA_NUMBER_CREATIONS, "Offline ABHA Number Creation");
            entityFullFormNames.put(FormConstants.MALARIA_EXAMINE, FormConstants.MALARIA_EXAMINE);
            entityFullFormNames.put(FormConstants.MALARIA_TREATMENT, FormConstants.MALARIA_TREATMENT);
            entityFullFormNames.put(FormConstants.ANC_REFERRAL_VISIT, "Anc Referral Visit");
            entityFullFormNames.put("NWC", LabelConstants.SERVICE_NEWLY_WED_COUPLES);
            entityFullFormNames.put(FormConstants.VHRPW, LabelConstants.VERY_HIGH_RISK_WOMEN);
            entityFullFormNames.put(FormConstants.MENTAL_ILLNESS, LabelConstants.MENTAL_HEALTH_SCREENING);
            entityFullFormNames.put(FormConstants.ELDERLY_CARE, LabelConstants.ELDERLY_CARE);
            entityFullFormNames.put(FormConstants.IFA_TO_SCHOOL, LabelConstants.IFA_SUPPLEMENTATION);
            entityFullFormNames.put(FormConstants.LAB_TEST_MALARIA, LabelConstants.SERVICE_MALARIA_SLIDES_COLLECTION);
            entityFullFormNames.put(FormConstants.LCDC_CAMPAIGN, LabelConstants.LEPROSY_SURVEY);
            entityFullFormNames.put(FormConstants.FILARIA_CAMPAIGN, "Filaria Drug campaign");
            entityFullFormNames.put(FormConstants.LCDC_CAMPAIGN_02, LabelConstants.LCDC_CAMPAIGN_02);
            entityFullFormNames.put(FormConstants.VBDS_WATER_QUALITY_MONITORING, "VBDS Water Quality Monitoring");
            entityFullFormNames.put(FormConstants.VBDS_ANTILARVAL_ACTIVITIES, "VBDS Antilarval Activities");
            entityFullFormNames.put(FormConstants.VBDS_ANTI_VECTOR_INTERVENTIONS, "VBDS Anti-vector Interventions");
            entityFullFormNames.put(FormConstants.VBDS_MALARIA_TESTING, "VBDS Malaria Testing");
            entityFullFormNames.put(FormConstants.VBDS_TPT_EVALUATION, "VBDS Tpt Evaluation");
            entityFullFormNames.put(FormConstants.VBDS_CHLORINATION_STATUS, "VBDS Chlorination Status");
            entityFullFormNames.put(FormConstants.ILA_BASELINE, "Base Line Survey");
        }
        return entityFullFormNames;
    }

    public static boolean isAlphaNumericWithSpace(String str) {
        if (str == null || str.trim().length() <= 0) {
            return true;
        }
        return !str.matches(".*[" + Pattern.quote("!~.;-^*:_|@#%+") + "].*");
    }

    public static boolean isValidNumber(String str, float f, float f2) {
        if (str != null) {
            return str.equalsIgnoreCase(FormulaConstants.VALIDATION_GREATER_THAN) ? f > f2 : str.equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN) ? f < f2 : str.equalsIgnoreCase(FormulaConstants.VALIDATION_GREATER_THAN_EQUAL) ? f >= f2 : str.equalsIgnoreCase(FormulaConstants.VALIDATION_LESS_THAN_EQUAL) && f <= f2;
        }
        return false;
    }

    public static boolean isFutureDate(long j) {
        if (j <= 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        return timeInMillis < calendar.getTimeInMillis();
    }

    public static boolean isPastDate(long j) {
        if (j <= 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        return timeInMillis > calendar.getTimeInMillis();
    }

    public static boolean isToday(long j) {
        if (j <= 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        return timeInMillis == calendar.getTimeInMillis();
    }

    public static Calendar clearTimeFromDate(Calendar calendar) {
        calendar.set(14, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(11, 0);
        return calendar;
    }

    public static Date clearTimeFromDate(Date date) {
        if (date == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(14, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(11, 0);
        return calendar.getTime();
    }

    public static boolean isDateIn(long j, String[] strArr, long j2) throws NumberFormatException {
        int i;
        int i2;
        int i3;
        if (j == 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance();
        if (j2 > 0) {
            calendar2.setTimeInMillis(j2);
        }
        clearTimeFromDate(calendar2);
        long timeInMillis2 = calendar2.getTimeInMillis();
        if (strArr == null || strArr.length < 5) {
            return false;
        }
        try {
            i = Integer.parseInt(strArr[2]);
            i2 = Integer.parseInt(strArr[3]);
            i3 = Integer.parseInt(strArr[4]);
        } catch (Exception unused) {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        if (strArr[1].equalsIgnoreCase("Sub")) {
            return calculateDateMinus(timeInMillis2, i, i2, i3) <= timeInMillis && timeInMillis <= timeInMillis2;
        }
        if (strArr[1].equalsIgnoreCase("Add")) {
            return timeInMillis2 <= timeInMillis && timeInMillis <= calculateDatePlus(timeInMillis2, i, i2, i3);
        }
        return false;
    }

    public static boolean isDateOut(long j, String[] strArr, long j2) throws NumberFormatException {
        int i;
        int i2;
        int i3;
        if (j == 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance();
        if (j2 > 0) {
            calendar2.setTimeInMillis(j2);
        }
        clearTimeFromDate(calendar2);
        long timeInMillis2 = calendar2.getTimeInMillis();
        if (strArr == null || strArr.length < 5) {
            return false;
        }
        try {
            i = Integer.parseInt(strArr[2]);
            i2 = Integer.parseInt(strArr[3]);
            i3 = Integer.parseInt(strArr[4]);
        } catch (Exception unused) {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        if (strArr[1].equalsIgnoreCase("Sub")) {
            return calculateDateMinus(timeInMillis2, i, i2, i3) >= timeInMillis || timeInMillis > timeInMillis2;
        }
        if (strArr[1].equalsIgnoreCase("Add")) {
            return timeInMillis2 > timeInMillis || timeInMillis >= calculateDatePlus(timeInMillis2, i, i2, i3);
        }
        return false;
    }

    public static String[] split(String str, String str2) {
        if (str != null) {
            if (str2 != null && str2.length() == 1) {
                return str.split("[" + str2 + "]");
            }
            if (str2 != null) {
                return str.split(str2);
            }
        }
        return new String[0];
    }

    public static long calculateDatePlus(long j, int i, int i2, int i3) {
        return addYearsMonthsDays(j, i, i2, i3);
    }

    public static long calculateDateMinus(long j, int i, int i2, int i3) {
        return addYearsMonthsDays(j, i * (-1), i2 * (-1), i3 * (-1));
    }

    public static long addYearsMonthsDays(long j, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        if (j > 0) {
            calendar.setTimeInMillis(j);
        }
        clearTimeFromDate(calendar);
        if (i3 != 0) {
            calendar.add(5, i3);
        }
        if (i2 != 0) {
            calendar.add(2, i2);
        }
        if (i != 0) {
            calendar.add(1, i);
        }
        return calendar.getTimeInMillis();
    }

    public static int noOfDayFromDate(long j, int i) {
        Calendar calendar = Calendar.getInstance();
        clearTimeFromDate(calendar);
        return (int) ((calendar.getTimeInMillis() - j) / (i * DAY_LONG_VALUE));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String convertDateToString(long r16, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.util.UtilBean.convertDateToString(long, boolean, boolean, boolean):java.lang.String");
    }

    public static int[] calculateAgeYearMonthDay(long j) {
        Period period = new Period(new LocalDate(j), new LocalDate(), PeriodType.yearMonthDay());
        return new int[]{period.getYears(), period.getMonths(), period.getDays()};
    }

    public static int[] calculateAgeYearMonthDayOnGivenDate(Long l, Long l2) {
        if (l != null && l2 != null && l.compareTo(l2) <= 0) {
            Period period = new Period(new LocalDate(l), new LocalDate(l2), PeriodType.yearMonthDay());
            return new int[]{period.getYears(), period.getMonths(), period.getDays()};
        }
        return new int[]{0, 0, 0};
    }

    public static String getAgeDisplay(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        if (i == 1) {
            sb.append(i);
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.YEAR));
            sb.append(" ");
        }
        if (i > 1) {
            sb.append(i);
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.YEAR));
            sb.append("s ");
        }
        if (i2 == 1) {
            sb.append(i2);
            sb.append(" ");
            sb.append(getMyLabel("Month"));
            sb.append(" ");
        }
        if (i2 > 1) {
            sb.append(i2);
            sb.append(" ");
            sb.append(getMyLabel("Month"));
            sb.append("s ");
        }
        if (i3 == 1) {
            sb.append(i3);
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.DAY));
            sb.append(" ");
        }
        if (i3 > 1) {
            sb.append(i3);
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.DAY));
            sb.append("s ");
        }
        if (i3 == 0 && i2 == 0 && i == 0) {
            sb.append(getMyLabel("Born today"));
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static String getAgeDisplayOnGivenDate(Date date, Date date2) {
        if (date == null || date2 == null || date.compareTo(date2) > 0) {
            return null;
        }
        Period period = new Period(new LocalDate(date), new LocalDate(date2), PeriodType.yearMonthDay());
        StringBuilder sb = new StringBuilder();
        if (period.getYears() == 1) {
            sb.append(period.getYears());
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.YEAR));
            sb.append(" ");
        }
        if (period.getYears() > 1) {
            sb.append(period.getYears());
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.YEAR));
            sb.append("s ");
        }
        if (period.getMonths() == 1) {
            sb.append(period.getMonths());
            sb.append(" ");
            sb.append(getMyLabel("Month"));
            sb.append(" ");
        }
        if (period.getMonths() > 1) {
            sb.append(period.getMonths());
            sb.append(" ");
            sb.append(getMyLabel("Month"));
            sb.append("s ");
        }
        if (period.getDays() == 1) {
            sb.append(period.getDays());
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.DAY));
            sb.append(" ");
        }
        if (period.getDays() > 1) {
            sb.append(period.getDays());
            sb.append(" ");
            sb.append(getMyLabel(GlobalTypes.DAY));
            sb.append("s ");
        }
        if (period.getDays() == 0 && period.getMonths() == 0 && period.getYears() == 0) {
            sb.append(getMyLabel("Born today"));
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static int getDpsAccordingScreenHeight(Context context, int i) {
        return context != null ? (int) (context.getResources().getDisplayMetrics().heightPixels * (i / 100.0d)) : i;
    }

    public static int getDpsAccordingScreenWidthHeight(Context context, float f) {
        return context != null ? (int) ((context.getResources().getDisplayMetrics().xdpi + context.getResources().getDisplayMetrics().ydpi) * (f / 100.0f)) : (int) f;
    }

    public static String getLastUpdatedTime(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        clearTimeFromDate(calendar);
        Calendar calendar2 = Calendar.getInstance();
        clearTimeFromDate(calendar2);
        String str = " " + getMyLabel("Last Updated Time :") + " ";
        if (calendar.getTimeInMillis() == calendar2.getTimeInMillis()) {
            calendar.setTimeInMillis(j);
            return str + getMyLabel("Today") + new SimpleDateFormat("(hh:mm a)", Locale.getDefault()).format(calendar.getTime());
        }
        calendar2.add(5, -1);
        if (calendar.getTimeInMillis() == calendar2.getTimeInMillis()) {
            calendar.setTimeInMillis(j);
            return str + getMyLabel("Yesterday") + new SimpleDateFormat("(hh:mm a)", Locale.getDefault()).format(calendar.getTime());
        }
        calendar.setTimeInMillis(j);
        if (j > 0) {
            return str + new SimpleDateFormat("dd/MM/yyyy hh:mm a", Locale.getDefault()).format(calendar.getTime());
        }
        return str + getMyLabel("Not updated till now");
    }

    public static void deleteFile(String str) {
        try {
            new File(str).delete();
        } catch (Exception e) {
            Log.e("UtilBean", "File " + str + " is not deleted", e);
        }
    }

    public static Date getDateAfterNoOfDays(Date date, int i) {
        Calendar calendar = Calendar.getInstance();
        if (date != null) {
            calendar.setTime(date);
            calendar.set(5, calendar.get(5) + i);
        }
        return calendar.getTime();
    }

    public static int getNumberOfYears(Date date, Date date2) {
        return Years.yearsBetween(new DateTime(date), new DateTime(date2)).getYears();
    }

    public static int getNumberOfMonths(Date date, Date date2) {
        return Months.monthsBetween(new DateTime(date), new DateTime(date2)).getMonths();
    }

    public static int getNumberOfWeeks(Date date, Date date2) {
        return Weeks.weeksBetween(new DateTime(date), new DateTime(date2)).getWeeks();
    }

    public static int getNumberOfDays(Date date, Date date2) {
        return Days.daysBetween(new DateTime(date), new DateTime(date2)).getDays() + 1;
    }

    public static TextView getMembersListForDisplay(Context context, FamilyDataBean familyDataBean) throws Resources.NotFoundException {
        FamilyDataBean familyDataBean2 = SharedStructureData.currentFamilyDataBean;
        if (familyDataBean == null) {
            familyDataBean = familyDataBean2;
        }
        MaterialTextView materialTextView = new MaterialTextView(context, null, R.style.CustomAnswerView);
        materialTextView.setPadding(0, 0, 0, 15);
        if (familyDataBean == null || familyDataBean.getMembers() == null || familyDataBean.getMembers().isEmpty()) {
            materialTextView.setText(String.format("%s!", getMyLabel("No members registered in the family")));
            return materialTextView;
        }
        int size = familyDataBean.getMembers().size();
        for (MemberDataBean memberDataBean : familyDataBean.getMembers()) {
            SpannableString spannableString = new SpannableString((memberDataBean.getUniqueHealthId() + " - " + getMemberFullName(memberDataBean)).replace(" null", "").replace("null ", "").trim());
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.detailsTextColor)), 0, spannableString.length(), 33);
            Typeface font = ResourcesCompat.getFont(context, R.font.roboto_bold);
            if (font != null) {
                spannableString.setSpan(new StyleSpan(font.getStyle()), 0, spannableString.length(), 33);
            }
            if (memberDataBean.getFamilyHeadFlag() != null && memberDataBean.getFamilyHeadFlag().booleanValue()) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.hofTextColor)), 0, spannableString.length(), 33);
            } else if (memberDataBean.getGender() != null && memberDataBean.getGender().equals("F") && Boolean.TRUE.equals(memberDataBean.getIsPregnantFlag())) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.pregnantWomenTextColor)), 0, spannableString.length(), 33);
            } else if (memberDataBean.getDob() != null && calculateAgeYearMonthDay(memberDataBean.getDob().longValue())[0] < 5) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.childrenTextColor)), 0, spannableString.length(), 33);
            }
            size--;
            materialTextView.append(spannableString);
            if (size != 0) {
                materialTextView.append(LabelConstants.NEW_LINE);
            }
        }
        return materialTextView;
    }

    public static LinearLayout getMembersListForDisplay(Context context, FamilyDataBean familyDataBean, View.OnClickListener onClickListener) throws Resources.NotFoundException {
        FamilyDataBean familyDataBean2 = SharedStructureData.currentFamilyDataBean;
        if (familyDataBean == null) {
            familyDataBean = familyDataBean2;
        }
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        MaterialTextView materialTextView = new MaterialTextView(context, null, R.style.CustomAnswerView);
        materialTextView.setPadding(0, 0, 0, 15);
        if (familyDataBean == null || familyDataBean.getMembers() == null || familyDataBean.getMembers().isEmpty()) {
            materialTextView.setText(String.format("%s!", getMyLabel("No members registered in the family")));
            linearLayout.addView(materialTextView);
            return linearLayout;
        }
        for (MemberDataBean memberDataBean : familyDataBean.getMembers()) {
            MaterialTextView materialTextView2 = new MaterialTextView(context, null, R.style.CustomAnswerView);
            materialTextView2.setId(IdConstants.MEMBER_TEXTVIEW_ID);
            materialTextView2.setPadding(0, 20, 0, 20);
            materialTextView2.setTextSize(16.0f);
            materialTextView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            SpannableString spannableString = new SpannableString((memberDataBean.getUniqueHealthId() + " - " + getMemberFullName(memberDataBean) + " | " + memberDataBean.getGender()).replace(" null", "").replace("null ", "").trim());
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.detailsTextColor)), 0, spannableString.length(), 33);
            Typeface font = ResourcesCompat.getFont(context, R.font.roboto_bold);
            if (font != null) {
                spannableString.setSpan(new StyleSpan(font.getStyle()), 0, spannableString.length(), 33);
            }
            if (memberDataBean.getFamilyHeadFlag() != null && memberDataBean.getFamilyHeadFlag().booleanValue()) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.hofTextColor)), 0, spannableString.length(), 33);
            } else if (memberDataBean.getGender() != null && memberDataBean.getGender().equals("F") && Boolean.TRUE.equals(memberDataBean.getIsPregnantFlag())) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.pregnantWomenTextColor)), 0, spannableString.length(), 33);
            } else if (memberDataBean.getDob() != null && calculateAgeYearMonthDay(memberDataBean.getDob().longValue())[0] < 5) {
                spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.childrenTextColor)), 0, spannableString.length(), 33);
            }
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            linearLayout2.setOrientation(0);
            materialTextView2.setCompoundDrawablePadding(15);
            materialTextView2.append(spannableString);
            materialTextView2.setTag(memberDataBean);
            materialTextView2.setOnClickListener(onClickListener);
            linearLayout.addView(materialTextView2);
        }
        return linearLayout;
    }

    public static TextView getMemberFullNameForDisplay(Context context) {
        FamilyDataBean familyDataBean = SharedStructureData.currentFamilyDataBean;
        MaterialTextView materialTextView = new MaterialTextView(context);
        materialTextView.setTextAppearance(context, R.style.CustomAnswerView);
        if (familyDataBean != null) {
            for (MemberDataBean memberDataBean : familyDataBean.getMembers()) {
                if (memberDataBean.getUniqueHealthId().equals(SharedStructureData.currentMemberUHId)) {
                    SpannableString spannableString = new SpannableString(getMemberFullName(memberDataBean).replace(" null", "").replace("null ", "").trim());
                    if (memberDataBean.getFamilyHeadFlag() != null && memberDataBean.getFamilyHeadFlag().booleanValue()) {
                        spannableString.setSpan(new ForegroundColorSpan(Color.rgb(48, 112, 6)), 0, spannableString.length(), 33);
                    } else if (memberDataBean.getGender() != null && memberDataBean.getGender().equals("F") && memberDataBean.getIsPregnantFlag() != null && memberDataBean.getIsPregnantFlag().booleanValue()) {
                        spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), 0, spannableString.length(), 33);
                    } else if (memberDataBean.getDob() != null && calculateAgeYearMonthDay(memberDataBean.getDob().longValue())[0] < 5) {
                        spannableString.setSpan(new ForegroundColorSpan(-16776961), 0, spannableString.length(), 33);
                    }
                    materialTextView.append(spannableString);
                }
            }
        }
        return materialTextView;
    }

    public static Spannable getAadharTextToBeDisplayedAfterScan(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            key.hashCode();
            switch (key) {
                case "pc":
                    sb.append(getMyLabel(LabelConstants.PINCODE));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "dob":
                    sb.append(getMyLabel("Date Of Birth"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "uid":
                    sb.append(getMyLabel("Aadhar Number"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "yob":
                    sb.append(getMyLabel("Year Of Birth"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
                case "name":
                    sb.append(getMyLabel("Name"));
                    sb.append(" : ");
                    sb.append(entry.getValue());
                    sb.append(LabelConstants.NEW_LINE);
                    break;
            }
        }
        return new SpannableString(sb.toString());
    }

    public static String getUserFullName(UserBean userBean) {
        StringBuilder sb = new StringBuilder();
        if (userBean.getFirstName() != null) {
            sb.append(userBean.getFirstName());
        }
        if (userBean.getMiddleName() != null) {
            sb.append(" ");
            sb.append(userBean.getMiddleName());
        }
        if (userBean.getLastName() != null) {
            sb.append(" ");
            sb.append(userBean.getLastName());
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return "";
    }

    public static String getMemberFullName(MemberBean memberBean) {
        StringBuilder sb = new StringBuilder();
        if (memberBean != null) {
            if (memberBean.getFirstName() != null) {
                sb.append(memberBean.getFirstName());
            }
            if (memberBean.getMiddleName() != null) {
                sb.append(" ");
                sb.append(memberBean.getMiddleName());
            }
            if (memberBean.getLastName() != null) {
                sb.append(" ");
                sb.append(memberBean.getLastName());
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
        }
        return "";
    }

    public static String getMemberFullName(AdolescentDataBean adolescentDataBean) {
        StringBuilder sb = new StringBuilder();
        if (adolescentDataBean.getFirstName() != null) {
            sb.append(adolescentDataBean.getFirstName());
        }
        if (adolescentDataBean.getMiddleName() != null) {
            sb.append(" ");
            sb.append(adolescentDataBean.getMiddleName());
        }
        if (adolescentDataBean.getLastName() != null) {
            sb.append(" ");
            sb.append(adolescentDataBean.getLastName());
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return "";
    }

    public static String getMemberFullName(MemberDataBean memberDataBean) {
        StringBuilder sb = new StringBuilder();
        if (memberDataBean != null) {
            if (memberDataBean.getFirstName() != null) {
                sb.append(memberDataBean.getFirstName());
            }
            if (memberDataBean.getMiddleName() != null) {
                sb.append(" ");
                sb.append(memberDataBean.getMiddleName());
            }
            if (memberDataBean.getLastName() != null) {
                sb.append(" ");
                sb.append(memberDataBean.getLastName());
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
        }
        return "";
    }

    public static String getFamilyFullAddress(FamilyDataBean familyDataBean) {
        StringBuilder sb = new StringBuilder();
        if (familyDataBean.getAddress1() != null || familyDataBean.getAddress2() != null) {
            if (familyDataBean.getAddress1() != null) {
                sb.append(familyDataBean.getAddress1());
                if (familyDataBean.getAddress2() != null) {
                    sb.append(" ");
                    sb.append(familyDataBean.getAddress2());
                }
            } else if (familyDataBean.getAddress2() != null) {
                sb.append(familyDataBean.getAddress2());
            }
        } else {
            sb.append(getMyLabel("Not available"));
        }
        return sb.toString();
    }

    public static String getTitleText(String str) {
        return getMyLabel(str);
    }

    public static String calculateBmi(Integer num, Float f) {
        if (num == null || num.intValue() <= 0 || f == null || f.floatValue() <= 0.0f) {
            return null;
        }
        float fIntValue = num.intValue() / 100.0f;
        return String.format(Locale.getDefault(), "%.1f", Float.valueOf((f.floatValue() / fIntValue) / fIntValue));
    }

    public static SpannableString addBullet(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new BulletSpan(15), 0, str.length(), 0);
        return spannableString;
    }

    public static void showAlertAndExit(final String str, final Context context) {
        final Activity activity = (Activity) context;
        activity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.util.UtilBean$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                UtilBean.lambda$showAlertAndExit$4(activity, context, str);
            }
        });
    }

    static /* synthetic */ void lambda$showAlertAndExit$4(final Activity activity, Context context, String str) {
        MyAlertDialog myAlertDialog = new MyAlertDialog(context, false, str, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.util.UtilBean$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UtilBean.lambda$showAlertAndExit$3(activity, view);
            }
        }, DynamicUtils.BUTTON_OK);
        dialogForExit = myAlertDialog;
        myAlertDialog.show();
    }

    static /* synthetic */ void lambda$showAlertAndExit$3(Activity activity, View view) {
        dialogForExit.dismiss();
        activity.finish();
    }

    public static String getNotAvailableIfNull(String str) {
        return (str == null || str.isEmpty()) ? "Not available" : str;
    }

    public static String getNotAvailableIfNull(Object obj) {
        if (obj != null && !obj.toString().isEmpty()) {
            return obj.toString();
        }
        return "Not available";
    }

    public static String returnYesNoNotAvailableFromBoolean(Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            return "Yes";
        }
        if (Boolean.FALSE.equals(bool)) {
            return "No";
        }
        return "Not available";
    }

    public static String returnYesNoNotAvailableFromBoolean(Object obj) {
        if (obj != null) {
            if (Boolean.parseBoolean(obj.toString())) {
                return "Yes";
            }
            return "No";
        }
        return "Not available";
    }

    public static String returnKeyFromBoolean(Object obj) {
        if (obj == null) {
            return null;
        }
        if (Boolean.parseBoolean(obj.toString())) {
            return MorbiditiesConstant.ONE_PLUS;
        }
        return MorbiditiesConstant.TWO_PLUS;
    }

    public static List<String> getBlockedMobileNumbers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("9999999999");
        arrayList.add("8888888888");
        arrayList.add("7777777777");
        arrayList.add("6666666666");
        arrayList.add("5555555555");
        return arrayList;
    }

    public static List<String> getSupportedExtensions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("3gp");
        arrayList.add("mp4");
        arrayList.add("jpg");
        arrayList.add("png");
        arrayList.add("mp3");
        arrayList.add("pdf");
        return arrayList;
    }

    public static String getFormattedTime(int i) {
        return i < 10 ? String.format(Locale.getDefault(), "%02d", Integer.valueOf(i)) : Integer.toString(i);
    }

    public static String getRelatedPropertyNameWithLoopCounter(String str, int i) {
        if (i <= 0) {
            return str;
        }
        return str + i;
    }

    public static void restartApplication(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            context.startActivity(Intent.makeRestartActivityTask(launchIntentForPackage.getComponent()));
        }
        Runtime.getRuntime().exit(0);
    }

    public static String getGenderLabelFromValue(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "F":
                return LabelConstants.FEMALE;
            case "M":
                return LabelConstants.MALE;
            case "T":
                return LabelConstants.TRANSGENDER;
            default:
                return str;
        }
    }

    public static String getGenderValueAs123FromGender(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "F":
                return MorbiditiesConstant.TWO_PLUS;
            case "M":
                return MorbiditiesConstant.ONE_PLUS;
            case "T":
                return MorbiditiesConstant.THREE_PLUS;
            default:
                return "0";
        }
    }

    public static String getTimeTakenBetweenTwoDates(Date date, Date date2) {
        if (date == null || date2 == null || date.compareTo(date2) > 0) {
            return null;
        }
        return PeriodFormat.getDefault().print(new Period(new LocalDateTime((date.getTime() / 1000) * 1000), new LocalDateTime((date2.getTime() / 1000) * 1000), PeriodType.yearMonthDayTime()));
    }

    public static String getDifferenceBetweenTwoDates(Date date, Date date2) {
        if (date == null || date2 == null || date.compareTo(date2) > 0) {
            return null;
        }
        return PeriodFormat.getDefault().print(new Period(new LocalDateTime(date), new LocalDateTime(date2), PeriodType.yearMonthDayTime()));
    }

    public static String getFinancialYearFromDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        if (date != null) {
            calendar.setTime(date);
        }
        int i = calendar.get(2) < 3 ? calendar.get(1) - 1 : calendar.get(1);
        return i + GlobalTypes.KEY_VALUE_SEPARATOR + (i + 1);
    }

    public static Date getStartOfFinancialYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        if (date != null) {
            calendar.setTime(date);
        }
        calendar.set(1, calendar.get(2) < 3 ? calendar.get(1) - 1 : calendar.get(1));
        calendar.set(2, 3);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    public static String addCommaSeparatedStringIfNotExists(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return str2;
        }
        if (str.contains(str2)) {
            return str;
        }
        return str + GlobalTypes.COMMA + str2;
    }

    public static String getLMSFileName(Long l, String str) {
        if (l == null) {
            return null;
        }
        return String.format("%s_%s%s", "LMS_MEDIA", l, str.substring(str.lastIndexOf(GlobalTypes.DOT_SEPARATOR)));
    }

    public static String getTimeSpentFromMillis(Long l) {
        long jLongValue = l.longValue() / DAY_LONG_VALUE;
        long jLongValue2 = l.longValue() % DAY_LONG_VALUE;
        Long lValueOf = Long.valueOf(jLongValue2);
        lValueOf.getClass();
        long j = jLongValue2 / HOUR_LONG_VALUE;
        lValueOf.getClass();
        long j2 = jLongValue2 % HOUR_LONG_VALUE;
        Long lValueOf2 = Long.valueOf(j2);
        lValueOf2.getClass();
        long j3 = j2 / MINUTE_LONG_VALUE;
        lValueOf2.getClass();
        long j4 = j2 % MINUTE_LONG_VALUE;
        Long.valueOf(j4).getClass();
        long j5 = j4 / 1000;
        String str = jLongValue != 0 ? String.format("%sd", Long.valueOf(jLongValue)) : "";
        if (j != 0) {
            str = String.format("%s %sh", str, Long.valueOf(j));
        }
        if (j3 != 0) {
            str = String.format("%s %sm", str, Long.valueOf(j3));
        }
        return String.format("%s %ss", str, Long.valueOf(j5)).trim();
    }

    public static Date endOfDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, RoomDatabase.MAX_BIND_PARAMETER_CNT);
        return calendar.getTime();
    }

    public static boolean videoFileIsCorrupted(Context context, String str) throws SecurityException, IOException, IllegalArgumentException {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(context, Uri.parse(str));
            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(17);
            mediaMetadataRetriever.release();
            return "yes".equals(strExtractMetadata);
        } catch (Exception e) {
            e.printStackTrace();
            mediaMetadataRetriever.release();
            return false;
        }
    }

    public static Set<String> removePreviousDosesVitaminA(Set<String> set) {
        if (set.contains(RchConstants.VITAMIN_A_9)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
            set.remove(RchConstants.VITAMIN_A_4);
            set.remove(RchConstants.VITAMIN_A_5);
            set.remove(RchConstants.VITAMIN_A_6);
            set.remove(RchConstants.VITAMIN_A_7);
            set.remove(RchConstants.VITAMIN_A_8);
        } else if (set.contains(RchConstants.VITAMIN_A_8)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
            set.remove(RchConstants.VITAMIN_A_4);
            set.remove(RchConstants.VITAMIN_A_5);
            set.remove(RchConstants.VITAMIN_A_6);
            set.remove(RchConstants.VITAMIN_A_7);
        } else if (set.contains(RchConstants.VITAMIN_A_7)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
            set.remove(RchConstants.VITAMIN_A_4);
            set.remove(RchConstants.VITAMIN_A_5);
            set.remove(RchConstants.VITAMIN_A_6);
        } else if (set.contains(RchConstants.VITAMIN_A_6)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
            set.remove(RchConstants.VITAMIN_A_4);
            set.remove(RchConstants.VITAMIN_A_5);
        } else if (set.contains(RchConstants.VITAMIN_A_5)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
            set.remove(RchConstants.VITAMIN_A_4);
        } else if (set.contains(RchConstants.VITAMIN_A_4)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
            set.remove(RchConstants.VITAMIN_A_3);
        } else if (set.contains(RchConstants.VITAMIN_A_3)) {
            set.remove(RchConstants.VITAMIN_A_1);
            set.remove(RchConstants.VITAMIN_A_2);
        } else if (set.contains(RchConstants.VITAMIN_A_2)) {
            set.remove(RchConstants.VITAMIN_A_1);
        }
        return set;
    }

    public static void hideKeyboard(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    public static Map<String, Date> getImmunisationDateMap(String str) {
        HashMap map = new HashMap();
        if (str != null && !str.isEmpty()) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, GlobalTypes.COMMA);
            int i = 1;
            while (stringTokenizer.hasMoreElements()) {
                String[] strArrSplit = stringTokenizer.nextToken().split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                String strTrim = strArrSplit[0].trim();
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
                    if (strTrim.equals(RchConstants.VITAMIN_A)) {
                        Date date = (Date) map.get(strTrim);
                        if (date == null || date.before(simpleDateFormat.parse(strArrSplit[1]))) {
                            map.put(strTrim.concat("_").concat(String.valueOf(i)), simpleDateFormat.parse(strArrSplit[1]));
                            i++;
                        }
                    } else {
                        map.put(strTrim, simpleDateFormat.parse(strArrSplit[1]));
                    }
                } catch (ParseException e) {
                    Log.e("UtilBean", null, e);
                }
            }
        }
        return map;
    }

    public static Bitmap getScaledBitmapForDisplay(Context context, Uri uri) throws IOException {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
        ((InputStream) Objects.requireNonNull(inputStreamOpenInputStream)).close();
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, options);
        ((InputStream) Objects.requireNonNull(inputStreamOpenInputStream2)).close();
        return bitmapDecodeStream;
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 >= i2 && i7 / i5 >= i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static String[] extractHighRiskFormula(QueFormBean queFormBean) {
        String str;
        if (queFormBean == null || queFormBean.getFormulas() == null || queFormBean.getFormulas().isEmpty()) {
            return null;
        }
        for (FormulaTagBean formulaTagBean : queFormBean.getFormulas()) {
            if (formulaTagBean.getFormulavalue() != null && !formulaTagBean.getFormulavalue().trim().isEmpty()) {
                String[] strArrSplit = split(formulaTagBean.getFormulavalue().trim(), GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit.length > 0 && (str = strArrSplit[0]) != null && str.equalsIgnoreCase(FormulaConstants.FORMULA_IDENTIFY_HIGH_RISK)) {
                    return strArrSplit;
                }
            }
        }
        return null;
    }

    public static String getMotherAndFatherNameForListDisplay(MemberDataBean memberDataBean, SewaFhsService sewaFhsService) {
        StringBuilder sb = new StringBuilder();
        sb.append(getMyLabel(LabelConstants.MOTHER));
        sb.append(" - ");
        sb.append(getMotherName(memberDataBean, sewaFhsService));
        String fatherName = getFatherName(memberDataBean, sewaFhsService);
        if (!getMyLabel("Not available").equals(fatherName)) {
            sb.append(LabelConstants.NEW_LINE);
            sb.append(getMyLabel(LabelConstants.FATHER));
            sb.append(" - ");
            sb.append(fatherName);
        }
        return sb.toString();
    }

    public static String getMotherName(MemberDataBean memberDataBean, SewaFhsService sewaFhsService) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        if (memberDataBean != null) {
            if (memberDataBean.getMotherName() != null && memberDataBean.getMotherName().trim().length() > 0) {
                return memberDataBean.getMotherName();
            }
            if (memberDataBean.getMotherId() != null && (memberBeanRetrieveMemberBeanByActualId = sewaFhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId())) != null) {
                return getMemberFullName(memberBeanRetrieveMemberBeanByActualId);
            }
        }
        return getMyLabel("Not available");
    }

    public static String getFatherName(MemberDataBean memberDataBean, SewaFhsService sewaFhsService) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        if (memberDataBean != null) {
            if (memberDataBean.getFatherName() != null && memberDataBean.getFatherName().trim().length() > 0) {
                return memberDataBean.getFatherName();
            }
            if (memberDataBean.getMotherId() != null && (memberBeanRetrieveMemberBeanByActualId = sewaFhsService.retrieveMemberBeanByActualId(memberDataBean.getMotherId())) != null && memberBeanRetrieveMemberBeanByActualId.getHusbandId() != null) {
                return getMemberFullName(sewaFhsService.retrieveMemberBeanByActualId(memberBeanRetrieveMemberBeanByActualId.getHusbandId()));
            }
        }
        return getMyLabel("Not available");
    }

    public static String getMemberType(MemberDataBean memberDataBean) {
        int numberOfYears = getNumberOfYears(new Date(memberDataBean.getDob().longValue()), new Date());
        if (memberDataBean.getGender().equals("F") && Boolean.TRUE.equals(memberDataBean.getIsPregnantFlag())) {
            return SewaConstants.PREGNANT_WOMEN;
        }
        if (numberOfYears <= 5) {
            return "C";
        }
        if (numberOfYears <= 7) {
            return SewaConstants.CHILDREN_5_PLUS;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -60);
        if (memberDataBean.getLastDeliveryDate() != null && memberDataBean.getLastDeliveryDate().longValue() > calendar.getTimeInMillis()) {
            return SewaConstants.PNC_MOTHER;
        }
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(1, -15);
        Date time = calendar2.getTime();
        calendar2.add(1, -34);
        Date time2 = calendar2.getTime();
        Calendar calendar3 = Calendar.getInstance();
        clearTimeFromDate(calendar3);
        calendar3.add(1, -1);
        if (memberDataBean.getLastDeliveryDate() == null || memberDataBean.getLastDeliveryDate().longValue() >= time.getTime() || memberDataBean.getLastDeliveryDate().longValue() <= time2.getTime()) {
            return "";
        }
        if (memberDataBean.getDateOfWedding().longValue() > calendar3.getTimeInMillis()) {
            return "NWC";
        }
        return SewaConstants.ELIGIBLE_COUPLES;
    }

    public static List<String> allowedLocTypesToAddFamily() {
        return new ArrayList(Arrays.asList("A", "AA", LocationConstants.LocationType.URBAN_ASHA_AREA));
    }

    public static String getDayNameFromNumber(int i) {
        switch (i) {
            case 0:
                return "SUNDAY";
            case 1:
                return "MONDAY";
            case 2:
                return "TUESDAY";
            case 3:
                return "WEDNESDAY";
            case 4:
                return "THURSDAY";
            case 5:
                return "FRIDAY";
            case 6:
                return "SATURDAY";
            default:
                return null;
        }
    }

    public static String formatKey(String str) {
        String[] strArrSplit = str.toLowerCase().replace("_", " ").split(" ");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (!str2.isEmpty()) {
                sb.append(Character.toUpperCase(str2.charAt(0)));
                sb.append(str2.substring(1));
                sb.append(" ");
            }
        }
        return sb.toString().trim();
    }

    public static String getDurationLabel(List<String> list) {
        if (list != null && !list.isEmpty()) {
            if (list.contains(MorbiditiesConstant.YELLOW_COLOR) && list.contains("M") && list.contains(LocationConstants.LocationType.DISTRICT)) {
                return getMyLabel(LabelConstants.YEAR_AND_MONTH_AND_DAY_NOT_YET_ENTERED);
            }
            if (list.contains("M") && list.contains(LocationConstants.LocationType.DISTRICT)) {
                return getMyLabel(LabelConstants.MONTH_AND_DAY_NOT_YET_ENTERED);
            }
        }
        return getMyLabel(LabelConstants.YEAR_AND_MONTH_NOT_YET_ENTERED);
    }

    public static String getVisitDurationForAmrutpan(String str) {
        String str2 = VISIT_DURATION_MAP_FOR_AMRUTPAN.get(str);
        return str2 != null ? str2 : LabelConstants.N_A;
    }

    public static String formatAmrutpanNotificationOtherDetails(String str) throws JSONException {
        String strValueOf;
        if (str != null && !str.trim().isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                StringBuilder sb = new StringBuilder();
                while (itKeys.hasNext()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(itKeys.next());
                    String strOptString = jSONObject2.optString("visit_days", null);
                    sb.append("<font color='#000000'><b>Visit Done At: ");
                    if (strOptString == null || strOptString.trim().isEmpty()) {
                        strOptString = LabelConstants.N_A;
                    }
                    sb.append(strOptString);
                    sb.append("</b></font><br/>");
                    Iterator<String> itKeys2 = jSONObject2.keys();
                    while (itKeys2.hasNext()) {
                        String next = itKeys2.next();
                        if (!"visit_days".equalsIgnoreCase(next)) {
                            Object objOpt = jSONObject2.opt(next);
                            if (objOpt == null || String.valueOf(objOpt).trim().isEmpty()) {
                                strValueOf = LabelConstants.N_A;
                            } else {
                                strValueOf = String.valueOf(objOpt);
                            }
                            if ("service_date".equalsIgnoreCase(next) || "length_of_child".equalsIgnoreCase(next) || "weight_of_child".equalsIgnoreCase(next)) {
                                sb.append("<font color='#303F9F'>");
                                sb.append(formatKeyToTitleCase(next));
                                sb.append(":</font> ");
                            } else {
                                sb.append(formatKeyToTitleCase(next));
                                sb.append(": ");
                            }
                            if ("service_date".equalsIgnoreCase(next)) {
                                Date date = AadharScanUtil.formatDate(strValueOf);
                                if (date != null) {
                                    sb.append(new SimpleDateFormat("d MMMM yyyy", Locale.ENGLISH).format(date));
                                } else {
                                    sb.append(strValueOf);
                                }
                            } else {
                                sb.append(strValueOf);
                                if (!LabelConstants.N_A.equals(strValueOf)) {
                                    if ("length_of_child".equalsIgnoreCase(next)) {
                                        sb.append(" cm");
                                    } else if ("weight_of_child".equalsIgnoreCase(next)) {
                                        sb.append(" grams");
                                    }
                                }
                            }
                            sb.append("<br/>");
                        }
                    }
                    if (itKeys.hasNext()) {
                        sb.append("<br/>");
                        sb.append("<font color='#DDDDDD'>────────────────────────</font>");
                        sb.append("<br/><br/>");
                    }
                }
                return sb.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private static String formatKeyToTitleCase(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String[] strArrSplit = str.split("_");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (!str2.isEmpty()) {
                sb.append(Character.toUpperCase(str2.charAt(0)));
                sb.append(str2.substring(1).toLowerCase());
                sb.append(" ");
            }
        }
        return sb.toString().trim();
    }
}
