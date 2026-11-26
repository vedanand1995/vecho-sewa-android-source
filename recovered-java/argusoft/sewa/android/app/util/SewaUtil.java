package com.argusoft.sewa.android.app.util;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.MorbiditiesIdentification;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.beans.BeneficiaryMorbidityDetails;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.google.android.material.textview.MaterialTextView;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class SewaUtil {
    public static final String COLOR_MORBIDITY_GREEN_CODE = "M";
    private static final String TAG = "SewaUtil";
    public static String familyUnderstandInMorbidity;
    public static Toast toast;
    public static final int COLOR_RED = Color.parseColor("#FF0000");
    public static final int COLOR_GREEN = Color.parseColor("#014A08");
    public static final int COLOR_YELLOW = Color.parseColor("#ffd500");
    public static final int COLOR_ANSWER = Color.parseColor("#686f7c");
    public static final int COLOR_1 = Color.parseColor("#9b234d");
    public static final int COLOR_2 = Color.parseColor("#ce5700");
    public static final int COLOR_3 = Color.parseColor("#629a0a");
    public static final int COLOR_4 = Color.parseColor("#009be3");
    public static final int COLOR_DARK_GREEN = Color.parseColor("#006400");
    public static final int COLOR_ORANGE = Color.parseColor("#D38F40");
    public static final int COLOR_MORBIDITY_GREEN = Color.parseColor("#014A08");
    public static final int COLOR_MORBIDITY_NORMAL = Color.parseColor("#000000");
    public static final int COLOR_NORMAL = Color.parseColor("#000000");
    public static boolean isUserInTraining = false;
    public static int CURRENT_THEME = R.style.techo_app;

    private SewaUtil() {
        throw new IllegalStateException("Utility Class");
    }

    public static int getColorForMorbiditySims(String str) {
        if (str != null && str.equalsIgnoreCase("M")) {
            return COLOR_MORBIDITY_GREEN;
        }
        return COLOR_MORBIDITY_NORMAL;
    }

    public static void setColor(TextView textView, String str) {
        int i = COLOR_ANSWER;
        LinkedList linkedList = null;
        String[] strArrSplit = (str == null || !(str.contains("Red") || str.contains(UtilBean.getMyLabel("Red")) || str.contains("Yellow") || str.contains(UtilBean.getMyLabel("Yellow")) || str.contains("Green") || str.contains(UtilBean.getMyLabel("Green")))) ? null : str.split(GlobalTypes.COMMA);
        if (str != null && str.trim().length() > 0) {
            if (str.trim().equalsIgnoreCase("Red") || str.trim().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR) || str.trim().equalsIgnoreCase(UtilBean.getMyLabel("Red"))) {
                i = COLOR_RED;
            } else if (!str.trim().equalsIgnoreCase("Yellow") && !str.trim().equalsIgnoreCase(MorbiditiesConstant.YELLOW_COLOR) && !str.trim().equalsIgnoreCase(UtilBean.getMyLabel("Yellow"))) {
                if (str.trim().equalsIgnoreCase("Green") || str.trim().equalsIgnoreCase(MorbiditiesConstant.GREEN_COLOR) || str.trim().equalsIgnoreCase(UtilBean.getMyLabel("Green"))) {
                    i = COLOR_GREEN;
                } else if (str.trim().equalsIgnoreCase(GlobalTypes.LOWER_MALNUTRITION_GRADE)) {
                    i = COLOR_RED;
                } else if (str.trim().equalsIgnoreCase(GlobalTypes.MIDDLE_MALNUTRITION_GRADE)) {
                    i = COLOR_ORANGE;
                } else if (str.trim().equalsIgnoreCase(GlobalTypes.UPPER_MALNUTRITION_GRADE)) {
                    i = COLOR_DARK_GREEN;
                } else if (str.trim().equalsIgnoreCase(SewaConstants.QUESTION_COLOR_1)) {
                    i = COLOR_1;
                } else if (str.trim().equalsIgnoreCase(SewaConstants.QUESTION_COLOR_2)) {
                    i = COLOR_2;
                } else if (str.trim().equalsIgnoreCase(SewaConstants.QUESTION_COLOR_3)) {
                    i = COLOR_3;
                } else if (str.trim().equalsIgnoreCase(SewaConstants.QUESTION_COLOR_4)) {
                    i = COLOR_4;
                } else if (strArrSplit != null && strArrSplit.length > 1) {
                    linkedList = new LinkedList();
                    for (String str2 : strArrSplit) {
                        if (str2.trim().equalsIgnoreCase("Red") || str2.trim().equalsIgnoreCase(MorbiditiesConstant.RED_COLOR) || str2.trim().equalsIgnoreCase(UtilBean.getMyLabel("Red"))) {
                            linkedList.add(Integer.valueOf(SupportMenu.CATEGORY_MASK));
                        } else if (!str2.trim().equalsIgnoreCase("Yellow") && !str2.trim().equalsIgnoreCase(MorbiditiesConstant.YELLOW_COLOR) && !str2.trim().equalsIgnoreCase(UtilBean.getMyLabel("Yellow"))) {
                            if (str2.trim().equalsIgnoreCase("Green") || str2.trim().equalsIgnoreCase(MorbiditiesConstant.GREEN_COLOR) || str2.trim().equalsIgnoreCase(UtilBean.getMyLabel("Green"))) {
                                linkedList.add(-16711936);
                            }
                        } else {
                            linkedList.add(Integer.valueOf(InputDeviceCompat.SOURCE_ANY));
                        }
                    }
                }
            } else {
                i = COLOR_YELLOW;
            }
        }
        if (textView != null) {
            if (strArrSplit != null && strArrSplit.length > 0 && linkedList != null && !linkedList.isEmpty()) {
                SpannableString spannableString = new SpannableString(str);
                int length = 0;
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    spannableString.setSpan(new ForegroundColorSpan(((Integer) linkedList.get(i2)).intValue()), length, strArrSplit[i2].length() + length, 33);
                    length += strArrSplit[i2].length() + 1;
                }
                textView.setText(spannableString);
                return;
            }
            textView.setTextColor(i);
        }
    }

    public static List<BeneficiaryMorbidityDetails> showANCMorbidity(String str) {
        if (str != null) {
            return new MorbiditiesIdentification().findAvailableANCMorbidities(str, SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
        }
        Log.w(TAG, "Anc record could not found so Anc morbidity can not be checked");
        return new ArrayList();
    }

    public static List<BeneficiaryMorbidityDetails> showCCMorbidity(String str) {
        if (str != null) {
            return new MorbiditiesIdentification().findAvailableChildCareMorbidities(str, SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
        }
        Log.w(TAG, "Child-Care record could not found so CC morbidity can not be checked");
        return new ArrayList();
    }

    public static List<BeneficiaryMorbidityDetails> showPNCMorbidity(String str) {
        if (str != null) {
            return new MorbiditiesIdentification().findAvailablePNCMorbidities(str, SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
        }
        Log.w(TAG, "PNC Home Visit record could not found so PNC morbidity can not be checked");
        return new ArrayList();
    }

    public static void generateToast(Context context, String str) {
        if (context != null) {
            Toast toast2 = toast;
            if (toast2 != null && toast2.getView() != null && ((TextView) ((LinearLayout) toast.getView()).getChildAt(0)).getText().toString().equalsIgnoreCase(str)) {
                toast.cancel();
            }
            Toast toast3 = new Toast(context);
            toast = toast3;
            toast3.setGravity(81, 0, UtilBean.getDpsAccordingScreenWidthHeight(context, 20.0f));
            toast.setDuration(1);
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, null);
            linearLayout.setBackgroundResource(R.drawable.my_toast_gradient);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, str);
            if (materialTextViewGenerateQuestionView != null) {
                materialTextViewGenerateQuestionView.setPadding(50, 20, 50, 20);
                materialTextViewGenerateQuestionView.setTextColor(ContextCompat.getColor(context, R.color.white));
                linearLayout.addView(materialTextViewGenerateQuestionView);
                toast.setView(linearLayout);
                toast.show();
            }
        }
    }

    public static Map<String, String> parseXml(String str) throws XmlPullParserException, IOException {
        if (str.contains("<?xml")) {
            int iIndexOf = str.indexOf("<?xml");
            String strSubstring = str.substring(iIndexOf, str.indexOf(SimpleComparison.GREATER_THAN_OPERATION, iIndexOf) + 1);
            Log.i(TAG, "#### Removing extra Tag " + strSubstring);
            str = str.replace(strSubstring, "");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
            XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 0) {
                    Log.d(TAG, "Start document");
                } else if (eventType == 2) {
                    Log.d(TAG, "Start tag " + xmlPullParserNewPullParser.getName());
                    int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                    for (int i = 0; i < attributeCount; i++) {
                        linkedHashMap.put(xmlPullParserNewPullParser.getAttributeName(i), xmlPullParserNewPullParser.getAttributeValue(i));
                    }
                } else if (eventType == 3) {
                    Log.d(TAG, "End tag " + xmlPullParserNewPullParser.getName());
                } else if (eventType == 4) {
                    Log.d(TAG, "Text " + xmlPullParserNewPullParser.getText());
                }
            }
            Log.d(TAG, "End document");
        } catch (IOException e) {
            Log.e(TAG, null, e);
        }
        return linkedHashMap;
    }

    public static LinkedHashMap<String, String> setQrScanFilterData(String str) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        if (str == null) {
            linkedHashMap.put("isQrCodeScan", "false");
        } else {
            for (String str2 : str.split(GlobalTypes.COMMA)) {
                String[] strArrSplit = str2.split(":");
                if (strArrSplit.length > 1) {
                    String[] strArrSplit2 = strArrSplit[0].split("\"");
                    if (strArrSplit2.length > 1) {
                        if (strArrSplit2[1].equals("hid")) {
                            linkedHashMap.put("healthId", strArrSplit[1].split("\"")[1]);
                        } else if (strArrSplit2[1].equals("hidn")) {
                            linkedHashMap.put("healthIdNumber", strArrSplit[1].split("\"")[1]);
                        }
                    }
                }
            }
            linkedHashMap.put("isQrCodeScan", "true");
        }
        return linkedHashMap;
    }
}
