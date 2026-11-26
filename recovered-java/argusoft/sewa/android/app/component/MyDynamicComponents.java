package com.argusoft.sewa.android.app.component;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity_;
import com.argusoft.sewa.android.app.activity.CustomPhotoCaptureActivity_;
import com.argusoft.sewa.android.app.activity.DynamicFormActivity;
import com.argusoft.sewa.android.app.activity.NDHMHealthIdManagementActivity_;
import com.argusoft.sewa.android.app.component.LocationDrillDownComponent;
import com.argusoft.sewa.android.app.component.MyDynamicComponents;
import com.argusoft.sewa.android.app.component.listeners.AudioPlayerListener;
import com.argusoft.sewa.android.app.component.listeners.AudioTextBoxListener;
import com.argusoft.sewa.android.app.component.listeners.BloodPresserChangedListener;
import com.argusoft.sewa.android.app.component.listeners.CheckBoxWithTextBoxAadhaarListener;
import com.argusoft.sewa.android.app.component.listeners.CheckBoxWithTextBoxListener;
import com.argusoft.sewa.android.app.component.listeners.ComboChangeListener;
import com.argusoft.sewa.android.app.component.listeners.FilariasisMemberListener;
import com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListener;
import com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB;
import com.argusoft.sewa.android.app.component.listeners.LCDCMemberListener;
import com.argusoft.sewa.android.app.component.listeners.ORDTTestStartListner;
import com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener;
import com.argusoft.sewa.android.app.component.listeners.RadioButtonDateListener;
import com.argusoft.sewa.android.app.component.listeners.RegionListListener;
import com.argusoft.sewa.android.app.component.listeners.SchoolListListener;
import com.argusoft.sewa.android.app.component.listeners.SimulationsAudioPlayerListener;
import com.argusoft.sewa.android.app.component.listeners.TemperatureBoxListener;
import com.argusoft.sewa.android.app.component.listeners.TimeChangeListener;
import com.argusoft.sewa.android.app.component.listeners.VillageSearchListener;
import com.argusoft.sewa.android.app.component.listeners.VisionComponentListener;
import com.argusoft.sewa.android.app.component.listeners.WeightBoxChangeListener;
import com.argusoft.sewa.android.app.constants.ActivityConstants;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.FullFormConstants;
import com.argusoft.sewa.android.app.constants.HealthInfraConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RchConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.FormulaTagBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.OptionTagBean;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.qrscanner.QRScannerActivity;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.firebase.messaging.ServiceStarter;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.google.zxing.integration.android.IntentIntegrator;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.joda.time.LocalDate;
import org.joda.time.Years;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MyDynamicComponents {
    private static final String OPTIONAL_IF_UNDER_18_FLAG = "optionalIfUnder18";
    private static boolean moreDetailsDisplayed = false;

    private MyDynamicComponents() {
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.RadioGroup getRadioGroup(android.content.Context r10, com.argusoft.sewa.android.app.datastructure.QueFormBean r11, int r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyDynamicComponents.getRadioGroup(android.content.Context, com.argusoft.sewa.android.app.datastructure.QueFormBean, int, boolean):android.widget.RadioGroup");
    }

    public static LinearLayout getMembersListForLCDCCampaign(Context context, FamilyDataBean familyDataBean, QueFormBean queFormBean) {
        List<MemberDataBean> listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(16, 16, 16, 16);
        if (queFormBean.getDatamap() != null && queFormBean.getDatamap().equalsIgnoreCase("lcdc")) {
            listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId = SharedStructureData.sewaFhsService.retrieveLCDCEligibleMembersByFamilyId(familyDataBean.getFamilyId());
        } else {
            listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId = SharedStructureData.sewaFhsService.retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(familyDataBean.getFamilyId());
        }
        if (listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId == null || listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId.isEmpty()) {
            MaterialTextView materialTextView = new MaterialTextView(context, null, R.style.CustomAnswerView);
            materialTextView.setText(UtilBean.getMyLabel("No eligible members left in the family"));
            linearLayout.addView(materialTextView);
            return linearLayout;
        }
        LCDCMemberListener lCDCMemberListener = new LCDCMemberListener(context, queFormBean, listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId.size());
        for (MemberDataBean memberDataBean : listRetrieveMemberDataBeansExceptArchivedAndDeadByFamilyId) {
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.setPadding(5, 5, 5, 10);
            linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, UtilBean.getMemberFullName(memberDataBean) + " (" + memberDataBean.getUniqueHealthId() + ")", -1, R.style.CustomBoldAnswerView, false));
            RadioGroup radioGroup = new RadioGroup(context);
            radioGroup.setOrientation(0);
            radioGroup.setTag(memberDataBean);
            radioGroup.setPadding(0, 0, 0, 0);
            MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("Yes"), View.generateViewId());
            radioButton.setTag(1);
            MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("No"), View.generateViewId());
            radioButton2.setTag(2);
            MaterialRadioButton radioButton3 = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("Not available"), View.generateViewId());
            radioButton3.setTag(3);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-2, -2);
            radioButton.setLayoutParams(layoutParams);
            radioButton2.setLayoutParams(layoutParams);
            radioButton3.setLayoutParams(layoutParams);
            radioGroup.addView(radioButton);
            radioGroup.addView(radioButton2);
            radioGroup.addView(radioButton3);
            radioGroup.setOnCheckedChangeListener(lCDCMemberListener);
            linearLayout2.addView(radioGroup);
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    public static LinearLayout getMembersListViewForFilariasisCampaign(Context context, FamilyDataBean familyDataBean, QueFormBean queFormBean) {
        int i = 1;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(16, 16, 16, 16);
        List<MemberDataBean> listRetrieveMemberDataBeansForFilariasisByFamilyId = SharedStructureData.sewaFhsService.retrieveMemberDataBeansForFilariasisByFamilyId(familyDataBean.getFamilyId());
        if (listRetrieveMemberDataBeansForFilariasisByFamilyId == null || listRetrieveMemberDataBeansForFilariasisByFamilyId.isEmpty()) {
            MaterialTextView materialTextView = new MaterialTextView(context, null, R.style.CustomAnswerView);
            materialTextView.setText(UtilBean.getMyLabel("No eligible members left in the family"));
            linearLayout.addView(materialTextView);
            return linearLayout;
        }
        final FilariasisMemberListener filariasisMemberListener = new FilariasisMemberListener(context, queFormBean, listRetrieveMemberDataBeansForFilariasisByFamilyId.size());
        for (final MemberDataBean memberDataBean : listRetrieveMemberDataBeansForFilariasisByFamilyId) {
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, i, new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.setPadding(5, 5, 5, 10);
            linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, UtilBean.getMemberFullName(memberDataBean) + " (" + memberDataBean.getUniqueHealthId() + ")", -1, R.style.CustomBoldAnswerView, false));
            RadioGroup radioGroup = new RadioGroup(context);
            radioGroup.setOrientation(0);
            radioGroup.setPadding(0, 0, 0, 0);
            MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("Yes"), View.generateViewId());
            radioButton.setTag(Integer.valueOf(i));
            MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("No"), View.generateViewId());
            radioButton2.setTag(2);
            MaterialRadioButton radioButton3 = MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel("Not available"), View.generateViewId());
            radioButton3.setTag(3);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-2, -2);
            radioButton.setLayoutParams(layoutParams);
            radioButton2.setLayoutParams(layoutParams);
            radioButton3.setLayoutParams(layoutParams);
            radioGroup.addView(radioButton);
            radioGroup.addView(radioButton2);
            radioGroup.addView(radioButton3);
            linearLayout2.addView(radioGroup);
            TextInputLayout textInputLayout = new TextInputLayout(context);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(60, 12, 0, 12);
            textInputLayout.setLayoutParams(layoutParams2);
            textInputLayout.setBoxBackgroundMode(2);
            textInputLayout.setHint(UtilBean.getMyLabel("Reason"));
            textInputLayout.setHintEnabled(true);
            TextInputEditText textInputEditText = new TextInputEditText(context);
            textInputEditText.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            textInputEditText.setMinLines(1);
            textInputEditText.setMaxLines(3);
            textInputEditText.setPadding(18, 14, 18, 14);
            textInputLayout.addView(textInputEditText);
            textInputLayout.setVisibility(8);
            linearLayout2.addView(textInputLayout);
            radioGroup.setTag(new FilariasisMemberListener.MemberViewHolder(memberDataBean, textInputLayout, textInputEditText));
            radioGroup.setOnCheckedChangeListener(filariasisMemberListener);
            textInputEditText.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    filariasisMemberListener.onReasonChanged(memberDataBean.getUniqueHealthId(), charSequence.toString());
                }
            });
            linearLayout.addView(linearLayout2);
            i = 1;
        }
        return linearLayout;
    }

    public static View getCheckBoxWithTextBox(Context context, QueFormBean queFormBean) {
        int i;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        CheckBoxWithTextBoxListener checkBoxWithTextBoxListener = new CheckBoxWithTextBoxListener(queFormBean);
        String datamap = queFormBean.getDatamap();
        if (datamap == null) {
            datamap = "Not available";
        }
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, datamap, IdConstants.CHECKBOX_WITH_TEXT_BOX_CHECKBOX_ID, false);
        checkBox.setOnCheckedChangeListener(checkBoxWithTextBoxListener);
        checkBox.setTextColor(ContextCompat.getColorStateList(context, R.color.checkbox_selector));
        linearLayout.addView(checkBox);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, IdConstants.CHECKBOX_WITH_TEXT_BOX_INPUT_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        List<ValidationTagBean> validations = queFormBean.getValidations();
        if (validations == null || validations.isEmpty()) {
            i = -1;
        } else {
            for (ValidationTagBean validationTagBean : validations) {
                if (validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.NUMERIC) || validationTagBean.getMethod().equalsIgnoreCase("GreaterThen0") || validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.ONLY_NUMBERS)) {
                    i = 2;
                    break;
                }
            }
            i = -1;
        }
        TextInputLayout editText = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), -1, queFormBean.getLength(), i);
        if (editText.getEditText() != null) {
            editText.getEditText().setOnFocusChangeListener(checkBoxWithTextBoxListener);
        }
        if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
            String strTrim = queFormBean.getRelatedpropertyname().trim();
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                strTrim = strTrim + queFormBean.getLoopCounter();
            }
            String str = SharedStructureData.relatedPropertyHashTable.get(strTrim);
            if (str != null) {
                queFormBean.setAnswer(str);
                editText.getEditText().setText(str);
            }
        }
        if (SharedStructureData.formType != null && SharedStructureData.formType.equals("FHS") && Boolean.TRUE.equals(SharedStructureData.isAadharNumberScanned) && queFormBean.getId() == 14) {
            checkBox.setClickable(false);
            editText.setClickable(false);
            editText.setFocusable(false);
        }
        linearLayout2.addView(editText);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public static LinearLayout getCheckBoxInGroup(Context context, QueFormBean queFormBean, int i, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        String str;
        int i2;
        MaterialCheckBox checkBox;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        List<String> listFromStringBySeparator = null;
        if (queFormBean == null || queFormBean.getRelatedpropertyname() == null || queFormBean.getRelatedpropertyname().trim().length() <= 0) {
            str = null;
        } else {
            String strTrim = queFormBean.getRelatedpropertyname().trim();
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                strTrim = strTrim + queFormBean.getLoopCounter();
            }
            str = SharedStructureData.relatedPropertyHashTable.get(strTrim);
            if (str != null) {
                listFromStringBySeparator = UtilBean.getListFromStringBySeparator(str, GlobalTypes.COMMA);
            }
        }
        List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        if (!optionsOrDataMap.isEmpty() && !optionsOrDataMap.get(0).getKey().equalsIgnoreCase(GlobalTypes.NO_OPTION_AVAILABLE)) {
            int i3 = 0;
            for (OptionDataBean optionDataBean : optionsOrDataMap) {
                if (listFromStringBySeparator != null && !listFromStringBySeparator.isEmpty() && listFromStringBySeparator.contains(optionDataBean.getKey())) {
                    i2 = i3 + 1;
                    checkBox = MyStaticComponents.getCheckBox(context, optionDataBean.getValue(), i3, true);
                } else {
                    i2 = i3 + 1;
                    checkBox = MyStaticComponents.getCheckBox(context, optionDataBean.getValue(), i3, false);
                }
                checkBox.setTextColor(ContextCompat.getColorStateList(context, R.color.checkbox_selector));
                checkBox.setPadding(0, 20, 0, 20);
                checkBox.setOnCheckedChangeListener(onCheckedChangeListener);
                linearLayout.addView(checkBox);
                linearLayout.addView(MyStaticComponents.getSeparator(context));
                i3 = i2;
            }
            if (queFormBean != null) {
                queFormBean.setAnswer(str);
            }
        } else if (listFromStringBySeparator != null && !listFromStringBySeparator.isEmpty()) {
            Iterator<String> it = listFromStringBySeparator.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                int i5 = i4 + 1;
                MaterialCheckBox checkBox2 = MyStaticComponents.getCheckBox(context, it.next(), i4, false);
                checkBox2.setOnCheckedChangeListener(onCheckedChangeListener);
                linearLayout.addView(checkBox2);
                i4 = i5;
            }
        } else {
            linearLayout.addView(MyStaticComponents.generateAnswerView(context, GlobalTypes.NO_OPTION_AVAILABLE));
        }
        if (i != -1) {
            linearLayout.setId(i);
        }
        return linearLayout;
    }

    public static LinearLayout getFormSubmissionComponent(final Context context, final QueFormBean queFormBean) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.form_submission_component, (ViewGroup) null);
        MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.submitButton);
        MaterialButton materialButton2 = (MaterialButton) linearLayout.findViewById(R.id.reviewButton);
        final OptionTagBean optionTagBean = queFormBean.getOptions().get(0);
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                queFormBean.setNext(optionTagBean.getNext());
                queFormBean.setAnswer(optionTagBean.getKey());
                ((DynamicFormActivity) context).getFormEngine().navigateToNextPage();
            }
        });
        final OptionTagBean optionTagBean2 = queFormBean.getOptions().get(1);
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                queFormBean.setNext(optionTagBean2.getNext());
                queFormBean.setAnswer(optionTagBean2.getKey());
                ((DynamicFormActivity) context).getFormEngine().navigateToNextPage();
            }
        });
        return linearLayout;
    }

    public static LinearLayout getCustomTimePicker(QueFormBean queFormBean, Context context) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 0, null);
        linearLayout.setGravity(16);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, "Select time");
        materialTextViewGenerateAnswerView.setId(IdConstants.DATE_PICKER_TEXT_DATE_ID);
        materialTextViewGenerateAnswerView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 200.0f));
        linearLayout.addView(materialTextViewGenerateAnswerView);
        ImageView imageView = MyStaticComponents.getImageView(context, 2, R.drawable.ic_timepicker, null);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0f));
        linearLayout.addView(imageView);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            linearLayout.setBackground(context.getDrawable(R.drawable.training_custom_datepicker));
        } else {
            linearLayout.setBackground(context.getDrawable(R.drawable.custom_datepicker));
        }
        linearLayout.setOnClickListener(new TimeChangeListener(queFormBean, context));
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).setMargins(0, 0, 0, 50);
        return linearLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.LinearLayout getCustomDatePicker(com.argusoft.sewa.android.app.datastructure.QueFormBean r9, android.content.Context r10) throws java.lang.NumberFormatException {
        /*
            r0 = -1
            r1 = 0
            r2 = 0
            android.widget.LinearLayout r3 = com.argusoft.sewa.android.app.component.MyStaticComponents.getLinearLayout(r10, r0, r1, r2)
            java.lang.String r4 = r9.getRelatedpropertyname()
            if (r4 == 0) goto L5a
            java.lang.String r4 = r9.getRelatedpropertyname()
            int r5 = r9.getLoopCounter()
            if (r5 <= 0) goto L30
            boolean r5 = r9.isIgnoreLoop()
            if (r5 != 0) goto L30
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r4)
            int r4 = r9.getLoopCounter()
            r5.append(r4)
            java.lang.String r4 = r5.toString()
        L30:
            java.util.Map<java.lang.String, java.lang.String> r5 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            java.lang.Object r4 = r5.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            if (r4 == 0) goto L5a
            long r4 = java.lang.Long.parseLong(r4)
            java.text.SimpleDateFormat r6 = new java.text.SimpleDateFormat
            java.lang.String r7 = "dd/MM/yyyy"
            java.util.Locale r8 = java.util.Locale.getDefault()
            r6.<init>(r7, r8)
            java.util.Date r7 = new java.util.Date
            r7.<init>(r4)
            java.lang.String r6 = r6.format(r7)
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r9.setAnswer(r4)
            goto L5c
        L5a:
            java.lang.String r6 = "Select date"
        L5c:
            com.google.android.material.textview.MaterialTextView r4 = com.argusoft.sewa.android.app.component.MyStaticComponents.generateAnswerView(r10, r6)
            r5 = 10001(0x2711, float:1.4014E-41)
            r4.setId(r5)
            android.widget.LinearLayout$LayoutParams r5 = new android.widget.LinearLayout$LayoutParams
            r6 = 1128792064(0x43480000, float:200.0)
            r7 = -2
            r5.<init>(r7, r7, r6)
            r4.setLayoutParams(r5)
            r3.addView(r4)
            r4 = 2
            int r5 = com.argusoft.sewa.android.app.R.drawable.ic_calender
            android.widget.ImageView r2 = com.argusoft.sewa.android.app.component.MyStaticComponents.getImageView(r10, r4, r5, r2)
            android.widget.LinearLayout$LayoutParams r4 = new android.widget.LinearLayout$LayoutParams
            r5 = 1065353216(0x3f800000, float:1.0)
            r4.<init>(r7, r7, r5)
            r2.setLayoutParams(r4)
            r3.addView(r2)
            int r2 = com.argusoft.sewa.android.app.util.SewaUtil.CURRENT_THEME
            int r4 = com.argusoft.sewa.android.app.R.style.techo_training_app
            if (r2 != r4) goto L97
            int r2 = com.argusoft.sewa.android.app.R.drawable.training_custom_datepicker
            android.graphics.drawable.Drawable r2 = r10.getDrawable(r2)
            r3.setBackground(r2)
            goto La0
        L97:
            int r2 = com.argusoft.sewa.android.app.R.drawable.custom_datepicker
            android.graphics.drawable.Drawable r2 = r10.getDrawable(r2)
            r3.setBackground(r2)
        La0:
            com.argusoft.sewa.android.app.component.listeners.DateChangeListener r2 = new com.argusoft.sewa.android.app.component.listeners.DateChangeListener
            r2.<init>(r9, r10)
            r3.setOnClickListener(r2)
            java.lang.String r10 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.formType
            if (r10 == 0) goto Lcb
            java.lang.String r10 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.formType
            java.lang.String r2 = "FHS"
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto Lcb
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            java.lang.Boolean r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.isDobScannedFromAadhar
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto Lcb
            int r9 = r9.getId()
            r10 = 17
            if (r9 != r10) goto Lcb
            r3.setClickable(r1)
        Lcb:
            android.widget.RelativeLayout$LayoutParams r9 = new android.widget.RelativeLayout$LayoutParams
            r9.<init>(r0, r7)
            r3.setLayoutParams(r9)
            android.view.ViewGroup$LayoutParams r9 = r3.getLayoutParams()
            android.widget.RelativeLayout$LayoutParams r9 = (android.widget.RelativeLayout.LayoutParams) r9
            r10 = 50
            r9.setMargins(r1, r1, r1, r10)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyDynamicComponents.getCustomDatePicker(com.argusoft.sewa.android.app.datastructure.QueFormBean, android.content.Context):android.widget.LinearLayout");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.argusoft.sewa.android.app.component.MyDynamicComponents$4] */
    public static View getQRScannerView(Context context, QueFormBean queFormBean, int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, layoutParams);
        if (i != -1) {
            linearLayout.setId(i);
        }
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.qr_scan, null);
        linearLayout.addView(imageView);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, " ");
        materialTextViewGenerateAnswerView.setId(GlobalTypes.QR_SCAN_ACTIVITY);
        materialTextViewGenerateAnswerView.setVisibility(8);
        linearLayout.addView(materialTextViewGenerateAnswerView, layoutParams);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.4
            private Activity activity;
            private int currentQuestionId;

            public View.OnClickListener setActivity(Activity activity, int i2) {
                this.activity = activity;
                this.currentQuestionId = i2;
                return this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    SharedStructureData.currentQuestion = this.currentQuestionId;
                    IntentIntegrator intentIntegrator = new IntentIntegrator(this.activity);
                    intentIntegrator.setCaptureActivity(QRScannerActivity.class);
                    intentIntegrator.initiateScan();
                } catch (Exception e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
        }.setActivity((Activity) context, DynamicUtils.getLoopId(queFormBean)));
        return linearLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x011e A[PHI: r6
      0x011e: PHI (r6v1 java.lang.String[]) = 
      (r6v0 java.lang.String[])
      (r6v0 java.lang.String[])
      (r6v3 java.lang.String[])
      (r6v3 java.lang.String[])
      (r6v3 java.lang.String[])
     binds: [B:17:0x0050, B:19:0x0056, B:26:0x0084, B:39:0x00cd, B:41:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.Spinner getSpinner(android.content.Context r11, com.argusoft.sewa.android.app.datastructure.QueFormBean r12, int r13) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyDynamicComponents.getSpinner(android.content.Context, com.argusoft.sewa.android.app.datastructure.QueFormBean, int):android.widget.Spinner");
    }

    public static LinearLayout getHealthInfrastructureComponent(Context context, QueFormBean queFormBean, String str) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10025, 1, new LinearLayout.LayoutParams(-1, -1));
        Map<Long, String> mapRetrieveDistinctHealthInfraType = SharedStructureData.healthInfrastructureService.retrieveDistinctHealthInfraType();
        String[] strArr = new String[mapRetrieveDistinctHealthInfraType.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        Iterator<Map.Entry<Long, String>> it = mapRetrieveDistinctHealthInfraType.entrySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getValue();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(context, strArr, 0, IdConstants.HEALTH_INFRA_TYPE_SELECTION_SPINNER_ID);
        spinner.setOnItemSelectedListener(new HealthInfrastructureListener(context, queFormBean, linearLayout, spinner, mapRetrieveDistinctHealthInfraType, str));
        linearLayout.addView(spinner);
        return linearLayout;
    }

    public static LinearLayout getHealthInfrastructureComponentNPCB(Context context, QueFormBean queFormBean, String str) {
        int i = 1;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10025, 1, new LinearLayout.LayoutParams(-1, -1));
        Map<Long, String> mapRetrieveDistinctHealthInfraType = SharedStructureData.healthInfrastructureService.retrieveDistinctHealthInfraType();
        List listAsList = Arrays.asList(HealthInfraConstants.INFRA_TYPE_MEDICAL_COLLEGE_HOSPITAL, "Distrct Hospital", "Sub District Hospital", "Trust Hospital", "Private Hospital", "PMJAY Hospital");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            HashSet hashSet = new HashSet(Collections.singletonList((String) it.next()));
            for (Map.Entry<Long, String> entry : mapRetrieveDistinctHealthInfraType.entrySet()) {
                if (!linkedHashMap.containsKey(entry.getKey()) && isSimilarInfraType(entry.getValue(), hashSet)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
        }
        String[] strArr = new String[linkedHashMap.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        Iterator it2 = linkedHashMap.values().iterator();
        while (it2.hasNext()) {
            strArr[i] = (String) it2.next();
            i++;
        }
        Spinner spinner = MyStaticComponents.getSpinner(context, strArr, 0, IdConstants.HEALTH_INFRA_TYPE_SELECTION_SPINNER_ID);
        spinner.setOnItemSelectedListener(new HealthInfrastructureListenerNPCB(context, queFormBean, linearLayout, spinner, linkedHashMap, str));
        linearLayout.addView(spinner);
        return linearLayout;
    }

    private static boolean isSimilarInfraType(String str, Set<String> set) {
        String strNormalizeInfraType = normalizeInfraType(str);
        if (strNormalizeInfraType.isEmpty()) {
            return false;
        }
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            String strNormalizeInfraType2 = normalizeInfraType(it.next());
            if (!strNormalizeInfraType2.isEmpty() && (strNormalizeInfraType.contains(strNormalizeInfraType2) || strNormalizeInfraType2.contains(strNormalizeInfraType) || levenshteinDistance(strNormalizeInfraType, strNormalizeInfraType2) <= 2)) {
                return true;
            }
        }
        return false;
    }

    private static String normalizeInfraType(String str) {
        return str == null ? "" : str.toLowerCase(Locale.getDefault()).replaceAll("[^a-z0-9]", "");
    }

    private static int levenshteinDistance(String str, String str2) {
        int[] iArr = new int[str2.length() + 1];
        int[] iArr2 = new int[str2.length() + 1];
        for (int i = 0; i <= str2.length(); i++) {
            iArr[i] = i;
        }
        int i2 = 1;
        while (i2 <= str.length()) {
            iArr2[0] = i2;
            for (int i3 = 1; i3 <= str2.length(); i3++) {
                int i4 = i3 - 1;
                iArr2[i3] = Math.min(Math.min(iArr2[i4] + 1, iArr[i3] + 1), iArr[i4] + (str.charAt(i2 + (-1)) == str2.charAt(i4) ? 0 : 1));
            }
            i2++;
            int[] iArr3 = iArr2;
            iArr2 = iArr;
            iArr = iArr3;
        }
        return iArr[str2.length()];
    }

    public static LinearLayout getOralScreeningComponent(Context context, final QueFormBean queFormBean) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, IdConstants.DATE_PICKER_TEXT_DATE_ID, 1, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setGravity(17);
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.oral_examlayout, linearLayout);
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                String string = compoundButton.getTag().toString();
                if (z) {
                    linkedHashSet.add(string);
                } else {
                    linkedHashSet.remove(string);
                }
                queFormBean.setAnswer(UtilBean.stringListJoin(linkedHashSet, GlobalTypes.COMMA));
            }
        };
        for (int i = 1; i < 17; i++) {
            ((CheckBox) viewInflate.findViewById(context.getResources().getIdentifier("oral_chkBox" + i, "id", context.getPackageName()))).setOnCheckedChangeListener(onCheckedChangeListener);
        }
        return linearLayout;
    }

    public static LinearLayout getBreastScreeningComponent(Context context, final QueFormBean queFormBean) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, IdConstants.DATE_PICKER_TEXT_DATE_ID, 1, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setGravity(17);
        View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.breast_exam_layout, linearLayout);
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                String string = compoundButton.getTag().toString();
                if (z) {
                    linkedHashSet.add(string);
                } else {
                    linkedHashSet.remove(string);
                }
                queFormBean.setAnswer(UtilBean.stringListJoin(linkedHashSet, GlobalTypes.COMMA));
            }
        };
        for (int i = 1; i < 15; i++) {
            ((CheckBox) viewInflate.findViewById(context.getResources().getIdentifier("breast_chkBox" + i, "id", context.getPackageName()))).setOnCheckedChangeListener(onCheckedChangeListener);
        }
        return linearLayout;
    }

    public static LinearLayout getBMIComponent(Context context, final QueFormBean queFormBean) {
        String str;
        String str2;
        String strCalculateBmi;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        if (queFormBean.getFormulas() == null || queFormBean.getFormulas().isEmpty()) {
            str = null;
            str2 = null;
            strCalculateBmi = null;
        } else {
            str = null;
            str2 = null;
            strCalculateBmi = null;
            for (FormulaTagBean formulaTagBean : queFormBean.getFormulas()) {
                if (formulaTagBean.getFormulavalue().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    String[] strArrSplit = formulaTagBean.getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_SET_BMI_HEIGHT_WEIGHT) && strArrSplit.length == 3) {
                        str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[1]);
                        str2 = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[2]);
                        if (str != null && str2 != null) {
                            if (str.contains(GlobalTypes.DOT_SEPARATOR)) {
                                str = str.split("\\.")[0];
                            }
                            strCalculateBmi = UtilBean.calculateBmi(Integer.valueOf(Integer.parseInt(str)), Float.valueOf(Float.parseFloat(str2)));
                            queFormBean.setAnswer(str + "/" + str2 + "/" + strCalculateBmi);
                        }
                    }
                }
            }
        }
        View viewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.HEIGHT_IN_CMS);
        final TextInputLayout editText = MyStaticComponents.getEditText(context, LabelConstants.HEIGHT, IdConstants.DATE_PICKER_TEXT_DATE_ID, 3, -1);
        editText.setPadding(0, -20, 0, 50);
        if (editText.getEditText() != null) {
            editText.getEditText().setInputType(2);
            if (str != null) {
                editText.getEditText().setText(str);
            }
        }
        View viewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.WEIGHT_IN_KGS);
        final TextInputLayout editText2 = MyStaticComponents.getEditText(context, "Weight", IdConstants.RADIO_BUTTON_ID_YES, 6, -1);
        editText2.setPadding(0, -20, 0, 50);
        if (editText2.getEditText() != null) {
            editText2.getEditText().setInputType(8194);
            if (str2 != null) {
                editText2.getEditText().setText(str2);
            }
        }
        View viewGenerateQuestionView3 = MyStaticComponents.generateQuestionView(null, null, context, "BMI");
        final MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, "Not available");
        materialTextViewGenerateAnswerView.setPadding(0, 0, 0, 50);
        if (strCalculateBmi != null) {
            materialTextViewGenerateAnswerView.setText(strCalculateBmi);
        }
        editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.7
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) throws NumberFormatException {
                MyDynamicComponents.checkValidationForBMI(charSequence.toString(), editText2.getEditText().getText().toString(), materialTextViewGenerateAnswerView, queFormBean, getClass().getName());
            }
        });
        if (editText2.getEditText() != null) {
            editText2.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.8
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) throws NumberFormatException {
                    MyDynamicComponents.checkValidationForBMI(editText.getEditText().getText().toString(), charSequence.toString(), materialTextViewGenerateAnswerView, queFormBean, getClass().getName());
                }
            });
        }
        linearLayout.addView(viewGenerateQuestionView);
        linearLayout.addView(editText);
        linearLayout.addView(viewGenerateQuestionView2);
        linearLayout.addView(editText2);
        linearLayout.addView(viewGenerateQuestionView3);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        return linearLayout;
    }

    public static void checkValidationForBMI(String str, String str2, MaterialTextView materialTextView, QueFormBean queFormBean, String str3) throws NumberFormatException {
        if (str.isEmpty()) {
            materialTextView.setText(UtilBean.getMyLabel("Not available"));
            if (queFormBean != null) {
                queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_HEIGHT);
                queFormBean.setAnswer(null);
                return;
            }
            return;
        }
        if (str2.isEmpty()) {
            materialTextView.setText(UtilBean.getMyLabel("Not available"));
            if (queFormBean != null) {
                queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_WEIGHT);
                queFormBean.setAnswer(null);
                return;
            }
            return;
        }
        try {
            int i = Integer.parseInt(str);
            float f = Float.parseFloat(str2);
            if (i < 60 || i > 250) {
                materialTextView.setText(UtilBean.getMyLabel("Not available"));
                queFormBean.setMandatorymessage(LabelConstants.HEIGHT_BETWEEN_60_TO_250);
                queFormBean.setAnswer(null);
            } else if (f < 10.0f || f > 150.0f) {
                materialTextView.setText(UtilBean.getMyLabel("Not available"));
                queFormBean.setMandatorymessage(LabelConstants.WEIGHT_BETWEEN_10_TO_150);
                queFormBean.setAnswer(null);
            } else {
                String strCalculateBmi = UtilBean.calculateBmi(Integer.valueOf(i), Float.valueOf(f));
                if (strCalculateBmi != null) {
                    materialTextView.setText(strCalculateBmi);
                    queFormBean.setAnswer(String.format("%s/%s/%s", str, str2, strCalculateBmi));
                } else {
                    materialTextView.setText(UtilBean.getMyLabel("Not available"));
                    queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_WEIGHT);
                    queFormBean.setAnswer(null);
                }
            }
        } catch (Exception e) {
            materialTextView.setText(UtilBean.getMyLabel("Not available"));
            queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_HEIGHT);
            queFormBean.setAnswer(null);
            Log.e(str3, null, e);
        }
    }

    public static LinearLayout getBMIComponentAdolescent(Context context, final QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        if (queFormBean.getFormulas() != null && !queFormBean.getFormulas().isEmpty()) {
            for (FormulaTagBean formulaTagBean : queFormBean.getFormulas()) {
                if (formulaTagBean.getFormulavalue().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    String[] strArrSplit = formulaTagBean.getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_SET_BMI_HEIGHT_WEIGHT) && strArrSplit.length == 3) {
                        String str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[1]);
                        String str2 = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[2]);
                        if (str != null && str2 != null) {
                            if (str.contains(GlobalTypes.DOT_SEPARATOR)) {
                                str = str.split("\\.")[0];
                            }
                            queFormBean.setAnswer(str + "/" + str2 + "/" + UtilBean.calculateBmi(Integer.valueOf(Integer.parseInt(str)), Float.valueOf(Float.parseFloat(str2))));
                        }
                    }
                }
            }
        }
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.HEIGHT_IN_CMS);
        final TextInputLayout editText = MyStaticComponents.getEditText(context, LabelConstants.HEIGHT, IdConstants.DATE_PICKER_TEXT_DATE_ID, 3, -1);
        editText.requestFocus();
        editText.setPadding(0, -20, 0, 50);
        if (editText.getEditText() != null) {
            editText.getEditText().setInputType(2);
        }
        MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.WEIGHT_IN_KGS);
        final TextInputLayout editText2 = MyStaticComponents.getEditText(context, "Weight", IdConstants.RADIO_BUTTON_ID_YES, 4, -1);
        editText2.setPadding(0, -20, 0, 50);
        if (editText2.getEditText() != null) {
            editText2.getEditText().setInputType(8194);
        }
        MaterialTextView materialTextViewGenerateQuestionView3 = MyStaticComponents.generateQuestionView(null, null, context, "BMI");
        final MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, "Not available");
        materialTextViewGenerateAnswerView.setPadding(0, 0, 0, 50);
        editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.9
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                MyDynamicComponents.checkValidationForBMIAdolescent(charSequence.toString(), editText2.getEditText().getText().toString(), materialTextViewGenerateAnswerView, queFormBean, getClass().getName());
            }
        });
        if (editText2.getEditText() != null) {
            editText2.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.10
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    MyDynamicComponents.checkValidationForBMIAdolescent(editText.getEditText().getText().toString(), charSequence.toString(), materialTextViewGenerateAnswerView, queFormBean, getClass().getName());
                }
            });
        }
        linearLayout.addView(materialTextViewGenerateQuestionView);
        linearLayout.addView(editText);
        linearLayout.addView(materialTextViewGenerateQuestionView2);
        linearLayout.addView(editText2);
        linearLayout.addView(materialTextViewGenerateQuestionView3);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        return linearLayout;
    }

    public static void checkValidationForBMIAdolescent(String str, String str2, MaterialTextView materialTextView, QueFormBean queFormBean, String str3) {
        if (str.isEmpty()) {
            materialTextView.setText("Not available");
            if (queFormBean != null) {
                queFormBean.setMandatorymessage(LabelConstants.ENTER_HEIGHT);
                queFormBean.setAnswer(null);
                return;
            }
            return;
        }
        if (Integer.parseInt(str) < 100 || Integer.parseInt(str) > 175) {
            materialTextView.setText("Not available");
            queFormBean.setMandatorymessage(LabelConstants.HEIGHT_BETWEEN_100_TO_175);
            queFormBean.setAnswer(null);
            return;
        }
        if (str2.isEmpty()) {
            materialTextView.setText("Not available");
            if (queFormBean != null) {
                queFormBean.setMandatorymessage(LabelConstants.ENTER_WEIGHT);
                queFormBean.setAnswer(null);
                return;
            }
            return;
        }
        if (Float.parseFloat(str2) < 5.0f || Float.parseFloat(str2) > 70.0f) {
            materialTextView.setText("Not available");
            queFormBean.setMandatorymessage(LabelConstants.WEIGHT_BETWEEN_5_TO_70);
            queFormBean.setAnswer(null);
            return;
        }
        try {
            String strCalculateBmi = UtilBean.calculateBmi(Integer.valueOf(Integer.parseInt(str)), Float.valueOf(Float.parseFloat(str2)));
            if (strCalculateBmi != null) {
                String myLabel = "";
                if (strCalculateBmi.length() > 0 && Float.parseFloat(strCalculateBmi) <= 18.5d) {
                    myLabel = UtilBean.getMyLabel(RchConstants.HIGH_RISK_UNDERWEIGHT);
                } else if (strCalculateBmi.length() > 0 && Float.parseFloat(strCalculateBmi) > 18.5d && Float.parseFloat(strCalculateBmi) <= 25.0f) {
                    myLabel = UtilBean.getMyLabel("Normal");
                } else if (strCalculateBmi.length() > 0 && Float.parseFloat(strCalculateBmi) > 25.0f && Float.parseFloat(strCalculateBmi) <= 29.9d) {
                    myLabel = UtilBean.getMyLabel(RchConstants.HIGH_RISK_OVERWEIGHT);
                } else if (strCalculateBmi.length() > 0 && Float.parseFloat(strCalculateBmi) >= 30.0f) {
                    myLabel = UtilBean.getMyLabel(RchConstants.HIGH_RISK_OBESE);
                }
                materialTextView.setText(String.format("%s - %s", strCalculateBmi, myLabel));
                queFormBean.setAnswer(String.format("%s/%s/%s", str, str2, strCalculateBmi));
                return;
            }
            materialTextView.setText("Not available");
            queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_WEIGHT);
            queFormBean.setAnswer(null);
        } catch (Exception e) {
            materialTextView.setText("Not available");
            queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_HEIGHT);
            queFormBean.setAnswer(null);
            Log.e(str3, null, e);
        }
    }

    public static LinearLayout getHBComponent(final Context context, final QueFormBean queFormBean) {
        String str;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        if (queFormBean.getFormulas() != null && !queFormBean.getFormulas().isEmpty()) {
            for (FormulaTagBean formulaTagBean : queFormBean.getFormulas()) {
                if (formulaTagBean.getFormulavalue().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    String[] strArrSplit = formulaTagBean.getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                    if (strArrSplit[0].equalsIgnoreCase(FormulaConstants.FORMULA_SET_HAEMOGLOBIN) && strArrSplit.length == 2 && (str = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[1])) != null) {
                        if (str.contains(GlobalTypes.DOT_SEPARATOR)) {
                            str = str.split("\\.")[0];
                        }
                        queFormBean.setAnswer(str);
                    }
                }
            }
        }
        MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.HAEMOGLOBIN);
        TextInputLayout editText = MyStaticComponents.getEditText(context, LabelConstants.HAEMOGLOBIN, IdConstants.DATE_PICKER_TEXT_DATE_ID, 4, -1);
        editText.setPadding(0, -20, 0, 50);
        if (editText.getEditText() != null) {
            editText.getEditText().setInputType(8192);
        }
        MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.CONDITION_HB);
        final MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, "Not available");
        materialTextViewGenerateAnswerView.setPadding(0, 0, 0, 50);
        editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.11
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) throws NumberFormatException {
                MyDynamicComponents.checkValidationForHB(context, charSequence.toString(), materialTextViewGenerateAnswerView, queFormBean, getClass().getName());
            }
        });
        linearLayout.addView(materialTextViewGenerateQuestionView);
        linearLayout.addView(editText);
        linearLayout.addView(materialTextViewGenerateQuestionView2);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        return linearLayout;
    }

    public static String checkValidationForHB(Context context, String str, MaterialTextView materialTextView, QueFormBean queFormBean, String str2) throws NumberFormatException {
        float f;
        String str3 = "Normal";
        if (str.isEmpty()) {
            materialTextView.setText(UtilBean.getMyLabel("Not available"));
            materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.black));
            if (queFormBean == null) {
                return "";
            }
            queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_HB);
            queFormBean.setAnswer(null);
            return "";
        }
        try {
            f = Float.parseFloat(str);
            materialTextView.setText(UtilBean.getMyLabel("Not available"));
            materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.textColor));
            try {
            } catch (Exception e) {
                e = e;
                str3 = "Not available";
            }
        } catch (Exception e2) {
            e = e2;
            str3 = "";
        }
        if (f >= 3.0f) {
            if (f >= 3.0f && f <= 7.0f) {
                materialTextView.setText(UtilBean.getMyLabel(LabelConstants.HB_SEVERE));
                materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.pregnantWomenTextColor));
                try {
                    queFormBean.setAnswer(Float.valueOf(f));
                    str3 = LabelConstants.HB_SEVERE;
                } catch (Exception e3) {
                    e = e3;
                    str3 = LabelConstants.HB_SEVERE;
                    materialTextView.setText(UtilBean.getMyLabel("Not available"));
                    Log.e(str2, null, e);
                    return str3;
                }
            } else if (f >= 7.0f && f <= 9.0f) {
                materialTextView.setText(UtilBean.getMyLabel(LabelConstants.HB_MODERATE));
                materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.yellow));
                try {
                    queFormBean.setAnswer(Float.valueOf(f));
                    str3 = LabelConstants.HB_MODERATE;
                } catch (Exception e4) {
                    e = e4;
                    str3 = LabelConstants.HB_MODERATE;
                    materialTextView.setText(UtilBean.getMyLabel("Not available"));
                    Log.e(str2, null, e);
                    return str3;
                }
            } else if (f >= 9.0f && f <= 11.0f) {
                materialTextView.setText(UtilBean.getMyLabel(LabelConstants.HB_MILD));
                materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.spinnerBorderSelected));
                try {
                    queFormBean.setAnswer(Float.valueOf(f));
                    str3 = LabelConstants.HB_MILD;
                } catch (Exception e5) {
                    e = e5;
                    str3 = LabelConstants.HB_MILD;
                    materialTextView.setText(UtilBean.getMyLabel("Not available"));
                    Log.e(str2, null, e);
                    return str3;
                }
            } else if (f >= 11.0f && f <= 17.0f) {
                materialTextView.setText(UtilBean.getMyLabel("Normal"));
                materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.rb_correct_text));
                try {
                    queFormBean.setAnswer(Float.valueOf(f));
                } catch (Exception e6) {
                    e = e6;
                    materialTextView.setText(UtilBean.getMyLabel("Not available"));
                    Log.e(str2, null, e);
                    return str3;
                }
            } else if (f >= 17.0f) {
                materialTextView.setText(UtilBean.getMyLabel(LabelConstants.ENTER_VALID_VALUE_HB));
                materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.textColor));
                queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_VALUE_HB);
                queFormBean.setAnswer(null);
            }
            return str3;
        }
        materialTextView.setText(UtilBean.getMyLabel(LabelConstants.ENTER_VALID_VALUE_HB));
        materialTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.textColor));
        queFormBean.setMandatorymessage(LabelConstants.ENTER_VALID_VALUE_HB);
        queFormBean.setAnswer(null);
        str3 = "Not available";
        return str3;
    }

    public static LinearLayout getMotherChildRelationshipView(final Context context, final QueFormBean queFormBean) {
        Set<String> set;
        Iterator<String> it;
        String str;
        LinearLayout linearLayout;
        Iterator<String> it2;
        String str2;
        String str3;
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Set<String> stringSet = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_ALIVE_MEMBERS, null);
        Set<String> stringSet2 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_FEMALE_MARRIED_MEMBERS, null);
        queFormBean.setAnswer(null);
        String str4 = LabelConstants.NO_CHILD_PRESENT;
        if (stringSet != null && !stringSet.isEmpty() && stringSet2 != null && !stringSet2.isEmpty()) {
            final HashMap map = new HashMap();
            Iterator<String> it3 = stringSet.iterator();
            while (true) {
                String str5 = "";
                if (!it3.hasNext()) {
                    break;
                }
                String next = it3.next();
                String str6 = "0";
                String str7 = next.equals("0") ? "" : next;
                String str8 = SharedStructureData.relatedPropertyHashTable.get("dob" + str7);
                if (str8 != null) {
                    Calendar calendar = Calendar.getInstance();
                    it = it3;
                    calendar.setTimeInMillis(Long.parseLong(str8));
                    calendar.add(1, -12);
                    calendar.set(11, 0);
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    long time = calendar.getTime().getTime();
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList.add(UtilBean.getMyLabel("-Select-"));
                    OptionTagBean optionTagBean = new OptionTagBean();
                    optionTagBean.setKey("-2");
                    optionTagBean.setValue(UtilBean.getMyLabel("-Select-"));
                    arrayList2.add(optionTagBean);
                    Iterator<String> it4 = stringSet2.iterator();
                    while (true) {
                        set = stringSet2;
                        String str9 = str5;
                        str = str4;
                        if (!it4.hasNext()) {
                            break;
                        }
                        String next2 = it4.next();
                        if (next.equals(next2)) {
                            stringSet2 = set;
                            str5 = str9;
                            str4 = str;
                        } else {
                            if (next2.equals(str6)) {
                                it2 = it4;
                                str3 = str6;
                                str2 = str9;
                            } else {
                                it2 = it4;
                                str2 = next2;
                                str3 = str6;
                            }
                            LinearLayout linearLayout3 = linearLayout2;
                            String str10 = SharedStructureData.relatedPropertyHashTable.get("dob" + str2);
                            String str11 = str7;
                            if (str10 != null) {
                                calendar.setTimeInMillis(Long.parseLong(str10));
                                calendar.set(11, 0);
                                calendar.set(12, 0);
                                calendar.set(13, 0);
                                calendar.set(14, 0);
                                if (calendar.getTimeInMillis() <= time) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(SharedStructureData.relatedPropertyHashTable.get("firstName" + str2));
                                    sb.append(" ");
                                    sb.append(SharedStructureData.relatedPropertyHashTable.get("lastName" + str2));
                                    String string = sb.toString();
                                    OptionTagBean optionTagBean2 = new OptionTagBean();
                                    optionTagBean2.setKey(next2);
                                    optionTagBean2.setValue(string);
                                    arrayList2.add(optionTagBean2);
                                    arrayList.add(UtilBean.getMyLabel(string));
                                }
                            }
                            stringSet2 = set;
                            str5 = str9;
                            str4 = str;
                            it4 = it2;
                            str6 = str3;
                            linearLayout2 = linearLayout3;
                            str7 = str11;
                        }
                    }
                    LinearLayout linearLayout4 = linearLayout2;
                    String str12 = str7;
                    if (arrayList2.size() == 1) {
                        it3 = it;
                        stringSet2 = set;
                        str4 = str;
                        linearLayout2 = linearLayout4;
                    } else {
                        arrayList.add(UtilBean.getMyLabel("Not available"));
                        OptionTagBean optionTagBean3 = new OptionTagBean();
                        optionTagBean3.setKey("-1");
                        optionTagBean3.setValue(UtilBean.getMyLabel("Not available"));
                        arrayList2.add(optionTagBean3);
                        queFormBean.setOptions(arrayList2);
                        map.put(Integer.valueOf(next), arrayList2);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(SharedStructureData.relatedPropertyHashTable.get("firstName" + str12));
                        sb2.append(" ");
                        sb2.append(SharedStructureData.relatedPropertyHashTable.get("lastName" + str12));
                        linearLayout = linearLayout4;
                        linearLayout.addView(MyStaticComponents.generateInstructionView(context, sb2.toString()));
                        final Spinner spinner = getSpinner(context, queFormBean, Integer.parseInt(next));
                        spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList));
                        linearLayout.addView(spinner);
                        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.12
                            @Override // android.widget.AdapterView.OnItemSelectedListener
                            public void onNothingSelected(AdapterView<?> adapterView) {
                            }

                            @Override // android.widget.AdapterView.OnItemSelectedListener
                            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                                String key = ((OptionTagBean) ((List) Objects.requireNonNull((List) map.get(Integer.valueOf(spinner.getId())))).get(i)).getKey();
                                String str13 = (String) queFormBean.getAnswer();
                                Map map2 = new HashMap();
                                Type type = new TypeToken<HashMap<String, String>>() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.12.1
                                }.getType();
                                Gson gson = new Gson();
                                if (!key.equals("-2")) {
                                    if (str13 != null) {
                                        map2 = (Map) gson.fromJson(str13, type);
                                    }
                                    map2.put(String.valueOf(spinner.getId()), key);
                                } else if (str13 != null) {
                                    map2 = (Map) gson.fromJson(str13, type);
                                    map2.remove(String.valueOf(spinner.getId()));
                                }
                                if (!map2.isEmpty()) {
                                    queFormBean.setAnswer(gson.toJson(map2));
                                } else {
                                    queFormBean.setAnswer(null);
                                }
                                if (String.valueOf(spinner.getId()).equals(key)) {
                                    SewaUtil.generateToast(context, UtilBean.getMyLabel(LabelConstants.SELECT_DIFFERENT_MOTHER_FOR_CHILD));
                                }
                            }
                        });
                    }
                } else {
                    set = stringSet2;
                    it = it3;
                    str = str4;
                    linearLayout = linearLayout2;
                }
                linearLayout2 = linearLayout;
                it3 = it;
                stringSet2 = set;
                str4 = str;
            }
            LinearLayout linearLayout5 = linearLayout2;
            String str13 = str4;
            if (map.isEmpty()) {
                linearLayout5.addView(MyStaticComponents.generateInstructionView(context, str13));
            }
            SharedStructureData.relatedPropertyHashTable.put("numberOfMemberForMotherSelection", map.size() + "");
            return linearLayout5;
        }
        linearLayout2.addView(MyStaticComponents.generateInstructionView(context, LabelConstants.NO_CHILD_PRESENT));
        return linearLayout2;
    }

    public static LinearLayout getHusbandWifeRelationshipView(Context context, final QueFormBean queFormBean) {
        String string;
        String string2;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, 10000, 1, new LinearLayout.LayoutParams(-1, -1));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Set<String> stringSet = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_MALE_MARRIED_MEMBERS, null);
        Set<String> stringSet2 = defaultSharedPreferences.getStringSet(RelatedPropertyNameConstants.LOOP_COUNTER_FOR_WIFE_MEMBERS, null);
        if (stringSet2 != null && !stringSet2.isEmpty()) {
            HashMap map = new HashMap();
            if (stringSet != null && !stringSet.isEmpty()) {
                for (String str : stringSet) {
                    if (str.equals("0")) {
                        string2 = SharedStructureData.relatedPropertyHashTable.get("firstName") + " " + SharedStructureData.relatedPropertyHashTable.get("lastName");
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(SharedStructureData.relatedPropertyHashTable.get("firstName" + str));
                        sb.append(" ");
                        sb.append(SharedStructureData.relatedPropertyHashTable.get("lastName" + str));
                        string2 = sb.toString();
                    }
                    map.put(str, string2);
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList.add(UtilBean.getMyLabel("-Select-"));
            OptionTagBean optionTagBean = new OptionTagBean();
            optionTagBean.setKey("-2");
            optionTagBean.setValue(UtilBean.getMyLabel("-Select-"));
            arrayList2.add(optionTagBean);
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    OptionTagBean optionTagBean2 = new OptionTagBean();
                    optionTagBean2.setKey("" + ((String) entry.getKey()));
                    optionTagBean2.setValue("" + ((String) entry.getValue()));
                    arrayList2.add(optionTagBean2);
                    arrayList.add(UtilBean.getMyLabel("" + ((String) entry.getValue())));
                }
            }
            arrayList.add(UtilBean.getMyLabel("Not available"));
            OptionTagBean optionTagBean3 = new OptionTagBean();
            optionTagBean3.setKey("-1");
            optionTagBean3.setValue(UtilBean.getMyLabel("Not available"));
            arrayList2.add(optionTagBean3);
            queFormBean.setOptions(arrayList2);
            for (String str2 : stringSet2) {
                if (str2.equals("0")) {
                    string = SharedStructureData.relatedPropertyHashTable.get("firstName") + " " + SharedStructureData.relatedPropertyHashTable.get("lastName");
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(SharedStructureData.relatedPropertyHashTable.get("firstName" + str2));
                    sb2.append(" ");
                    sb2.append(SharedStructureData.relatedPropertyHashTable.get("lastName" + str2));
                    string = sb2.toString();
                }
                linearLayout.addView(MyStaticComponents.generateInstructionView(context, string));
                final Spinner spinner = getSpinner(context, queFormBean, Integer.parseInt(str2));
                spinner.setAdapter((SpinnerAdapter) UtilBean.createAdapter(arrayList));
                linearLayout.addView(spinner);
                spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.13
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onNothingSelected(AdapterView<?> adapterView) {
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                        Map map2;
                        String key = queFormBean.getOptions().get(i).getKey();
                        String str3 = (String) queFormBean.getAnswer();
                        if (str3 != null && !str3.isEmpty()) {
                            map2 = (Map) new Gson().fromJson(str3, new TypeToken<HashMap<String, String>>() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.13.1
                            }.getType());
                        } else {
                            map2 = new HashMap();
                        }
                        if (!key.equals("-2")) {
                            map2.put(String.valueOf(spinner.getId()), key);
                        } else {
                            map2.remove(String.valueOf(spinner.getId()));
                        }
                        if (!map2.isEmpty()) {
                            queFormBean.setAnswer(new Gson().toJson(map2));
                        } else {
                            queFormBean.setAnswer(null);
                        }
                    }
                });
            }
            if (queFormBean.getAnswer() != null) {
                Map map2 = (Map) new Gson().fromJson((String) queFormBean.getAnswer(), new TypeToken<HashMap<String, String>>() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.14
                }.getType());
                if (map2 != null && !map2.isEmpty()) {
                    for (Map.Entry entry2 : map2.entrySet()) {
                        String str3 = (String) entry2.getKey();
                        String str4 = (String) entry2.getValue();
                        Spinner spinner2 = (Spinner) linearLayout.findViewById(Integer.parseInt(str3));
                        List<OptionTagBean> options = queFormBean.getOptions();
                        OptionTagBean optionTagBean4 = new OptionTagBean();
                        optionTagBean4.setKey(str4);
                        spinner2.setSelection(options.indexOf(optionTagBean4));
                    }
                }
            }
        } else {
            linearLayout.addView(MyStaticComponents.generateInstructionView(context, LabelConstants.NO_FEMALE_MARRIED_MEMBERS_PRESENT));
        }
        return linearLayout;
    }

    public static LinearLayout getImmunisationGivenComponent(Context context, QueFormBean queFormBean) {
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        int i;
        TableLayout tableLayout = new TableLayout(context);
        int i2 = 10;
        tableLayout.setPadding(10, 10, 10, 10);
        tableLayout.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1);
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(0, -2, 1.0f);
        TableRow tableRow = new TableRow(context);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            tableRow.setBackgroundResource(R.drawable.table_row_selector);
        } else {
            tableRow.setBackgroundResource(R.drawable.spinner_item_border);
        }
        tableRow.setLayoutParams(layoutParams);
        MaterialTextView materialTextView = new MaterialTextView(context);
        MaterialTextView materialTextView2 = new MaterialTextView(context);
        int i3 = 16;
        materialTextView.setGravity(16);
        materialTextView2.setGravity(16);
        materialTextView.setPadding(20, 10, 20, 10);
        materialTextView2.setPadding(20, 10, 20, 10);
        materialTextView.setText(UtilBean.getMyLabel("Immunisation"));
        materialTextView2.setText(UtilBean.getMyLabel(LabelConstants.DATE));
        materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
        materialTextView2.setTypeface(Typeface.DEFAULT_BOLD);
        tableRow.addView(materialTextView, layoutParams2);
        tableRow.addView(materialTextView2, layoutParams2);
        tableLayout.addView(tableRow, 0);
        String str = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        if (str != null) {
            if (SharedStructureData.isOnlineSearch) {
                memberBeanRetrieveMemberBeanByActualId = SharedStructureData.onLineSelectedMemberBean;
            } else {
                memberBeanRetrieveMemberBeanByActualId = SharedStructureData.sewaFhsService.retrieveMemberBeanByActualId(Long.valueOf(Long.parseLong(str)));
            }
            if (memberBeanRetrieveMemberBeanByActualId != null) {
                Set<String> dueImmunisationsForChild = SharedStructureData.immunisationService.getDueImmunisationsForChild(memberBeanRetrieveMemberBeanByActualId.getDob(), memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven(), new Date(), null);
                if (memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven() != null) {
                    String[] strArrSplit = memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven().split(GlobalTypes.COMMA);
                    int length = strArrSplit.length;
                    int i4 = 0;
                    i = 1;
                    while (i4 < length) {
                        String[] strArrSplit2 = strArrSplit[i4].split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                        TableRow tableRow2 = new TableRow(context);
                        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
                            tableRow2.setBackgroundResource(R.drawable.table_row_selector);
                        } else {
                            tableRow2.setBackgroundResource(R.drawable.spinner_item_border);
                        }
                        tableRow2.setLayoutParams(layoutParams);
                        MaterialTextView materialTextView3 = new MaterialTextView(context);
                        MaterialTextView materialTextView4 = new MaterialTextView(context);
                        materialTextView3.setPadding(10, 10, 10, 10);
                        materialTextView4.setPadding(10, 10, 10, 10);
                        materialTextView3.setGravity(i3);
                        materialTextView4.setGravity(i3);
                        materialTextView3.setText(FullFormConstants.getFullFormOfVaccines(strArrSplit2[0]));
                        materialTextView4.setText(strArrSplit2[1]);
                        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
                            materialTextView4.setBackgroundResource(R.drawable.table_row_selector);
                            materialTextView3.setBackgroundResource(R.drawable.table_row_selector);
                        } else {
                            materialTextView4.setBackgroundResource(R.drawable.spinner_item_border);
                            materialTextView3.setBackgroundResource(R.drawable.spinner_item_border);
                        }
                        tableRow2.addView(materialTextView3, layoutParams2);
                        tableRow2.addView(materialTextView4, layoutParams2);
                        tableLayout.addView(tableRow2, i);
                        i++;
                        i4++;
                        i3 = 16;
                    }
                } else {
                    i = 1;
                }
                if (dueImmunisationsForChild != null && !dueImmunisationsForChild.isEmpty()) {
                    for (String str2 : dueImmunisationsForChild) {
                        TableRow tableRow3 = new TableRow(context);
                        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
                            tableRow3.setBackgroundResource(R.drawable.table_row_selector);
                        } else {
                            tableRow3.setBackgroundResource(R.drawable.spinner_item_border);
                        }
                        tableRow3.setLayoutParams(layoutParams);
                        MaterialTextView materialTextView5 = new MaterialTextView(context);
                        MaterialTextView materialTextView6 = new MaterialTextView(context);
                        materialTextView5.setPadding(i2, i2, i2, i2);
                        materialTextView6.setPadding(i2, i2, i2, i2);
                        materialTextView5.setGravity(16);
                        materialTextView6.setGravity(16);
                        materialTextView5.setText(FullFormConstants.getFullFormOfVaccines(str2));
                        Iterator<Map.Entry<Boolean, String>> it = SharedStructureData.immunisationService.isImmunisationMissedOrNotValid(memberBeanRetrieveMemberBeanByActualId.getDob(), str2, new Date(), SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(queFormBean.getLoopCounter())), true).entrySet().iterator();
                        while (it.hasNext()) {
                            if (Boolean.TRUE.equals(it.next().getKey())) {
                                materialTextView6.setText(UtilBean.getMyLabel(LabelConstants.MISSED));
                            } else {
                                materialTextView6.setTextColor(SupportMenu.CATEGORY_MASK);
                                materialTextView6.setText(UtilBean.getMyLabel(LabelConstants.DUE_NOW));
                            }
                        }
                        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
                            materialTextView6.setBackgroundResource(R.drawable.table_row_selector);
                            materialTextView5.setBackgroundResource(R.drawable.table_row_selector);
                        } else {
                            materialTextView6.setBackgroundResource(R.drawable.spinner_item_border);
                            materialTextView5.setBackgroundResource(R.drawable.spinner_item_border);
                        }
                        tableRow3.addView(materialTextView5, layoutParams2);
                        tableRow3.addView(materialTextView6, layoutParams2);
                        tableLayout.addView(tableRow3, i);
                        i++;
                        i2 = 10;
                    }
                }
            }
        }
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.addView(tableLayout);
        return linearLayout;
    }

    public static LinearLayout getNewImmunisationGivenComponent(Context context, QueFormBean queFormBean) {
        int i;
        TableLayout tableLayout;
        TableRow.LayoutParams layoutParams;
        int i2;
        Date date;
        MemberBean memberBeanRetrieveMemberBeanByActualId;
        TableRow.LayoutParams layoutParams2;
        TableLayout tableLayout2 = new TableLayout(context);
        tableLayout2.setPadding(10, 10, 10, 10);
        tableLayout2.setLayoutParams(new TableLayout.LayoutParams(-1, -2));
        TableRow.LayoutParams layoutParams3 = new TableRow.LayoutParams(-1);
        TableRow.LayoutParams layoutParams4 = new TableRow.LayoutParams(0, -2, 1.0f);
        TableRow tableRow = new TableRow(context);
        tableRow.setPadding(10, 15, 10, 15);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            i = R.drawable.table_row_selector;
        } else {
            i = R.drawable.spinner_item_border;
        }
        tableRow.setBackgroundResource(i);
        tableRow.setLayoutParams(layoutParams3);
        MaterialTextView materialTextView = new MaterialTextView(context);
        materialTextView.setGravity(16);
        materialTextView.setPadding(20, 10, 20, 10);
        materialTextView.setText(UtilBean.getMyLabel("Vaccine"));
        materialTextView.setTypeface(Typeface.DEFAULT_BOLD);
        tableRow.addView(materialTextView, layoutParams4);
        MaterialTextView materialTextView2 = new MaterialTextView(context);
        materialTextView2.setGravity(16);
        materialTextView2.setPadding(20, 10, 20, 10);
        materialTextView2.setText(UtilBean.getMyLabel("Status / Date"));
        materialTextView2.setTypeface(Typeface.DEFAULT_BOLD);
        tableRow.addView(materialTextView2, layoutParams4);
        tableLayout2.addView(tableRow, 0);
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
        String str = SharedStructureData.relatedPropertyHashTable.get(queFormBean.getRelatedpropertyname());
        if (str == null || (memberBeanRetrieveMemberBeanByActualId = SharedStructureData.sewaFhsService.retrieveMemberBeanByActualId(Long.valueOf(Long.parseLong(str)))) == null) {
            tableLayout = tableLayout2;
            layoutParams = layoutParams4;
        } else {
            Date dateClearTimeFromDate = UtilBean.clearTimeFromDate(memberBeanRetrieveMemberBeanByActualId.getDob());
            Map<String, Date> vaccineGivenDateMap = SharedStructureData.getVaccineGivenDateMap(Integer.valueOf(queFormBean.getLoopCounter()));
            if (memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven() != null) {
                String[] strArrSplit = memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven().split(GlobalTypes.COMMA);
                int length = strArrSplit.length;
                int i3 = 0;
                while (i3 < length) {
                    int i4 = length;
                    String[] strArr = strArrSplit;
                    String[] strArrSplit2 = strArrSplit[i3].split(GlobalTypes.MORBIDITY_SEPARATOR_HASH);
                    TableLayout tableLayout3 = tableLayout2;
                    if (strArrSplit2.length == 2) {
                        layoutParams2 = layoutParams4;
                        map2.put(strArrSplit2[0], strArrSplit2[1]);
                        map.put(strArrSplit2[0], "Given," + strArrSplit2[1]);
                    } else {
                        layoutParams2 = layoutParams4;
                    }
                    i3++;
                    strArrSplit = strArr;
                    length = i4;
                    tableLayout2 = tableLayout3;
                    layoutParams4 = layoutParams2;
                }
            }
            tableLayout = tableLayout2;
            layoutParams = layoutParams4;
            Set<String> dueImmunisationsForChild = SharedStructureData.immunisationService.getDueImmunisationsForChild(dateClearTimeFromDate, memberBeanRetrieveMemberBeanByActualId.getImmunisationGiven(), new Date(), null);
            if (dueImmunisationsForChild != null && !dueImmunisationsForChild.isEmpty()) {
                for (String str2 : dueImmunisationsForChild) {
                    for (Map.Entry<Boolean, String> entry : SharedStructureData.immunisationService.isImmunisationMissedOrNotValid(dateClearTimeFromDate, str2, new Date(), vaccineGivenDateMap, true).entrySet()) {
                        boolean zBooleanValue = entry.getKey().booleanValue();
                        String value = entry.getValue();
                        if (value != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(zBooleanValue ? LabelConstants.MISSED : LabelConstants.DUE_NOW);
                            sb.append(GlobalTypes.COMMA);
                            sb.append(value);
                            map.put(str2, sb.toString());
                        }
                    }
                }
            }
        }
        if (!map.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList, UtilBean.VACCINATION_COMPARATOR);
            Date date2 = new Date();
            int i5 = 1;
            for (String str3 : arrayList) {
                TableRow tableRow2 = new TableRow(context);
                if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
                    i2 = R.drawable.table_row_selector;
                } else {
                    i2 = R.drawable.spinner_item_border;
                }
                tableRow2.setBackgroundResource(i2);
                tableRow2.setLayoutParams(layoutParams3);
                MaterialTextView materialTextView3 = new MaterialTextView(context);
                materialTextView3.setPadding(10, 10, 10, 10);
                materialTextView3.setGravity(16);
                materialTextView3.setText(UtilBean.getMyLabel(FullFormConstants.getFullFormOfVaccines(str3)));
                MaterialTextView materialTextView4 = new MaterialTextView(context);
                TableRow.LayoutParams layoutParams5 = layoutParams3;
                materialTextView4.setPadding(10, 10, 2, 10);
                materialTextView4.setTextSize(12.0f);
                materialTextView4.setGravity(16);
                String str4 = (String) map.get(str3);
                if (str4 != null && str4.contains(GlobalTypes.COMMA)) {
                    String[] strArrSplit3 = str4.split(GlobalTypes.COMMA);
                    String str5 = strArrSplit3[0];
                    String str6 = strArrSplit3[1];
                    if (LabelConstants.GIVEN.equalsIgnoreCase(str5)) {
                        materialTextView4.setText(UtilBean.getMyLabel(str6));
                        materialTextView4.setTextColor(ContextCompat.getColor(context, R.color.hofTextColor));
                    } else {
                        materialTextView4.setText(UtilBean.getMyLabel(str6));
                        try {
                            if (str6.contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                                try {
                                    date = simpleDateFormat.parse(str6.split(GlobalTypes.KEY_VALUE_SEPARATOR)[0].trim());
                                } catch (ParseException e) {
                                    e = e;
                                    e.printStackTrace();
                                    TableRow.LayoutParams layoutParams6 = layoutParams;
                                    tableRow2.addView(materialTextView3, layoutParams6);
                                    tableRow2.addView(materialTextView4, layoutParams6);
                                    tableLayout.addView(tableRow2, i5);
                                    layoutParams = layoutParams6;
                                    layoutParams3 = layoutParams5;
                                    i5++;
                                }
                            } else {
                                date = str6.contains("After") ? simpleDateFormat.parse(str6.split(" ")[1].trim()) : null;
                            }
                            if (date != null) {
                                if (date2.before(date)) {
                                    materialTextView4.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                                } else if (LabelConstants.DUE_NOW.equalsIgnoreCase(str5)) {
                                    materialTextView4.setTextColor(-16776961);
                                } else if (LabelConstants.MISSED.equalsIgnoreCase(str5)) {
                                    materialTextView4.setTextColor(SupportMenu.CATEGORY_MASK);
                                }
                            }
                        } catch (ParseException e2) {
                            e = e2;
                        }
                    }
                }
                TableRow.LayoutParams layoutParams62 = layoutParams;
                tableRow2.addView(materialTextView3, layoutParams62);
                tableRow2.addView(materialTextView4, layoutParams62);
                tableLayout.addView(tableRow2, i5);
                layoutParams = layoutParams62;
                layoutParams3 = layoutParams5;
                i5++;
            }
        }
        MaterialTextView materialTextView5 = new MaterialTextView(context);
        materialTextView5.setText("🟢 Given   🔵 Due   🔴 Missed");
        materialTextView5.setTextSize(12.0f);
        materialTextView5.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        materialTextView5.setPadding(10, 15, 10, 10);
        materialTextView5.setGravity(GravityCompat.START);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.addView(tableLayout);
        linearLayout.addView(materialTextView5);
        return linearLayout;
    }

    public static LinearLayout getWeightBox(Context context, QueFormBean queFormBean, int i, boolean z, boolean z2, String str) {
        Spinner spinner;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        WeightBoxChangeListener weightBoxChangeListener = new WeightBoxChangeListener(context, queFormBean, z2);
        if (str != null && !str.isEmpty()) {
            MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, str, IdConstants.WEIGHT_BOX_CHECKBOX_ID, false);
            checkBox.setOnCheckedChangeListener(weightBoxChangeListener);
            linearLayout.addView(checkBox);
        }
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, IdConstants.WEIGHT_BOX_INPUT_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        if (z) {
            if (queFormBean.getDatamap() != null && queFormBean.getDatamap().equalsIgnoreCase("child")) {
                spinner = MyStaticComponents.getSpinner(context, (String[]) GlobalTypes.KILO_LIST_FOR_PNC_CHILD.toArray(new String[0]), 0, IdConstants.WEIGHT_BOX_SPINNER_KILO_ID);
            } else {
                spinner = MyStaticComponents.getSpinner(context, (String[]) GlobalTypes.KILO_LIST.toArray(new String[0]), 0, IdConstants.WEIGHT_BOX_SPINNER_KILO_ID);
            }
            spinner.setOnItemSelectedListener(weightBoxChangeListener);
            linearLayout3.addView(spinner, new LinearLayout.LayoutParams(0, -2, 10.0f));
        } else {
            TextInputLayout editText = MyStaticComponents.getEditText(context, UtilBean.getMyLabel(LabelConstants.IN_KG), IdConstants.WEIGHT_BOX_SPINNER_KILO_ID, 3, 2);
            editText.setOnFocusChangeListener(weightBoxChangeListener);
            linearLayout3.addView(editText, new LinearLayout.LayoutParams(0, -2, 10.0f));
        }
        linearLayout3.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.UNIT_OF_MASS_IN_KG, -1, R.style.CustomAnswerView, false), new LinearLayout.LayoutParams(0, -2, 2.0f));
        linearLayout2.addView(linearLayout3);
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        Spinner spinner2 = MyStaticComponents.getSpinner(context, (String[]) GlobalTypes.GRAM_LIST.toArray(new String[0]), 0, IdConstants.WEIGHT_BOX_SPINNER_GRAM_ID);
        spinner2.setOnItemSelectedListener(weightBoxChangeListener);
        linearLayout4.addView(spinner2, new LinearLayout.LayoutParams(0, -2, 10.0f));
        linearLayout4.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.UNIT_OF_MASS_IN_GRAM, -1, R.style.CustomAnswerView, false), new LinearLayout.LayoutParams(0, -2, 2.0f));
        linearLayout4.setPadding(0, 0, 0, 50);
        linearLayout2.addView(linearLayout4);
        if (z2) {
            linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, context, "Date of weight:"));
            linearLayout2.addView(MyStaticComponents.getCustomDatePickerForStatic(context, weightBoxChangeListener, -1));
        }
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public static LinearLayout getVisionComponent(Context context, QueFormBean queFormBean) {
        String[] strArr;
        relaxMandatoryIfUnder18(queFormBean);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(16, 16, 16, 16);
        String[] strArr2 = {"(+/-)", "+ve", "-ve"};
        String[] strArr3 = new String[83];
        strArr3[0] = "(0.00-20.00)";
        int i = 0;
        while (i <= 80) {
            int i2 = i + 1;
            strArr3[i2] = String.format(Locale.US, "%.2f", Double.valueOf(i * 0.25d));
            i = i2;
        }
        strArr3[82] = "Other";
        Spinner spinnerWrapped = MyStaticComponents.getSpinnerWrapped(context, strArr2, 1, -1);
        Spinner spinnerWrapped2 = MyStaticComponents.getSpinnerWrapped(context, strArr3, 1, -1);
        linearLayout.addView(createRow("SPH", context, spinnerWrapped, spinnerWrapped2));
        Spinner spinnerWrapped3 = MyStaticComponents.getSpinnerWrapped(context, strArr2, 1, -1);
        Spinner spinnerWrapped4 = MyStaticComponents.getSpinnerWrapped(context, strArr3, 1, -1);
        linearLayout.addView(createRow("CYL", context, spinnerWrapped3, spinnerWrapped4));
        EditText editText = new EditText(context);
        editText.setHint("0 - 180");
        editText.setText("0");
        editText.setInputType(2);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(3)});
        linearLayout.addView(createRow("AXIS", context, editText));
        if (datamapHasFlag(queFormBean.getDatamap(), "near")) {
            strArr = new String[]{"--Select--", "N/6", "N/9", "N/12", "N/18", "N/24", "N/36", "Less than N/36"};
        } else {
            strArr = new String[]{"--Select--", "6/6", "6/9", "6/12", "6/18", "6/24", "6/36", "6/60", "6/60-3/60", "2/60-PL", "NO PL"};
        }
        Spinner spinner = MyStaticComponents.getSpinner(context, strArr, 0, -1);
        spinner.setSelection(1);
        linearLayout.addView(createRow("VISION", context, spinner));
        new VisionComponentListener(context, queFormBean, spinnerWrapped, spinnerWrapped2, spinnerWrapped3, spinnerWrapped4, editText, spinner);
        return linearLayout;
    }

    private static TextView createErrorTextView(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(ContextCompat.getColor(context, android.R.color.holo_red_dark));
        textView.setTextSize(12.0f);
        textView.setPadding(16, 4, 16, 8);
        textView.setVisibility(8);
        return textView;
    }

    private static LinearLayout createRow(String str, Context context, View... viewArr) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setWeightSum(4.0f);
        linearLayout.setPadding(0, 8, 0, 8);
        TextView textView = new TextView(context);
        textView.setText(UtilBean.getMyLabel(str));
        textView.setPadding(8, 0, 16, 0);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(textView);
        for (View view : viewArr) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 3.0f / viewArr.length);
            layoutParams.setMargins(4, 0, 4, 0);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
        }
        return linearLayout;
    }

    public static LinearLayout getTemperatureBox(Context context, QueFormBean queFormBean, int i) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        TemperatureBoxListener temperatureBoxListener = new TemperatureBoxListener(queFormBean);
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, LabelConstants.THERMOMETER_NOT_AVAILABLE, IdConstants.TEMPERATURE_BOX_CHECKBOX_ID, false);
        checkBox.setOnCheckedChangeListener(temperatureBoxListener);
        linearLayout.addView(checkBox);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, IdConstants.TEMPERATURE_BOX_INPUT_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.TEMPERATURE_IN_FAHRENHEIT, -1, R.style.CustomAnswerView, false));
        Spinner spinner = MyStaticComponents.getSpinner(context, (String[]) GlobalTypes.TEMPERATURE_DEGREE_VALUES.toArray(new String[0]), 0, IdConstants.TEMPERATURE_BOX_SPINNER_DEGREE_ID);
        spinner.setOnItemSelectedListener(temperatureBoxListener);
        linearLayout2.addView(spinner);
        linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.REMAIN_FLOATING_VALUE, -1, R.style.CustomAnswerView, false));
        Spinner spinner2 = MyStaticComponents.getSpinner(context, (String[]) GlobalTypes.TEMPERATURE_FLOATING_VALUES.toArray(new String[0]), 0, IdConstants.TEMPERATURE_BOX_SPINNER_FLOATING_ID);
        spinner2.setOnItemSelectedListener(temperatureBoxListener);
        linearLayout2.addView(spinner2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public static LinearLayout getBloodPressureBox(Context context, QueFormBean queFormBean, int i) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        BloodPresserChangedListener bloodPresserChangedListener = new BloodPresserChangedListener(context, queFormBean);
        String datamap = queFormBean.getDatamap();
        if (datamap == null) {
            datamap = "Not available";
        }
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, datamap, IdConstants.BLOOD_PRESSURE_BOX_CHECKBOX_ID, false);
        checkBox.setOnCheckedChangeListener(bloodPresserChangedListener);
        linearLayout.addView(checkBox);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, IdConstants.BLOOD_PRESSURE_BOX_INPUT_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout editText = MyStaticComponents.getEditText(context, UtilBean.getMyLabel(LabelConstants.SYSTOLIC_BP), IdConstants.BLOOD_PRESSURE_BOX_SYSTOLIC_ID, 3, 2);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 9.0f));
        if (editText.getEditText() != null) {
            editText.getEditText().setOnFocusChangeListener(bloodPresserChangedListener);
        }
        editText.setPadding(0, -20, 0, 50);
        linearLayout3.addView(editText);
        MaterialTextView materialTextView = MyStaticComponents.getMaterialTextView(context, LabelConstants.UNIT_OF_PRESSURE, -1, R.style.CustomAnswerView, false);
        if (materialTextView != null) {
            materialTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0f));
            linearLayout3.addView(materialTextView);
        }
        linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.SYSTOLIC_BP, -1, R.style.CustomAnswerView, false));
        linearLayout2.addView(linearLayout3);
        LinearLayout linearLayout4 = MyStaticComponents.getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout editText2 = MyStaticComponents.getEditText(context, UtilBean.getMyLabel(LabelConstants.DIASTOLIC_BP), IdConstants.BLOOD_PRESSURE_BOX_DIASTOLIC_ID, 3, 2);
        editText2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 9.0f));
        editText2.setPadding(0, -20, 0, 50);
        if (editText2.getEditText() != null) {
            editText2.getEditText().setOnFocusChangeListener(bloodPresserChangedListener);
        }
        linearLayout4.addView(editText2);
        MaterialTextView materialTextView2 = MyStaticComponents.getMaterialTextView(context, LabelConstants.UNIT_OF_PRESSURE, -1, R.style.CustomAnswerView, false);
        if (materialTextView2 != null) {
            materialTextView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0f));
            linearLayout4.addView(materialTextView2);
        }
        linearLayout2.addView(MyStaticComponents.getMaterialTextView(context, LabelConstants.DIASTOLIC_BP, -1, R.style.CustomAnswerView, false));
        linearLayout2.addView(linearLayout4);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    public static LinearLayout getSchoolComponent(Context context, QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, IdConstants.SCHOOL_COMPONENT_MAIN_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        final RadioGroup radioGroup = new RadioGroup(context);
        radioGroup.addView(MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel(LabelConstants.SEARCH_BY_NAME), IdConstants.SCHOOL_COMPONENT_SEARCH_BY_NAME_RB_ID));
        radioGroup.addView(MyStaticComponents.getRadioButton(context, UtilBean.getMyLabel(LabelConstants.SEARCH_BY_HIERARCHY), IdConstants.SCHOOL_COMPONENT_SEARCH_BY_HIERARCHY_RB_ID));
        final SchoolListListener schoolListListener = new SchoolListListener(context, queFormBean, linearLayout, radioGroup);
        radioGroup.setOnCheckedChangeListener(schoolListListener);
        View view = new View(context);
        view.setId(IdConstants.SCHOOL_COMPONENT_RESET_BUTTON_ID);
        view.setVisibility(8);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                schoolListListener.resetIfStandardChanged(radioGroup);
            }
        });
        linearLayout.addView(view);
        String formulaValue = getFormulaValue(queFormBean, FormulaConstants.FORMULA_SET_LOCATION_IDS);
        if (formulaValue != null) {
            schoolListListener.showAutoScopedSchools(formulaValue);
            return linearLayout;
        }
        linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(LabelConstants.CHOOSE_OPTION_TO_SEARCH_SCHOOL)));
        linearLayout.addView(radioGroup);
        return linearLayout;
    }

    private static String getFormulaValue(QueFormBean queFormBean, String str) {
        if (queFormBean.getFormulas() != null && !queFormBean.getFormulas().isEmpty()) {
            Iterator<FormulaTagBean> it = queFormBean.getFormulas().iterator();
            while (it.hasNext()) {
                String[] strArrSplit = it.next().getFormulavalue().split(GlobalTypes.KEY_VALUE_SEPARATOR);
                if (strArrSplit.length > 1 && strArrSplit[0].equalsIgnoreCase(str)) {
                    return strArrSplit[1];
                }
            }
        }
        return null;
    }

    public static LinearLayout getRegionComponent(Context context, QueFormBean queFormBean) {
        return new RegionListListener(context, queFormBean).addHierarchyLayoutForSchool();
    }

    public static LinearLayout getVillageSearchComponent(Context context, QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        new VillageSearchListener(context, queFormBean, linearLayout).init();
        return linearLayout;
    }

    private static boolean datamapHasFlag(String str, String str2) {
        if (str == null) {
            return false;
        }
        for (String str3 : str.split("[,;|\\s]+")) {
            if (str2.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    private static String datamapGetValue(String str, String str2) {
        if (str == null) {
            return null;
        }
        for (String str3 : str.split("[,;|\\s]+")) {
            String strTrim = str3.trim();
            int iIndexOf = strTrim.indexOf(58);
            if (iIndexOf > 0 && str2.equalsIgnoreCase(strTrim.substring(0, iIndexOf))) {
                String strTrim2 = strTrim.substring(iIndexOf + 1).trim();
                if (strTrim2.isEmpty()) {
                    return null;
                }
                return strTrim2;
            }
        }
        return null;
    }

    public static void relaxMandatoryIfUnder18(QueFormBean queFormBean) {
        if (datamapHasFlag(queFormBean.getDatamap(), OPTIONAL_IF_UNDER_18_FLAG) && "T".equalsIgnoreCase(queFormBean.getIsmandatory()) && isCurrentMemberUnder18()) {
            queFormBean.setIsmandatory("F");
            stripMandatoryAsteriskFromBuiltViews(queFormBean);
        }
    }

    private static void stripMandatoryAsteriskFromBuiltViews(QueFormBean queFormBean) {
        if (queFormBean.getQuestion() != null && !queFormBean.getQuestion().isEmpty()) {
            rebuildQuestionLabelWithoutAsterisk(queFormBean);
            return;
        }
        if (queFormBean.getSubtitle() != null && !queFormBean.getSubtitle().isEmpty() && (queFormBean.getSubTitleView() instanceof MaterialTextView)) {
            ((MaterialTextView) queFormBean.getSubTitleView()).setText(UtilBean.getMyLabel(queFormBean.getSubtitle()));
        } else {
            if (queFormBean.getInstruction() == null || queFormBean.getInstruction().isEmpty() || !(queFormBean.getInstructionsView() instanceof MaterialTextView)) {
                return;
            }
            ((MaterialTextView) queFormBean.getInstructionsView()).setText(UtilBean.getMyLabel(queFormBean.getInstruction()));
        }
    }

    private static void rebuildQuestionLabelWithoutAsterisk(QueFormBean queFormBean) {
        ViewGroup viewGroup;
        int iIndexOfChild;
        MaterialTextView materialTextViewGenerateQuestionView;
        if (queFormBean.getQuestionView() instanceof MaterialTextView) {
            MaterialTextView materialTextView = (MaterialTextView) queFormBean.getQuestionView();
            if (materialTextView.getText().toString().trim().endsWith(GlobalTypes.MULTI_SELECT_SEPARATOR) && (viewGroup = (ViewGroup) materialTextView.getParent()) != null && (iIndexOfChild = viewGroup.indexOfChild(materialTextView)) >= 0 && (materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(queFormBean.getHelpvideofield(), queFormBean.getHint(), materialTextView.getContext(), queFormBean.getQuestion())) != null) {
                viewGroup.removeViewAt(iIndexOfChild);
                viewGroup.addView(materialTextViewGenerateQuestionView, iIndexOfChild);
                queFormBean.setQuestionView(materialTextViewGenerateQuestionView);
            }
        }
    }

    private static boolean isCurrentMemberUnder18() {
        return isCurrentMemberUnderAge(18);
    }

    static boolean isCurrentMemberUnderAge(int i) {
        String str = SharedStructureData.relatedPropertyHashTable.get("dob");
        if (str == null || str.trim().isEmpty()) {
            return false;
        }
        try {
            return Years.yearsBetween(new LocalDate(new Date(Long.parseLong(str))), new LocalDate()).getYears() < i;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    static boolean isCurrentMemberAgeBetween(int i, int i2) {
        String str = SharedStructureData.relatedPropertyHashTable.get("dob");
        if (str == null || str.trim().isEmpty()) {
            return false;
        }
        try {
            int years = Years.yearsBetween(new LocalDate(new Date(Long.parseLong(str))), new LocalDate()).getYears();
            return years >= i && years <= i2;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void exposeVillagesUnderSelectedBlock(QueFormBean queFormBean, LocationDrillDownComponent locationDrillDownComponent) {
        String strDatamapGetValue = datamapGetValue(queFormBean.getDatamap(), GlobalTypes.EXPOSE_BLOCK_VILLAGES_AS);
        if (strDatamapGetValue == null || locationDrillDownComponent == null) {
            return;
        }
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            strDatamapGetValue = strDatamapGetValue + queFormBean.getLoopCounter();
        }
        StringBuilder sb = new StringBuilder();
        for (LocationMasterBean locationMasterBean : locationDrillDownComponent.getVillagesUnderSelectedBlock()) {
            if (sb.length() > 0) {
                sb.append(GlobalTypes.COMMA);
            }
            sb.append(locationMasterBean.getActualID());
        }
        SharedStructureData.relatedPropertyHashTable.put(strDatamapGetValue, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearExposedVillagesUnderSelectedBlock(QueFormBean queFormBean) {
        String strDatamapGetValue = datamapGetValue(queFormBean.getDatamap(), GlobalTypes.EXPOSE_BLOCK_VILLAGES_AS);
        if (strDatamapGetValue == null) {
            return;
        }
        if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
            strDatamapGetValue = strDatamapGetValue + queFormBean.getLoopCounter();
        }
        SharedStructureData.relatedPropertyHashTable.remove(strDatamapGetValue);
    }

    public static LinearLayout getLocationDrillDownComponent(Context context, final QueFormBean queFormBean) throws NumberFormatException {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        LocationDrillDownComponent locationDrillDownComponent = new LocationDrillDownComponent(context, SharedStructureData.locationMasterService, new LocationDrillDownComponent.VillageSelectionListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.15
            @Override // com.argusoft.sewa.android.app.component.LocationDrillDownComponent.VillageSelectionListener
            public void onVillageSelected(LocationMasterBean locationMasterBean, String str) {
                queFormBean.setAnswer(String.valueOf(locationMasterBean.getActualID()));
                MyDynamicComponents.exposeVillagesUnderSelectedBlock(queFormBean, locationDrillDownComponentArr[0]);
            }

            @Override // com.argusoft.sewa.android.app.component.LocationDrillDownComponent.VillageSelectionListener
            public void onSelectionCleared() {
                queFormBean.setAnswer(null);
                MyDynamicComponents.clearExposedVillagesUnderSelectedBlock(queFormBean);
            }
        });
        final LocationDrillDownComponent[] locationDrillDownComponentArr = {locationDrillDownComponent};
        linearLayout.addView(locationDrillDownComponent);
        if (datamapHasFlag(queFormBean.getDatamap(), GlobalTypes.ALLOW_CUSTOM_LOCATION)) {
            locationDrillDownComponent.setAllowCustomLocation(true, new LocationDrillDownComponent.CustomLocationListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda6
                @Override // com.argusoft.sewa.android.app.component.LocationDrillDownComponent.CustomLocationListener
                public final void onCustomLocationEntered(LocationMasterBean locationMasterBean, String str) {
                    MyDynamicComponents.lambda$getLocationDrillDownComponent$1(queFormBean, locationDrillDownComponentArr, locationMasterBean, str);
                }
            });
        }
        String strDatamapGetValue = datamapGetValue(queFormBean.getDatamap(), GlobalTypes.SKIP_CUSTOM_LOCATION_AGE_RANGE);
        if (strDatamapGetValue != null) {
            String[] strArrSplit = strDatamapGetValue.trim().split(GlobalTypes.KEY_VALUE_SEPARATOR);
            try {
                if (strArrSplit.length == 2) {
                    locationDrillDownComponent.setSkipCustomLocationAgeRange(Integer.valueOf(strArrSplit[0].trim()), Integer.valueOf(strArrSplit[1].trim()));
                } else {
                    Log.e("MyDynamicComponents", "skipCustomLocationAgeRange needs <min>-<max>, got: " + strDatamapGetValue);
                }
            } catch (NumberFormatException unused) {
                Log.e("MyDynamicComponents", "Invalid skipCustomLocationAgeRange value: " + strDatamapGetValue);
            }
        }
        if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
            String strTrim = queFormBean.getRelatedpropertyname().trim();
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                strTrim = strTrim + queFormBean.getLoopCounter();
            }
            String str = SharedStructureData.relatedPropertyHashTable.get(strTrim);
            if (str != null && str.trim().length() > 0) {
                try {
                    Long lValueOf = Long.valueOf(str.trim());
                    queFormBean.setAnswer(locationDrillDownComponent.preselectVillage(lValueOf) ? String.valueOf(lValueOf) : null);
                } catch (NumberFormatException unused2) {
                    Log.e("MyDynamicComponents", "Invalid default village id for related property " + strTrim + ": " + str);
                }
            }
        }
        return linearLayout;
    }

    static /* synthetic */ void lambda$getLocationDrillDownComponent$1(QueFormBean queFormBean, LocationDrillDownComponent[] locationDrillDownComponentArr, LocationMasterBean locationMasterBean, String str) {
        queFormBean.setAnswer(LocationDrillDownComponent.CUSTOM_LOCATION_ANSWER_PREFIX + locationMasterBean.getActualID() + ":" + str);
        exposeVillagesUnderSelectedBlock(queFormBean, locationDrillDownComponentArr[0]);
    }

    public static void reapplySkipCustomLocationAgeRange() {
        for (QueFormBean queFormBean : SharedStructureData.mapIndexQuestion.values()) {
            if (GlobalTypes.LOCATION_DRILL_DOWN_COMPONENT.equalsIgnoreCase(queFormBean.getType())) {
                try {
                    Object questionTypeView = queFormBean.getQuestionTypeView();
                    if (questionTypeView instanceof LinearLayout) {
                        LinearLayout linearLayout = (LinearLayout) questionTypeView;
                        for (int i = 0; i < linearLayout.getChildCount(); i++) {
                            View childAt = linearLayout.getChildAt(i);
                            if (childAt instanceof LocationDrillDownComponent) {
                                ((LocationDrillDownComponent) childAt).refreshForAgeChange();
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.e("MyDynamicComponents", "Failed to refresh LDD question " + queFormBean.getId() + " for age change", e);
                }
            }
        }
    }

    public static LinearLayout getOTPBasedVerificationComponent(Context context, QueFormBean queFormBean) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.otp_verification_layout, (ViewGroup) null);
        linearLayout.setOnClickListener(new OtpVerificationListener(context, linearLayout, queFormBean));
        return linearLayout;
    }

    public static LinearLayout getAudioPlayer(Context context, QueFormBean queFormBean, String str, int i) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.play_audio, null);
        linearLayout.addView(imageView);
        imageView.setOnClickListener(new AudioPlayerListener(context, queFormBean, str));
        return linearLayout;
    }

    public static LinearLayout getAudioPlayerForSimulations(Context context, int i, String str) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.play_audio, null);
        linearLayout.addView(imageView);
        imageView.setOnClickListener(new SimulationsAudioPlayerListener(context, str));
        return linearLayout;
    }

    public static LinearLayout getAudioTextBox(Context context, QueFormBean queFormBean, int i) {
        AudioTextBoxListener audioTextBoxListener = new AudioTextBoxListener(queFormBean);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        if (i != 0) {
            linearLayout.setId(i);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 2.0f);
        TextInputLayout editText = MyStaticComponents.getEditText(context, queFormBean.getQuestion(), IdConstants.AUDIO_TEXT_BOX_ID, queFormBean.getLength(), 1);
        editText.setOnFocusChangeListener(audioTextBoxListener);
        editText.setLayoutParams(layoutParams);
        linearLayout.addView(editText);
        if (queFormBean.getRelatedpropertyname() != null && queFormBean.getRelatedpropertyname().trim().length() > 0) {
            String strTrim = queFormBean.getRelatedpropertyname().trim();
            if (queFormBean.getLoopCounter() > 0 && !queFormBean.isIgnoreLoop()) {
                strTrim = strTrim + queFormBean.getLoopCounter();
            }
            String str = SharedStructureData.relatedPropertyHashTable.get(strTrim);
            if (str != null) {
                queFormBean.setAnswer(str + GlobalTypes.KEY_VALUE_SEPARATOR);
                if (editText.getEditText() != null) {
                    editText.getEditText().setText(str);
                }
            }
        }
        ImageView imageView = MyStaticComponents.getImageView(context, 22, R.drawable.record_audio, null);
        imageView.setOnClickListener(audioTextBoxListener);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 0.1f));
        linearLayout.addView(imageView);
        return linearLayout;
    }

    public static LinearLayout getPhotoPickerNew(final QueFormBean queFormBean, final Context context, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.photo_picker_layout, (ViewGroup) null);
        if (i != -1) {
            linearLayout.setId(i);
        }
        boolean z = queFormBean.getDatamap() != null && queFormBean.getDatamap().equals("allowCameraOnly");
        Button button = (Button) linearLayout.findViewById(R.id.camera_button);
        button.setText(UtilBean.getMyLabel("Open Camera"));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyDynamicComponents.lambda$getPhotoPickerNew$2(queFormBean, context, view);
            }
        });
        if (!z) {
            Button button2 = (Button) linearLayout.findViewById(R.id.gallery_button);
            button2.setText(UtilBean.getMyLabel("Upload from Gallery"));
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MyDynamicComponents.lambda$getPhotoPickerNew$3(queFormBean, context, view);
                }
            });
        } else {
            linearLayout.findViewById(R.id.gallery_button).setVisibility(8);
        }
        return linearLayout;
    }

    static /* synthetic */ void lambda$getPhotoPickerNew$2(QueFormBean queFormBean, Context context, View view) {
        SharedStructureData.currentQuestion = DynamicUtils.getLoopId(queFormBean);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            ((Activity) context).startActivityForResult(intent, 1024);
        }
    }

    static /* synthetic */ void lambda$getPhotoPickerNew$3(QueFormBean queFormBean, Context context, View view) {
        SharedStructureData.currentQuestion = DynamicUtils.getLoopId(queFormBean);
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        ((Activity) context).startActivityForResult(intent, 1025);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.AutoCompleteTextView getAutoCompleteTextView(android.content.Context r9, final com.argusoft.sewa.android.app.datastructure.QueFormBean r10, int r11) {
        /*
            android.widget.AutoCompleteTextView r0 = new android.widget.AutoCompleteTextView
            r0.<init>(r9)
            r1 = 0
            r0.setThreshold(r1)
            r2 = 1
            r0.setSingleLine(r2)
            r3 = 6
            r0.setImeOptions(r3)
            java.util.List r3 = com.argusoft.sewa.android.app.util.UtilBean.getOptionsOrDataMap(r10, r1)
            java.util.List r4 = com.argusoft.sewa.android.app.util.UtilBean.getListOfOptions(r3)
            android.widget.ArrayAdapter r5 = new android.widget.ArrayAdapter
            r6 = 17367050(0x109000a, float:2.5162954E-38)
            r5.<init>(r9, r6, r4)
            r0.setAdapter(r5)
            int r9 = com.argusoft.sewa.android.app.R.layout.spinner_item_dropdown
            r5.setDropDownViewResource(r9)
            com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda1 r9 = new com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda1
            r9.<init>()
            r0.setOnFocusChangeListener(r9)
            com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda2 r9 = new com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda2
            r9.<init>()
            r0.setOnClickListener(r9)
            java.lang.String r9 = r10.getRelatedpropertyname()
            if (r9 == 0) goto L54
            java.lang.String r9 = r10.getRelatedpropertyname()
            java.lang.String r5 = "null"
            boolean r9 = r9.equalsIgnoreCase(r5)
            if (r9 != 0) goto L54
            java.lang.String r9 = r10.getRelatedpropertyname()
            java.lang.String r9 = r9.trim()
            goto L55
        L54:
            r9 = 0
        L55:
            java.util.List r5 = r10.getFormulas()
            r6 = -1
            if (r5 == 0) goto Lca
            boolean r7 = r5.isEmpty()
            if (r7 != 0) goto Lca
            java.lang.Object r5 = r5.get(r1)
            com.argusoft.sewa.android.app.databean.FormulaTagBean r5 = (com.argusoft.sewa.android.app.databean.FormulaTagBean) r5
            java.lang.String r5 = r5.getFormulavalue()
            java.lang.String r7 = "-"
            java.lang.String[] r5 = com.argusoft.sewa.android.app.util.UtilBean.split(r5, r7)
            java.lang.String r7 = java.util.Arrays.toString(r5)
            java.lang.String r7 = r7.toLowerCase()
            java.lang.String r8 = "setdefaultproperty"
            boolean r7 = r7.contains(r8)
            if (r7 == 0) goto Lca
            if (r9 != 0) goto L86
            r9 = r5[r2]
        L86:
            int r2 = r10.getLoopCounter()
            if (r2 <= 0) goto La5
            boolean r2 = r10.isIgnoreLoop()
            if (r2 != 0) goto La5
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r9)
            int r9 = r10.getLoopCounter()
            r2.append(r9)
            java.lang.String r9 = r2.toString()
        La5:
            java.util.Map<java.lang.String, java.lang.String> r2 = com.argusoft.sewa.android.app.datastructure.SharedStructureData.relatedPropertyHashTable
            java.lang.Object r9 = r2.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            if (r9 == 0) goto Lca
            r2 = 0
        Lb0:
            int r5 = r3.size()
            if (r2 >= r5) goto Lca
            java.lang.Object r5 = r3.get(r2)
            com.argusoft.sewa.android.app.databean.OptionDataBean r5 = (com.argusoft.sewa.android.app.databean.OptionDataBean) r5
            java.lang.String r5 = r5.getKey()
            boolean r5 = r9.equalsIgnoreCase(r5)
            if (r5 == 0) goto Lc7
            goto Lcb
        Lc7:
            int r2 = r2 + 1
            goto Lb0
        Lca:
            r2 = -1
        Lcb:
            if (r2 == r6) goto Ld6
            java.lang.Object r9 = r4.get(r2)
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            r0.setText(r9, r1)
        Ld6:
            com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda3 r9 = new com.argusoft.sewa.android.app.component.MyDynamicComponents$$ExternalSyntheticLambda3
            r9.<init>()
            r0.setOnItemClickListener(r9)
            android.widget.LinearLayout$LayoutParams r9 = new android.widget.LinearLayout$LayoutParams
            r10 = -2
            r9.<init>(r6, r10)
            r10 = -20
            r2 = 50
            r9.setMargins(r1, r10, r1, r2)
            r0.setLayoutParams(r9)
            r9 = 20
            r0.setPadding(r9, r9, r9, r9)
            if (r11 == r6) goto Lf8
            r0.setId(r11)
        Lf8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyDynamicComponents.getAutoCompleteTextView(android.content.Context, com.argusoft.sewa.android.app.datastructure.QueFormBean, int):android.widget.AutoCompleteTextView");
    }

    static /* synthetic */ void lambda$getAutoCompleteTextView$4(AutoCompleteTextView autoCompleteTextView, View view, boolean z) {
        if (z) {
            autoCompleteTextView.showDropDown();
        }
    }

    static /* synthetic */ void lambda$getAutoCompleteTextView$6(List list, QueFormBean queFormBean, AdapterView adapterView, View view, int i, long j) {
        String str = (String) adapterView.getItemAtPosition(i);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            OptionDataBean optionDataBean = (OptionDataBean) it.next();
            if (str.equalsIgnoreCase(optionDataBean.getValue())) {
                queFormBean.setAnswer(optionDataBean.getKey());
                break;
            }
        }
        new ComboChangeListener(queFormBean, null).onItemSelected(null, view, i, j);
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [com.argusoft.sewa.android.app.component.MyDynamicComponents$16] */
    public static LinearLayout getPhotoPicker(final QueFormBean queFormBean, Context context, int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, layoutParams);
        linearLayout.setGravity(17);
        if (i != -1) {
            linearLayout.setId(i);
        }
        View.OnClickListener activity = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.16
            private Activity activity;
            private int currentQuestionId;

            public View.OnClickListener setActivity(Activity activity2, int i2) {
                this.activity = activity2;
                this.currentQuestionId = i2;
                return this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == R.id.closeImageView) {
                    queFormBean.setAnswer((String) view.getTag());
                    return;
                }
                try {
                    SharedStructureData.currentQuestion = this.currentQuestionId;
                    this.activity.startActivity(new Intent(this.activity, (Class<?>) CustomPhotoCaptureActivity_.class));
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName(), null, e);
                }
            }
        }.setActivity((Activity) context, DynamicUtils.getLoopId(queFormBean));
        if (queFormBean.getLength() <= 1) {
            ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.camera, null);
            linearLayout.addView(imageView);
            imageView.setOnClickListener(activity);
            ImageView imageView2 = MyStaticComponents.getImageView(context, GlobalTypes.PHOTO_CAPTURE_ACTIVITY, R.drawable.no_image_available, new LinearLayout.LayoutParams(-1, -2));
            imageView2.setVisibility(8);
            imageView2.setAdjustViewBounds(true);
            linearLayout.addView(imageView2, layoutParams);
        } else {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_recycler_view_grid_layout, (ViewGroup) null);
            ((RecyclerView) viewInflate.findViewById(R.id.recyclerView)).setAdapter(new ImageGridLayoutAdapter(queFormBean.getLength(), activity));
            linearLayout.addView(viewInflate);
        }
        return linearLayout;
    }

    public static View getRadioButtonDate(Context context, QueFormBean queFormBean, String str, String str2) {
        List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        if (!optionsOrDataMap.isEmpty()) {
            RadioButtonDateListener radioButtonDateListener = new RadioButtonDateListener(context, queFormBean);
            List<String> listOfOptions = UtilBean.getListOfOptions(optionsOrDataMap);
            LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            if (str != null && str.trim().length() > 0 && !str.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(str)));
            }
            linearLayout.addView(MyStaticComponents.getRadioGroup(context, radioButtonDateListener, listOfOptions, -1, -1, 1));
            LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, RadioButtonDateListener.DATE_VIEW_ID, 1, new LinearLayout.LayoutParams(-1, -2));
            if (str2 != null && str2.trim().length() > 0 && !str2.trim().equalsIgnoreCase(LabelConstants.NULL)) {
                linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(str2)));
            }
            linearLayout2.addView(MyStaticComponents.getCustomDatePickerForStatic(context, radioButtonDateListener, DynamicUtils.ID_OF_CUSTOM_DATE_PICKER));
            linearLayout2.setVisibility(8);
            linearLayout.addView(linearLayout2);
            return linearLayout;
        }
        return MyStaticComponents.generateAnswerView(context, UtilBean.getMyLabel(LabelConstants.NO_OPTIONS_FOUND));
    }

    public static LinearLayout getMemberDetailsComponent(final Context context, QueFormBean queFormBean) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.member_details_component, (ViewGroup) null);
        final LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R.id.memberDetFirst);
        final MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.moreButton);
        final List<OptionDataBean> optionsOrDataMap = UtilBean.getOptionsOrDataMap(queFormBean, false);
        final LinkedList linkedList = new LinkedList();
        int i = 1;
        for (OptionDataBean optionDataBean : optionsOrDataMap) {
            if (i < 8) {
                linkedList.add(optionDataBean);
            }
            i++;
        }
        setData(context, linearLayout2, linkedList);
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MyDynamicComponents.moreDetailsDisplayed) {
                    MyDynamicComponents.setData(context, linearLayout2, optionsOrDataMap);
                    materialButton.setText(UtilBean.getMyLabel(LabelConstants.LESS));
                } else {
                    MyDynamicComponents.setData(context, linearLayout2, linkedList);
                    materialButton.setText(UtilBean.getMyLabel(LabelConstants.MORE));
                }
                boolean unused = MyDynamicComponents.moreDetailsDisplayed = !MyDynamicComponents.moreDetailsDisplayed;
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setData(Context context, LinearLayout linearLayout, List<OptionDataBean> list) {
        int length;
        int i;
        int i2;
        linearLayout.removeAllViews();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, 0, layoutParams2);
        int i3 = 1;
        int i4 = 0;
        int i5 = 1;
        for (OptionDataBean optionDataBean : list) {
            LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(context, i3, 1, layoutParams);
            linearLayout3.addView(MyStaticComponents.getListTitleView(context, optionDataBean.getKey()));
            linearLayout3.setPadding(0, 0, 20, 0);
            String notAvailableIfNull = UtilBean.getNotAvailableIfNull(SharedStructureData.relatedPropertyHashTable.get(optionDataBean.getValue()));
            MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, notAvailableIfNull);
            materialTextViewGenerateAnswerView.setPadding(20, 0, 0, 0);
            linearLayout3.addView(materialTextViewGenerateAnswerView);
            linearLayout2.addView(linearLayout3);
            if (optionDataBean.getKey().length() > notAvailableIfNull.length()) {
                length = optionDataBean.getKey().length();
            } else {
                length = notAvailableIfNull.length();
            }
            int i6 = i4 + length;
            if (i3 == list.size() || i6 > 20) {
                linearLayout2.setWeightSum(i5);
                linearLayout.addView(linearLayout2);
                linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, 0, layoutParams2);
                i = 0;
                i2 = 1;
            } else {
                i2 = i5 + 1;
                i = i6;
            }
            i3++;
            i4 = i;
            i5 = i2;
        }
    }

    public static LinearLayout getORDTComponent(Context context, QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(400, 400);
        layoutParams.setMargins(0, 100, 0, 20);
        layoutParams.gravity = 17;
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.camera, layoutParams);
        final ORDTTestStartListner oRDTTestStartListner = new ORDTTestStartListner((Activity) context, queFormBean, imageView);
        imageView.setOnClickListener(oRDTTestStartListner);
        linearLayout.addView(imageView);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, LabelConstants.ORDT_INSTRUCTION_LABEL);
        materialTextViewGenerateAnswerView.setTextAlignment(4);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        View view = new View(context);
        view.setId(IdConstants.ORDT_COMPONENT_RESET_BUTTON_ID);
        view.setVisibility(8);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                oRDTTestStartListner.resetClick();
            }
        });
        linearLayout.addView(view);
        return linearLayout;
    }

    public static void resetORDPTestClick(QueFormBean queFormBean) {
        View viewFindViewById;
        if (queFormBean.getQuestionUIFrame() == null || (viewFindViewById = ((LinearLayout) queFormBean.getQuestionUIFrame()).findViewById(IdConstants.ORDT_COMPONENT_RESET_BUTTON_ID)) == null) {
            return;
        }
        viewFindViewById.performClick();
    }

    public static void setORDTTestResult(Context context, QueFormBean queFormBean, Map<String, String> map) {
        if (queFormBean.getQuestionUIFrame() != null) {
            LinearLayout linearLayout = (LinearLayout) queFormBean.getQuestionUIFrame();
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(IdConstants.ORDT_TEST_RESULT_LAYOUT_ID);
            if (linearLayout2 == null) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(0, 200, 0, 0);
                linearLayout2 = MyStaticComponents.getLinearLayout(context, IdConstants.ORDT_TEST_RESULT_LAYOUT_ID, 1, layoutParams);
            } else {
                linearLayout.removeView(linearLayout2);
                linearLayout2.removeAllViews();
            }
            linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.REQUEST_ID));
            linearLayout2.addView(MyStaticComponents.generateAnswerView(context, map.get("requestId")));
            linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.REQUEST_TIME));
            linearLayout2.addView(MyStaticComponents.generateAnswerView(context, map.get("timestamp")));
            linearLayout2.addView(MyStaticComponents.generateQuestionView(null, null, context, LabelConstants.OBSERVED_RESULT));
            linearLayout2.addView(MyStaticComponents.generateAnswerView(context, map.get("userObservedResult")));
            linearLayout.addView(linearLayout2);
            if (map.get("capturedImageUri") != null) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(400, ServiceStarter.ERROR_UNKNOWN);
                layoutParams2.setMargins(0, 50, 0, 20);
                layoutParams2.gravity = 17;
                ImageView imageView = MyStaticComponents.getImageView(context, 1, -1, layoutParams2);
                imageView.setImageURI(Uri.parse(map.get("capturedImageUri")));
                linearLayout2.addView(imageView);
            }
            View viewFindViewById = linearLayout.findViewById(IdConstants.ORDT_COMPONENT_RESET_BUTTON_ID);
            if (viewFindViewById != null) {
                viewFindViewById.performClick();
            }
        }
    }

    public static ImageView getLMSQuestionSetImageView(Context context, Long l, String str) {
        if (l == null) {
            return null;
        }
        String str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(l, str);
        if (!UtilBean.isFileExists(str2)) {
            return null;
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str2);
        ImageView imageView = MyStaticComponents.getImageView(context, -1, -1, new LinearLayout.LayoutParams(-1, -2));
        imageView.setAdjustViewBounds(true);
        imageView.setImageBitmap(bitmapDecodeFile);
        return imageView;
    }

    public static Bitmap getLMSQuestionSetImageBitmap(Context context, Long l, String str) {
        if (l == null) {
            return null;
        }
        String str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(l, str);
        if (UtilBean.isFileExists(str2)) {
            return BitmapFactory.decodeFile(str2);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.argusoft.sewa.android.app.component.MyDynamicComponents$19] */
    public static View getHealthIdManagementView(Context context, final QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(400, 400);
        layoutParams.setMargins(0, 100, 0, 20);
        layoutParams.gravity = 17;
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.menu_ncd_reg, layoutParams);
        linearLayout.addView(imageView);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, UtilBean.getMyLabel(LabelConstants.TAP_HERE_TO_CREATE_OR_LINK_HEALTH_ID_FOR_THE_BENEFICIARY));
        materialTextViewGenerateAnswerView.setTextAlignment(4);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.19
            private Activity activity;
            private int currentQuestionId;

            public View.OnClickListener setActivity(Activity activity, int i) {
                this.activity = activity;
                this.currentQuestionId = i;
                return this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws NumberFormatException {
                String str;
                try {
                    SharedStructureData.currentQuestion = this.currentQuestionId;
                    String datamap = queFormBean.getDatamap();
                    Intent intent = new Intent(this.activity, (Class<?>) NDHMHealthIdManagementActivity_.class);
                    intent.putExtra("featureName", queFormBean.getDatamap());
                    String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("dob", queFormBean.getLoopCounter()));
                    String str3 = "";
                    if (str2 != null) {
                        str3 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(Long.parseLong(str2)));
                    }
                    String str4 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.NAME_BASED_ON_AADHAR, queFormBean.getLoopCounter()));
                    String str5 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("firstName", queFormBean.getLoopCounter()));
                    String str6 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("lastName", queFormBean.getLoopCounter()));
                    String str7 = str3;
                    String str8 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.ANS_12, queFormBean.getLoopCounter()));
                    if (str8 == null) {
                        str8 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("gender", queFormBean.getLoopCounter()));
                    }
                    String str9 = SharedStructureData.relatedPropertyHashTable.get("aadharScannedData");
                    String strSubstring = SharedStructureData.relatedPropertyHashTable.get("mobileNumber");
                    if (strSubstring != null && strSubstring.contains("/")) {
                        strSubstring = strSubstring.substring(strSubstring.indexOf("/") + 1);
                    }
                    if (str4 != null) {
                        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, str4);
                    }
                    if (str5 != null) {
                        intent.putExtra("firstName", str5);
                    }
                    if (str6 != null) {
                        intent.putExtra("lastName", str6);
                    }
                    if (str8 == null) {
                        str8 = SharedStructureData.relatedPropertyHashTable.get("gender");
                    }
                    if (str8 != null) {
                        if (str8.equalsIgnoreCase("male")) {
                            str8 = "M";
                        } else if (str8.equalsIgnoreCase("female")) {
                            str8 = "F";
                        }
                    }
                    if (strSubstring == null) {
                        strSubstring = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PHONE_NUMBER);
                    }
                    String str10 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("memberId", queFormBean.getLoopCounter()));
                    if (str10 != null) {
                        intent.putExtra("memberId", Integer.valueOf(str10));
                    }
                    if (queFormBean.getId() == 5192 && datamap != null && datamap.equals("FHW_ANC")) {
                        str = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(Long.parseLong((String) Objects.requireNonNull(SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("dobOfChild", queFormBean.getLoopCounter()))))));
                        intent.putExtra("memberId", -1);
                    } else {
                        str = str7;
                    }
                    intent.putExtra("dob", str);
                    intent.putExtra("gender", str8);
                    intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, str9);
                    intent.putExtra("mobileNumber", strSubstring);
                    this.activity.startActivityForResult(intent, 1020);
                } catch (Exception e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
        }.setActivity((Activity) context, DynamicUtils.getLoopId(queFormBean)));
        return linearLayout;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.argusoft.sewa.android.app.component.MyDynamicComponents$20] */
    public static View getAbhaRecordLinkView(Context context, final QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -1));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(400, 400);
        layoutParams.setMargins(0, 100, 0, 20);
        layoutParams.gravity = 17;
        ImageView imageView = MyStaticComponents.getImageView(context, 1, R.drawable.menu_ncd_reg, layoutParams);
        linearLayout.addView(imageView);
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(context, UtilBean.getMyLabel("Tap here to link record with ABHA Id for the beneficiary"));
        materialTextViewGenerateAnswerView.setTextAlignment(4);
        linearLayout.addView(materialTextViewGenerateAnswerView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.20
            private Activity activity;
            private int currentQuestionId;

            public View.OnClickListener setActivity(Activity activity, int i) {
                this.activity = activity;
                this.currentQuestionId = i;
                return this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws NumberFormatException {
                try {
                    SharedStructureData.currentQuestion = this.currentQuestionId;
                    if (SharedStructureData.sewaService.isOnline()) {
                        Intent intent = new Intent(this.activity, (Class<?>) ABDMRecordLinkActivity_.class);
                        String str = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("memberId", queFormBean.getLoopCounter()));
                        if (str != null) {
                            intent.putExtra("memberId", str);
                        }
                        String str2 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter(RelatedPropertyNameConstants.MEMBER_NAME, queFormBean.getLoopCounter()));
                        String str3 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("dob", queFormBean.getLoopCounter()));
                        String str4 = "";
                        if (str3 != null) {
                            str4 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(new Date(Long.parseLong(str3)));
                        }
                        String str5 = SharedStructureData.relatedPropertyHashTable.get(UtilBean.getRelatedPropertyNameWithLoopCounter("gender", queFormBean.getLoopCounter()));
                        String strSubstring = SharedStructureData.relatedPropertyHashTable.get(RelatedPropertyNameConstants.PHONE_NUMBER);
                        if (strSubstring != null && strSubstring.contains("/")) {
                            strSubstring = strSubstring.substring(strSubstring.indexOf("/") + 1);
                        }
                        String str6 = SharedStructureData.relatedPropertyHashTable.get("healthId");
                        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, str2);
                        intent.putExtra("dob", str4);
                        intent.putExtra("gender", str5);
                        intent.putExtra("mobileNumber", strSubstring);
                        intent.putExtra("healthId", str6);
                        this.activity.startActivityForResult(intent, ActivityConstants.ABHA_RECORD_LINK_REQUEST_CODE);
                    }
                } catch (Exception e) {
                    Log.e(getClass().getName(), null, e);
                }
            }
        }.setActivity((Activity) context, DynamicUtils.getLoopId(queFormBean)));
        return linearLayout;
    }

    public static LinearLayout getHealthInfrastructureTypeComponent(Context context, final QueFormBean queFormBean) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        final Map<Long, String> mapRetrieveDistinctHealthInfraType = SharedStructureData.healthInfrastructureService.retrieveDistinctHealthInfraType();
        final String[] strArr = new String[mapRetrieveDistinctHealthInfraType.size() + 1];
        strArr[0] = UtilBean.getMyLabel("-Select-");
        Iterator<Map.Entry<Long, String>> it = mapRetrieveDistinctHealthInfraType.entrySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            strArr[i] = it.next().getValue();
            i++;
        }
        final Spinner spinner = MyStaticComponents.getSpinner(context, strArr, 0, -1);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.21
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                Long l = null;
                if (spinner.getSelectedItemPosition() != 0) {
                    for (Map.Entry entry : mapRetrieveDistinctHealthInfraType.entrySet()) {
                        if (((String) entry.getValue()).equals(strArr[spinner.getSelectedItemPosition()])) {
                            l = (Long) entry.getKey();
                        }
                    }
                    if (l != null) {
                        queFormBean.setAnswer(l);
                        return;
                    }
                    return;
                }
                queFormBean.setAnswer(null);
            }
        });
        linearLayout.addView(spinner);
        return linearLayout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0078  */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.LinearLayout getAgeBox(android.content.Context r17, int r18, com.argusoft.sewa.android.app.datastructure.QueFormBean r19) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.component.MyDynamicComponents.getAgeBox(android.content.Context, int, com.argusoft.sewa.android.app.datastructure.QueFormBean):android.widget.LinearLayout");
    }

    public static View getCheckBoxWithTextBoxAadhaar(Context context, QueFormBean queFormBean) throws NumberFormatException {
        LinearLayout linearLayout;
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        CheckBoxWithTextBoxAadhaarListener checkBoxWithTextBoxAadhaarListener = new CheckBoxWithTextBoxAadhaarListener(queFormBean);
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(context, LabelConstants.AADHAAR_CONSENT, IdConstants.CHECKBOX_WITH_TEXT_BOX_CHECKBOX_ID, false);
        checkBox.setOnCheckedChangeListener(checkBoxWithTextBoxAadhaarListener);
        checkBox.setTextColor(ContextCompat.getColorStateList(context, R.color.checkbox_selector));
        linearLayout2.addView(checkBox);
        TextView textView = new TextView(context);
        SpannableString spannableString = new SpannableString("Terms & Conditions");
        spannableString.setSpan(new AnonymousClass22(context), 0, 18, 33);
        spannableString.setSpan(new UnderlineSpan(), 0, 18, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setHighlightColor(0);
        textView.setPadding(0, 10, 0, 10);
        textView.setTextColor(ContextCompat.getColor(context, R.color.colorPrimary));
        textView.setClickable(true);
        textView.setFocusable(false);
        linearLayout2.addView(textView);
        LinearLayout linearLayout3 = MyStaticComponents.getLinearLayout(context, IdConstants.CHECKBOX_WITH_TEXT_BOX_INPUT_LAYOUT_ID, 1, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout textInputLayout = null;
        linearLayout3.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_AADHAAR)));
        TextInputLayout editText = MyStaticComponents.getEditText(context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_AADHAAR), -1, queFormBean.getLength(), 2);
        linearLayout3.addView(editText);
        if (checkBoxWithTextBoxAadhaarListener.isOnlyAadhaar()) {
            linearLayout = null;
        } else {
            linearLayout3.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(LabelConstants.NAME_AS_PER_AADHAAR)));
            TextInputLayout editText2 = MyStaticComponents.getEditText(context, UtilBean.getMyLabel(LabelConstants.NAME_AS_PER_AADHAAR), -1, 50, 96);
            linearLayout3.addView(editText2);
            linearLayout3.addView(MyStaticComponents.generateQuestionView(null, null, context, UtilBean.getMyLabel(LabelConstants.DOB_AS_PER_AADHAR)));
            LinearLayout customDatePicker = getCustomDatePicker(queFormBean, context);
            linearLayout3.addView(customDatePicker);
            linearLayout = customDatePicker;
            textInputLayout = editText2;
        }
        checkBoxWithTextBoxAadhaarListener.setInputs(editText, textInputLayout, linearLayout, linearLayout3);
        linearLayout3.setVisibility(8);
        linearLayout2.addView(linearLayout3);
        return linearLayout2;
    }

    /* renamed from: com.argusoft.sewa.android.app.component.MyDynamicComponents$22, reason: invalid class name */
    class AnonymousClass22 extends ClickableSpan {
        final /* synthetic */ Context val$context;

        AnonymousClass22(Context context) {
            this.val$context = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                final Dialog dialog = new Dialog(this.val$context);
                dialog.setCancelable(true);
                final LinearLayout linearLayout = new LinearLayout(this.val$context);
                linearLayout.setOrientation(1);
                linearLayout.setPadding(20, 20, 20, 20);
                final WebView webView = new WebView(this.val$context);
                webView.getSettings().setJavaScriptEnabled(true);
                webView.loadDataWithBaseURL(null, "<html><body style='padding:16px; font-size:14px; line-height:1.6'><h3>Aadhaar Consent</h3><p>I <b></b>, hereby give my voluntary consent to <b>TeCHO+</b> to collect and use my Aadhaar number/Virtual ID and Aadhaar-based information for the purpose of beneficiary registration. </p><p><b>I understand and agree to the following:</b></p><p><b>Purpose:</b> My Aadhaar details will be used solely for the specified purpose and will not be used for any other reason without my further consent.</p><p><b>Storage:</b> TeCHO+ will store my Aadhaar number securely in a dedicated Aadhaar Data Vault as per UIDAI guidelines and will not share it with any third party except as required by law.</p><p><b>Withdrawal:</b> I am aware that I can withdraw this consent at any time by contacting support, upon which my Aadhaar data will be deleted/purged from the vault as per applicable regulations.</p><p><b>Redaction:</b> I understand that if I provide a physical/digital copy of my Aadhaar card, the first 8 digits should be masked/redacted.</p><br></body></html>", "text/html", "UTF-8", null);
                linearLayout.addView(webView, new LinearLayout.LayoutParams(-1, 800));
                Button button = new Button(this.val$context);
                button.setText("Close");
                button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$22$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        dialog.dismiss();
                    }
                });
                linearLayout.addView(button);
                dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents$22$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        MyDynamicComponents.AnonymousClass22.lambda$onClick$1(linearLayout, webView, dialogInterface);
                    }
                });
                dialog.setContentView(linearLayout);
                dialog.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        static /* synthetic */ void lambda$onClick$1(LinearLayout linearLayout, WebView webView, DialogInterface dialogInterface) {
            linearLayout.removeView(webView);
            webView.stopLoading();
            webView.loadUrl("about:blank");
            webView.removeAllViews();
            webView.destroy();
        }
    }

    public static LinearLayout getTestSelectorComponent(Context context, final QueFormBean queFormBean) throws JSONException {
        List list;
        String[] strArr;
        LinearLayout linearLayout = new LinearLayout(context);
        int i = 1;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        List listAsList = Arrays.asList("HIV Test", "HBsAg Test", "VDRL Test", "Sickle Cell Test", "Thalassemia Test", "Haemophilia Test");
        List listAsList2 = Arrays.asList(RelatedPropertyNameConstants.HIV_TEST, RelatedPropertyNameConstants.HBSAG_TEST, RelatedPropertyNameConstants.VDRL_TEST, RelatedPropertyNameConstants.SICKLE_CELL_TEST, "thalassemiaTest", RelatedPropertyNameConstants.HAEMOPHILIA_TEST);
        int i2 = 0;
        List listAsList3 = Arrays.asList(new String[]{"--Select--", "Not done", RchConstants.TEST_POSITIVE, "Negative"}, new String[]{"--Select--", "Not done", "Reactive", "Non-reactive"}, new String[]{"--Select--", "Not done", "Positive", "Negative"}, new String[]{"--Select--", "Not done", "Negative", RchConstants.HIGH_RISK_SOCIAL_CELL_TRAIT, "Sickle Cell"}, new String[]{"--Select--", "Not done", RchConstants.HIGH_RISK_THALASSEMIA_MAJOR, RchConstants.HIGH_RISK_THALASSEMIA_MINOR, "Negative"}, new String[]{"--Select--", "Not done", RchConstants.TEST_POSITIVE, "Negative"});
        String[] strArr2 = {RelatedPropertyNameConstants.HIV_TEST, RelatedPropertyNameConstants.HBSAG_TEST, RelatedPropertyNameConstants.VDRL_TEST, RelatedPropertyNameConstants.SICKLE_CELL_TEST, RelatedPropertyNameConstants.THALESSEMIA_TEST, RelatedPropertyNameConstants.HAEMOPHILIA_TEST};
        JSONObject jSONObject = new JSONObject();
        try {
            if (queFormBean.getAnswer() != null) {
                jSONObject = new JSONObject(queFormBean.getAnswer().toString());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (i3 < listAsList.size()) {
            String str = SharedStructureData.relatedPropertyHashTable.get(strArr2[i3]);
            if (str == null || str.isEmpty()) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(i);
                linearLayout2.setPadding(i2, i2, i2, 24);
                MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, context, (String) listAsList.get(i3));
                SpannableString spannableString = new SpannableString(((String) listAsList.get(i3)) + " *");
                list = listAsList;
                strArr = strArr2;
                spannableString.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), spannableString.length() + (-1), spannableString.length(), 33);
                materialTextViewGenerateQuestionView.setText(spannableString);
                Spinner spinner = MyStaticComponents.getSpinner(context, (String[]) listAsList3.get(i3), 0, -1);
                arrayList.add(spinner);
                arrayList2.add((String) listAsList2.get(i3));
                if (jSONObject.has((String) listAsList2.get(i3))) {
                    try {
                        String string = jSONObject.getString((String) listAsList2.get(i3));
                        String[] strArr3 = (String[]) listAsList3.get(i3);
                        int i4 = 0;
                        while (true) {
                            if (i4 >= strArr3.length) {
                                break;
                            }
                            if (strArr3[i4].equalsIgnoreCase(string)) {
                                spinner.setSelection(i4);
                                break;
                            }
                            i4++;
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.MyDynamicComponents.23
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onNothingSelected(AdapterView<?> adapterView) {
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) throws JSONException {
                        MyDynamicComponents.validateAllTestsSelected(arrayList, arrayList2, queFormBean);
                    }
                });
                linearLayout2.addView(materialTextViewGenerateQuestionView);
                linearLayout2.addView(spinner);
                linearLayout.addView(linearLayout2);
            } else {
                list = listAsList;
                strArr = strArr2;
            }
            i3++;
            listAsList = list;
            strArr2 = strArr;
            i = 1;
            i2 = 0;
        }
        validateAllTestsSelected(arrayList, arrayList2, queFormBean);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void validateAllTestsSelected(List<Spinner> list, List<String> list2, QueFormBean queFormBean) throws JSONException {
        if (list.isEmpty()) {
            queFormBean.setMandatorymessage(null);
            queFormBean.setAnswer(null);
            return;
        }
        Iterator<Spinner> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getSelectedItemPosition() == 0) {
                queFormBean.setMandatorymessage("Please select result for all tests");
                queFormBean.setAnswer(null);
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        for (int i = 0; i < list2.size(); i++) {
            try {
                jSONObject.put(list2.get(i), list.get(i).getSelectedItem().toString());
            } catch (JSONException e) {
                e.printStackTrace();
                return;
            }
        }
        queFormBean.setMandatorymessage(null);
        queFormBean.setAnswer(jSONObject.toString());
    }
}
