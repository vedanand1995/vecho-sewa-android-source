package com.argusoft.sewa.android.app.datastructure;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.print.PrintAttributes;
import android.print.PrintManager;
import android.text.Html;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentTransaction;
import com.argusoft.sewa.android.app.component.ChildGrowthChartComponent;
import com.argusoft.sewa.android.app.component.IdentitySelectionComponent;
import com.argusoft.sewa.android.app.component.ImmunisationSelectionComponent;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.MyListInColorComponent;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.MyVaccination;
import com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent;
import com.argusoft.sewa.android.app.component.listeners.CheckBoxChangeListener;
import com.argusoft.sewa.android.app.component.listeners.TextChangeListener;
import com.argusoft.sewa.android.app.component.listeners.TextFocusChangeListener;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.List;

/* loaded from: classes.dex */
public class FormGenerator {
    private FormGenerator() {
        throw new IllegalStateException("Utility Class");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void generateQuestion(com.argusoft.sewa.android.app.datastructure.QueFormBean r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.datastructure.FormGenerator.generateQuestion(com.argusoft.sewa.android.app.datastructure.QueFormBean, android.content.Context):void");
    }

    private static View getImage(Context context, List<FieldValueMobDataBean> list) {
        if (list != null && !list.isEmpty()) {
            String str = SewaConstants.DIR_DOWNLOADED + list.get(0).getValue();
            if (UtilBean.isFileExists(str)) {
                ImageView imageView = MyStaticComponents.getImageView(context, -1, -1, null);
                imageView.setImageBitmap(BitmapFactory.decodeFile(str));
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, UtilBean.getDpsAccordingScreenHeight(context, 40)));
                imageView.setPadding(0, 0, 0, 0);
                return imageView;
            }
        }
        return MyStaticComponents.generateQuestionView(null, null, context, GlobalTypes.NO_MEDIA_FOUND);
    }

    private static View getAudio(Context context, QueFormBean queFormBean, String str) {
        return MyDynamicComponents.getAudioPlayer(context, queFormBean, str, -1);
    }

    private static View getVideo(Context context, String str) {
        return MyStaticComponents.getVideoShow(context, str, -1);
    }

    private static View getMandatoryVideo(Context context, String str, Integer num) {
        return MyStaticComponents.getMandatoryVideoShow(context, str, -1, num);
    }

    private static View buildPhtmlView(final Context context, String str, String str2) {
        final WebView webView = new WebView(context);
        webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        if (str2 != null) {
            webView.loadDataWithBaseURL(null, str2, "text/html", "UTF-8", null);
        }
        if (!RelatedPropertyNameConstants.PRESCRIPTION_CARD.equalsIgnoreCase(str)) {
            return webView;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        webView.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 650.0f, context.getResources().getDisplayMetrics())));
        linearLayout.addView(webView);
        MaterialButton materialButton = new MaterialButton(context);
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.DOWNLOAD_CARD));
        int identifier = context.getResources().getIdentifier("baseline_cloud_download_24", "drawable", context.getPackageName());
        if (identifier != 0) {
            materialButton.setIconResource(identifier);
        }
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.datastructure.FormGenerator.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str3;
                try {
                    PrintManager printManager = (PrintManager) context.getSystemService("print");
                    String str4 = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.BENEFICIARY_NAME_FOR_LOG);
                    if (str4 != null && !str4.trim().isEmpty()) {
                        str3 = "Prescription_Card_" + str4.trim();
                    } else {
                        str3 = "Prescription_Card_" + System.currentTimeMillis();
                    }
                    printManager.print(str3, webView.createPrintDocumentAdapter(str3), new PrintAttributes.Builder().build());
                } catch (Exception e) {
                    Log.e("FormGenerator", "Error downloading/printing document", e);
                }
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.setMargins(0, 20, 0, 20);
        linearLayout.addView(materialButton, layoutParams);
        return linearLayout;
    }

    private static void generateQuestionTypeView(QueFormBean queFormBean, Context context) {
        boolean z;
        int i;
        String str;
        String question;
        Object objGenerateAnswerView;
        MaterialTextView materialTextViewGenerateAnswerView;
        boolean z2;
        boolean zEqualsIgnoreCase;
        int i2;
        boolean z3;
        int i3;
        String type = queFormBean.getType();
        if (queFormBean.getIshidden().equalsIgnoreCase("T")) {
            DynamicUtils.applyFormulaForHiddenQuestion(queFormBean, true);
        } else {
            DynamicUtils.applyFormula(queFormBean, true);
        }
        if (type.equalsIgnoreCase(GlobalTypes.COMBO) || type.equalsIgnoreCase(GlobalTypes.COMBO_BOX_DYNAMIC_SELECT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getSpinner(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.AUTO_COMPLETE_DYNAMIC_SELECT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getAutoCompleteTextView(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.RADIOBUTTON)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getRadioGroup(context, queFormBean, -1, false));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CUSTOM_DATE_BOX)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getCustomDatePicker(queFormBean, context));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CUSTOM_TIME_PICKER)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getCustomTimePicker(queFormBean, context));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.AGE_BOX)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getAgeBox(context, -1, queFormBean));
            return;
        }
        String ageDisplay = "Not available";
        if (type.equalsIgnoreCase(GlobalTypes.AGE_BOX_DISPLAY)) {
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim = strTrim + queFormBean.getLoopCounter();
                }
                ageDisplay = SharedStructureData.relatedPropertyHashTable.get(strTrim);
                if (ageDisplay != null && ageDisplay.trim().length() > 0 && !ageDisplay.equalsIgnoreCase(LabelConstants.NULL)) {
                    queFormBean.setAnswer(ageDisplay);
                    String[] strArrSplit = UtilBean.split(ageDisplay, GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit.length == 3) {
                        ageDisplay = UtilBean.getAgeDisplay(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
                    }
                }
            }
            queFormBean.setQuestionTypeView(MyStaticComponents.generateAnswerView(context, ageDisplay));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.TEXT_BOX_WITH_AUDIO)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getAudioTextBox(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.TEXT_AREA)) {
            TextInputLayout editText = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), -1);
            editText.setPadding(0, -10, 0, 50);
            if (editText.getEditText() != null) {
                editText.getEditText().setOnFocusChangeListener(new TextFocusChangeListener(context, queFormBean));
            }
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim2 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim2 = strTrim2 + queFormBean.getLoopCounter();
                }
                String str2 = SharedStructureData.relatedPropertyHashTable.get(strTrim2);
                if (str2 != null) {
                    queFormBean.setAnswer(str2);
                    editText.getEditText().setText(str2);
                }
            }
            queFormBean.setQuestionTypeView(editText);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.NUMBER_TEXT_BOX_COMPONENT)) {
            TextInputLayout editText2 = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), 8194);
            editText2.setPadding(0, -20, 0, 50);
            if (editText2.getEditText() != null) {
                editText2.getEditText().setOnFocusChangeListener(new TextFocusChangeListener(context, queFormBean));
            }
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim3 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim3 = strTrim3 + queFormBean.getLoopCounter();
                }
                String str3 = SharedStructureData.relatedPropertyHashTable.get(strTrim3);
                if (str3 != null) {
                    queFormBean.setAnswer(str3);
                    editText2.getEditText().setText(str3);
                }
            }
            queFormBean.setQuestionTypeView(editText2);
            return;
        }
        TextInputLayout editTextWithSpecialCharacter = null;
        strTrim = null;
        String strTrim4 = null;
        str = null;
        String str4 = null;
        str = null;
        String str5 = null;
        str = null;
        String str6 = null;
        if (type.equalsIgnoreCase("TB") || type.equalsIgnoreCase(GlobalTypes.TEXT_BOX_WITH_SPECIAL_CHARACTERS)) {
            MyDynamicComponents.relaxMandatoryIfUnder18(queFormBean);
            List<ValidationTagBean> validations = queFormBean.getValidations();
            if (validations == null || validations.isEmpty()) {
                z = false;
                i = -1;
            } else {
                for (ValidationTagBean validationTagBean : validations) {
                    if (!validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.NUMERIC) && !validationTagBean.getMethod().equalsIgnoreCase("GreaterThen0")) {
                        if (!validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.PERSON_NAME)) {
                            if (!validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.ONLY_NUMBERS)) {
                                if (!validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.ALPHA_NUMERIC_WITH_CAPS)) {
                                    if (validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.ALPHA_NUMERIC_WITHOUT_DECIMAL)) {
                                        i = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
                                        z = true;
                                        break;
                                    }
                                } else {
                                    i = 4096;
                                }
                            } else {
                                z = false;
                                i = 2;
                                break;
                            }
                        } else {
                            i = 96;
                        }
                        z = false;
                        break;
                    }
                    z = false;
                    i = 8194;
                    break;
                }
                z = false;
                i = -1;
            }
            if (type.equalsIgnoreCase("TB")) {
                editTextWithSpecialCharacter = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), i);
            } else if (type.equalsIgnoreCase(GlobalTypes.TEXT_BOX_WITH_SPECIAL_CHARACTERS)) {
                editTextWithSpecialCharacter = MyStaticComponents.getEditTextWithSpecialCharacter(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), i);
            }
            editTextWithSpecialCharacter.setPadding(0, -20, 0, 50);
            if (editTextWithSpecialCharacter.getEditText() != null) {
                editTextWithSpecialCharacter.getEditText().setOnFocusChangeListener(new TextFocusChangeListener(context, queFormBean));
            }
            if (z) {
                editTextWithSpecialCharacter.getEditText().setFilters(new InputFilter[]{new InputFilter() { // from class: com.argusoft.sewa.android.app.datastructure.FormGenerator$$ExternalSyntheticLambda1
                    @Override // android.text.InputFilter
                    public final CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
                        return FormGenerator.lambda$generateQuestionTypeView$0(charSequence, i4, i5, spanned, i6, i7);
                    }
                }});
            }
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim5 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim5 = strTrim5 + queFormBean.getLoopCounter();
                }
                String str7 = SharedStructureData.relatedPropertyHashTable.get(strTrim5);
                if (str7 != null) {
                    queFormBean.setAnswer(str7);
                    editTextWithSpecialCharacter.getEditText().setText(str7);
                }
            }
            queFormBean.setQuestionTypeView(editTextWithSpecialCharacter);
            DynamicUtils.applyFormula(queFormBean, false);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.TEXT_BOX_CHANGE_LISTENER)) {
            List<ValidationTagBean> validations2 = queFormBean.getValidations();
            if (validations2 == null || validations2.isEmpty()) {
                i3 = -1;
            } else {
                for (ValidationTagBean validationTagBean2 : validations2) {
                    if (!validationTagBean2.getMethod().equalsIgnoreCase(FormulaConstants.NUMERIC) && !validationTagBean2.getMethod().equalsIgnoreCase("GreaterThen0")) {
                        if (validationTagBean2.getMethod().equalsIgnoreCase(FormulaConstants.ONLY_NUMBERS)) {
                            i3 = 2;
                            break;
                        }
                    } else {
                        i3 = 8194;
                        break;
                    }
                }
                i3 = -1;
            }
            TextInputLayout editText3 = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), i3);
            editText3.setPadding(0, -20, 0, 60);
            if (editText3.getEditText() != null) {
                editText3.getEditText().setOnFocusChangeListener(new TextFocusChangeListener(context, queFormBean));
                editText3.getEditText().addTextChangedListener(new TextChangeListener(editText3.getEditText(), queFormBean));
            }
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim6 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim6 = strTrim6 + queFormBean.getLoopCounter();
                }
                String str8 = SharedStructureData.relatedPropertyHashTable.get(strTrim6);
                if (str8 != null) {
                    queFormBean.setAnswer(str8 + "----");
                    editText3.getEditText().setText(str8);
                }
            }
            queFormBean.setQuestionTypeView(editText3);
            DynamicUtils.applyFormula(queFormBean, false);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.QR_SCAN)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getQRScannerView(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.PHOTO_PICKER)) {
            if (queFormBean.getLength() <= 1) {
                queFormBean.setQuestionTypeView(MyDynamicComponents.getPhotoPickerNew(queFormBean, context, -1));
                return;
            } else {
                queFormBean.setQuestionTypeView(MyDynamicComponents.getPhotoPicker(queFormBean, context, -1));
                return;
            }
        }
        if (type.equalsIgnoreCase(GlobalTypes.SHOW_VIDEO)) {
            queFormBean.setQuestionTypeView(MyStaticComponents.getVideoShow(context, queFormBean.getDatamap(), -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.SHOW_VIDEO_MANDATORY)) {
            if (queFormBean.getLoopCounter() == 0) {
                SharedStructureData.videoShownMap.put(Integer.valueOf(queFormBean.getId()), Boolean.FALSE);
                queFormBean.setQuestionTypeView(MyStaticComponents.getMandatoryVideoShow(context, queFormBean.getDatamap(), -1, Integer.valueOf(queFormBean.getId())));
                return;
            } else {
                int loopId = DynamicUtils.getLoopId(queFormBean.getId(), queFormBean.getLoopCounter());
                SharedStructureData.videoShownMap.put(Integer.valueOf(loopId), Boolean.FALSE);
                queFormBean.setQuestionTypeView(MyStaticComponents.getMandatoryVideoShow(context, queFormBean.getDatamap(), -1, Integer.valueOf(loopId)));
                return;
            }
        }
        if (type.equalsIgnoreCase(GlobalTypes.WEIGHT_BOX)) {
            if (queFormBean.getDatamap() == null || queFormBean.getDatamap().trim().length() <= 0) {
                z2 = true;
            } else {
                String[] strArrSplit2 = UtilBean.split(queFormBean.getDatamap().trim(), GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit2.length > 0) {
                    i2 = 1;
                    z3 = !strArrSplit2[0].trim().equalsIgnoreCase("TF");
                } else {
                    i2 = 1;
                    z3 = true;
                }
                if (strArrSplit2.length > i2) {
                    zEqualsIgnoreCase = strArrSplit2[i2].trim().equalsIgnoreCase("T");
                    z2 = z3;
                    if (queFormBean.getSubform() != null && queFormBean.getSubform().trim().length() > 0) {
                        strTrim4 = queFormBean.getSubform().trim();
                    }
                    queFormBean.setQuestionTypeView(MyDynamicComponents.getWeightBox(context, queFormBean, -1, z2, zEqualsIgnoreCase, strTrim4));
                    return;
                }
                z2 = z3;
            }
            zEqualsIgnoreCase = false;
            if (queFormBean.getSubform() != null) {
                strTrim4 = queFormBean.getSubform().trim();
            }
            queFormBean.setQuestionTypeView(MyDynamicComponents.getWeightBox(context, queFormBean, -1, z2, zEqualsIgnoreCase, strTrim4));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.WEIGHT_BOX_DISPLAY)) {
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim7 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim7 = strTrim7 + queFormBean.getLoopCounter();
                }
                String str9 = SharedStructureData.relatedPropertyHashTable.get(strTrim7);
                if (str9 != null && str9.trim().length() != 0 && !str9.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                    queFormBean.setAnswer(str9);
                    ageDisplay = str9;
                }
            }
            queFormBean.setQuestionTypeView(MyStaticComponents.generateAnswerView(context, UtilBean.setWeightDisplay(ageDisplay)));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.TEMPERATURE_BOX)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getTemperatureBox(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.LABEL_FORMULA)) {
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim8 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim8 = strTrim8 + queFormBean.getLoopCounter();
                }
                str4 = strTrim8;
                String str10 = SharedStructureData.relatedPropertyHashTable.get(str4);
                if (str10 != null && str10.trim().length() != 0 && !str10.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                    queFormBean.setAnswer(str10);
                    ageDisplay = str10;
                }
                if (str4.equalsIgnoreCase(RelatedPropertyNameConstants.VISIT_HISTORY)) {
                    ageDisplay = SharedStructureData.currentNotificationOtherDetails;
                }
            }
            if (str4 != null && str4.equalsIgnoreCase("malnutritionGrade")) {
                materialTextViewGenerateAnswerView = MyStaticComponents.getMaterialTextView(context, ageDisplay, -1, -1, false);
                if (materialTextViewGenerateAnswerView != null) {
                    materialTextViewGenerateAnswerView.setPadding(30, 0, 0, 0);
                }
            } else {
                materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, ageDisplay);
            }
            if (ageDisplay != null && ageDisplay.contains(SimpleComparison.LESS_THAN_OPERATION)) {
                if (Build.VERSION.SDK_INT >= 24) {
                    materialTextViewGenerateAnswerView.setText(Html.fromHtml(ageDisplay, 0));
                } else {
                    materialTextViewGenerateAnswerView.setText(Html.fromHtml(ageDisplay));
                }
            }
            queFormBean.setQuestionTypeView(materialTextViewGenerateAnswerView);
            if (queFormBean.getLoopCounter() == 0) {
                SharedStructureData.currentMemberUHId = SharedStructureData.relatedPropertyHashTable.get("uniqueHealthId");
            } else {
                SharedStructureData.currentMemberUHId = SharedStructureData.relatedPropertyHashTable.get("uniqueHealthId" + queFormBean.getLoopCounter());
            }
            DynamicUtils.applyFormula(queFormBean, true);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.PHTML)) {
            if (queFormBean.getRelatedpropertyname() != null && !queFormBean.getRelatedpropertyname().trim().isEmpty()) {
                String strTrim9 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim9 = strTrim9 + queFormBean.getLoopCounter();
                }
                str5 = strTrim9;
                String str11 = SharedStructureData.relatedPropertyHashTable.get(str5);
                if (str11 != null && !str11.trim().isEmpty() && !str11.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                    queFormBean.setAnswer(str11);
                    ageDisplay = str11;
                }
                if (str5.equalsIgnoreCase(RelatedPropertyNameConstants.VISIT_HISTORY)) {
                    ageDisplay = SharedStructureData.currentNotificationOtherDetails;
                }
            }
            try {
                objGenerateAnswerView = buildPhtmlView(context, str5, ageDisplay);
            } catch (Throwable th) {
                Log.e("FormGenerator", "WebView unavailable, falling back to plain text for PHTML question " + queFormBean.getId(), th);
                objGenerateAnswerView = MyStaticComponents.generateAnswerView(context, ageDisplay);
            }
            queFormBean.setQuestionTypeView(objGenerateAnswerView);
            if (queFormBean.getLoopCounter() == 0) {
                SharedStructureData.currentMemberUHId = SharedStructureData.relatedPropertyHashTable.get("uniqueHealthId");
            } else {
                SharedStructureData.currentMemberUHId = SharedStructureData.relatedPropertyHashTable.get("uniqueHealthId" + queFormBean.getLoopCounter());
            }
            DynamicUtils.applyFormula(queFormBean, true);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.MULTI_SELECT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getCheckBoxInGroup(context, queFormBean, -1, new CheckBoxChangeListener(queFormBean, true, false)));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.SINGLE_CHECK_BOX)) {
            List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
            if (!optionsOrDataMap.isEmpty()) {
                question = optionsOrDataMap.get(0).getValue();
            } else {
                question = queFormBean.getQuestion();
            }
            String ismandatory = queFormBean.getIsmandatory();
            boolean z4 = ismandatory != null && ismandatory.equalsIgnoreCase("T");
            MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, question, -1, z4);
            checkBox.setOnCheckedChangeListener(new CheckBoxChangeListener(queFormBean, false, z4));
            if (queFormBean.getRelatedpropertyname() != null) {
                String relatedpropertyname = queFormBean.getRelatedpropertyname();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    relatedpropertyname = relatedpropertyname + queFormBean.getLoopCounter();
                }
                String str12 = SharedStructureData.relatedPropertyHashTable.get(relatedpropertyname);
                if (str12 != null) {
                    checkBox.setChecked(false);
                    if (str12.equals("T")) {
                        checkBox.setChecked(true);
                    }
                }
            }
            queFormBean.setQuestionTypeView(checkBox);
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.BLOOD_PRESSURE_MEASUREMENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getBloodPressureBox(context, queFormBean, -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.PLAY_AUDIO)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getAudioPlayer(context, queFormBean, queFormBean.getDatamap(), -1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CALL)) {
            queFormBean.setIsmandatory("F");
            if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
                String strTrim10 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim10 = strTrim10 + queFormBean.getLoopCounter();
                }
                str6 = SharedStructureData.relatedPropertyHashTable.get(strTrim10);
            }
            if (str6 == null) {
                str6 = "108";
            }
            queFormBean.setQuestionTypeView(MyStaticComponents.getCallView(context, UtilBean.getMyLabel(str6), -1, 1));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.LABEL)) {
            queFormBean.setIsmandatory("F");
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.LIST_IN_COLOR)) {
            if (queFormBean.getRelatedpropertyname() == null || queFormBean.getRelatedpropertyname().trim().length() <= 0) {
                str = null;
            } else {
                String strTrim11 = queFormBean.getRelatedpropertyname().trim();
                if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                    strTrim11 = strTrim11 + queFormBean.getLoopCounter();
                }
                str = SharedStructureData.relatedPropertyHashTable.get(strTrim11);
            }
            if (str != null && str.trim().length() > 0 && !str.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                if (queFormBean.getDatamap() == null || !queFormBean.getDatamap().trim().equalsIgnoreCase("T")) {
                    return;
                }
                queFormBean.setQuestionTypeView(new MyListInColorComponent(context, SharedStructureData.getListOfLIC()));
                return;
            }
            queFormBean.setQuestionTypeView(new MyListInColorComponent(context, null));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.VACCINATIONS_TYPE)) {
            PageFormBean pageFromNext = DynamicUtils.getPageFromNext(DynamicUtils.getLoopId(queFormBean));
            if (pageFromNext != null) {
                pageFromNext.setIsVaccinations(true);
                pageFromNext.setMyVaccination(new MyVaccination(context, queFormBean));
                queFormBean.setQuestionTypeView(pageFromNext.getMyVaccination().getVaccinationView());
                return;
            }
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.SIMPLE_RADIO_DATE)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getRadioButtonDate(context, queFormBean, null, queFormBean.getDatamap()));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CHECKBOX_TEXT_BOX)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getCheckBoxWithTextBox(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.MEMBERS_LIST_COMPONENT)) {
            queFormBean.setQuestionTypeView(UtilBean.getMembersListForDisplay(context, null));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.LEPROSY_CASE_DYNAMIC_MEMBER_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getMembersListForLCDCCampaign(context, SharedStructureData.currentFamilyDataBean, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.FILARIASIS_MEMBER_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getMembersListViewForFilariasisCampaign(context, SharedStructureData.currentFamilyDataBean, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.MEMBER_FULL_NAME_COMPONENT)) {
            queFormBean.setQuestionTypeView(UtilBean.getMemberFullNameForDisplay(context));
            return;
        }
        if (type.equalsIgnoreCase("MCR")) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getMotherChildRelationshipView(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.ORAL_SCREENING_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getOralScreeningComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.BREAST_SCREENING_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getBreastScreeningComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase("BMI")) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getBMIComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.BMI_COMPONENT_ADOLESCENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getBMIComponentAdolescent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase("HB")) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHBComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.HEALTH_INFRASTRUCTURE_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHealthInfrastructureComponent(context, queFormBean, SharedStructureData.formType));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.HEALTH_INFRASTRUCTURE_COMPONENT_NPCB)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHealthInfrastructureComponentNPCB(context, queFormBean, SharedStructureData.formType));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.HUSBAND_WIFE_RELATIONSHIP)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHusbandWifeRelationshipView(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.IMMUNISATION_GIVEN_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getNewImmunisationGivenComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CHILD_GROWTH_CHART_COMPONENT)) {
            queFormBean.setQuestionTypeView(new ChildGrowthChartComponent(context, SharedStructureData.currentRchMemberBean));
            return;
        }
        if (type.equalsIgnoreCase("SC")) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getSchoolComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.REGION_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getRegionComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.VILLAGE_SEARCH_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getVillageSearchComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.LOCATION_DRILL_DOWN_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getLocationDrillDownComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.OTP_BASED_VERIFICATION_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getOTPBasedVerificationComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.FORM_SUBMISSION_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getFormSubmissionComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.MEMBER_DETAILS_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getMemberDetailsComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.OPENRDTREADER_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getORDTComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.HEALTH_ID_MANAGEMENT_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHealthIdManagementView(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.HEALTH_INFRASTRUCTURE_TYPE_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getHealthInfrastructureTypeComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.ABHA_RECORD_LINK_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getAbhaRecordLinkView(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.VISION_COMPONENT)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getVisionComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.IMMUNISATION_SELECTION_COMPONENT)) {
            PageFormBean pageFromNext2 = DynamicUtils.getPageFromNext(DynamicUtils.getLoopId(queFormBean));
            ImmunisationSelectionComponent immunisationSelectionComponent = new ImmunisationSelectionComponent(context, queFormBean);
            if (pageFromNext2 != null) {
                pageFromNext2.setImmunisationSelectionComponent(immunisationSelectionComponent);
                queFormBean.setQuestionTypeView(immunisationSelectionComponent);
                return;
            }
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.IDENTITY_SELECTION_COMPONENT)) {
            queFormBean.setQuestionTypeView(new IdentitySelectionComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.CHECKBOX_TEXT_BOX_AADHAAR)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getCheckBoxWithTextBoxAadhaar(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.ANC_TEST_SELECTION)) {
            queFormBean.setQuestionTypeView(MyDynamicComponents.getTestSelectorComponent(context, queFormBean));
            return;
        }
        if (type.equalsIgnoreCase(GlobalTypes.VBDS_LARVA_FAMILY_COMPONENT)) {
            queFormBean.setQuestionTypeView(new VbdsLarvaContainerComponent(context, queFormBean));
            return;
        }
        Log.i("FormGenerator", "###########################" + type + "########## not handled");
    }

    static /* synthetic */ CharSequence lambda$generateQuestionTypeView$0(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        while (i < i2) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i))) {
                return "";
            }
            i++;
        }
        return null;
    }
}
