package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.TextViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.DateChangeListenerStatic;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileResponse;
import com.argusoft.sewa.android.app.databean.OfflineHealthIdBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.qrscanner.QRScannerActivity;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.ValidationFormulaUtil;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class NDHMOfflineHealthIdCreationActivity extends MenuActivity implements View.OnClickListener {
    private static final String ADD_DETAILS = "add_details";
    private static final String CONFIRMATION_MESSAGE = "CONFIRMATION_MESSAGE";
    private static final String OFFLINE_MESSAGE = "OFFLINE_MESSAGE";
    private static final String TAG = "NDHMHealthIdCreation";
    Map<String, String> aadhaarDetailsMap;
    private TextInputLayout aadhaarTB;
    private String abhaConsentCheckboxModel;
    private HealthIdAccountProfileResponse accountProfileResponse;
    private LinearLayout bodyLayoutContainer;
    private LinearLayout detailsLayout;
    private DateChangeListenerStatic dobChangeListener;
    private LinearLayout dobDP;
    private RadioGroup genderRG;
    private LinearLayout globalPanel;
    private Integer memberId;
    private TextInputLayout mobileNumberTB;
    private MyAlertDialog myAlertDialog;
    private TextInputLayout nameTB;
    private Button nextButton;
    SewaServiceRestClientImpl restClient;
    private String screen;
    private String txnId;
    CheckBox yearOnlyCheckBox;
    Spinner yearSpinner;
    private static final SimpleDateFormat SDF = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault());
    private static final SimpleDateFormat displaySDF = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws NumberFormatException {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        if (!SharedStructureData.isLogin) {
            Intent intent = new Intent(this.context, (Class<?>) LoginActivity_.class);
            intent.setFlags(335544320);
            startActivity(intent);
            finish();
        }
        this.memberId = Integer.valueOf(getIntent().getIntExtra("memberId", -1));
        this.abhaConsentCheckboxModel = getIntent().getStringExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL);
        setTitle(UtilBean.getTitleText(LabelConstants.CREATE_HEALTH_ID));
    }

    private void initView() throws NumberFormatException {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        Button button = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.nextButton = button;
        button.setOnClickListener(this);
        this.detailsLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        setComponent();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "add_details":
                    if (aadhaarValidation() && dobValidation() && genderValidation() && mobileNumberValidation() && nameValidation()) {
                        setMessageConformationScreen();
                        break;
                    }
                    break;
                case "OFFLINE_MESSAGE":
                    finish();
                    break;
                case "CONFIRMATION_MESSAGE":
                    sendResponse();
                    setMessageOfflineScreen();
                    break;
            }
        }
        if (view.getId() == 10040) {
            IntentIntegrator intentIntegrator = new IntentIntegrator(this);
            intentIntegrator.setCaptureActivity(QRScannerActivity.class);
            intentIntegrator.initiateScan();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        IntentResult activityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        super.onActivityResult(i, i2, intent);
        if (activityResult != null) {
            if (activityResult.getContents() == null) {
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
                return;
            }
            try {
                Map<String, String> aadharScanDataMap = AadharScanUtil.getAadharScanDataMap(activityResult.getContents());
                this.aadhaarDetailsMap = aadharScanDataMap;
                if (aadharScanDataMap != null) {
                    setAadhaarQRScanData();
                } else {
                    SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
                }
            } catch (DataException e) {
                Log.e(TAG, null, e);
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SCAN_AADHAAR);
            } catch (Exception e2) {
                Log.e(TAG, null, e2);
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
            }
        }
    }

    private void setAadhaarQRScanData() {
        Map<String, String> map = this.aadhaarDetailsMap;
        if (map != null) {
            String aadhaarValueFromMap = getAadhaarValueFromMap(map, AadharScanUtil.UID);
            if (aadhaarValueFromMap != null) {
                this.aadhaarTB.getEditText().setText(aadhaarValueFromMap);
            }
            String aadhaarValueFromMap2 = getAadhaarValueFromMap(this.aadhaarDetailsMap, "name");
            if (aadhaarValueFromMap2 != null) {
                this.nameTB.getEditText().setText(aadhaarValueFromMap2);
            }
            String aadhaarValueFromMap3 = getAadhaarValueFromMap(this.aadhaarDetailsMap, "dob");
            if (aadhaarValueFromMap3 != null) {
                setDOB(aadhaarValueFromMap3);
            }
        }
    }

    private String getAadhaarValueFromMap(Map<String, String> map, String str) {
        String str2;
        if (map == null || !map.containsKey(str) || (str2 = map.get(str)) == null || str2.isEmpty()) {
            return null;
        }
        return str2;
    }

    private void setDOB(String str) {
        Date date;
        for (int i = 0; i < this.dobDP.getChildCount(); i++) {
            if ((this.dobDP.getChildAt(i) instanceof MaterialTextView) && str != null && !str.isEmpty() && (date = AadharScanUtil.formatDate(str)) != null) {
                ((MaterialTextView) this.dobDP.getChildAt(i)).setText(displaySDF.format(date));
                this.dobChangeListener.setDateSet(date);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setComponent() throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 971
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdCreationActivity.setComponent():void");
    }

    /* renamed from: lambda$setComponent$0$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m382x1d341052(ArrayList arrayList, CompoundButton compoundButton, boolean z) {
        if (!z) {
            this.dobDP.setVisibility(0);
            this.yearSpinner.setVisibility(8);
            return;
        }
        String string = ((MaterialTextView) this.dobDP.getChildAt(0)).getText().toString();
        if (!string.isEmpty()) {
            try {
                Date date = displaySDF.parse(string);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                int iIndexOf = arrayList.indexOf(String.valueOf(calendar.get(1)));
                if (iIndexOf != -1) {
                    this.yearSpinner.setSelection(iIndexOf);
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        this.dobDP.setVisibility(8);
        this.yearSpinner.setVisibility(0);
    }

    public void setMessageConformationScreen() {
        this.screen = CONFIRMATION_MESSAGE;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setVisibility(8);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.REGISTER));
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMyLabel(LabelConstants.ABHA_OFFLINE_CONSENT), -1, false);
        checkBox.setGravity(48);
        TextViewCompat.setTextAppearance(checkBox, R.style.CustomSubtitleView);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m383xccf65dac(compoundButton, z);
            }
        });
        this.bodyLayoutContainer.addView(checkBox);
    }

    /* renamed from: lambda$setMessageConformationScreen$1$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m383xccf65dac(CompoundButton compoundButton, boolean z) {
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            this.nextButton.setVisibility(0);
        } else {
            this.nextButton.setVisibility(8);
        }
    }

    public void setMessageOfflineScreen() {
        this.screen = OFFLINE_MESSAGE;
        this.bodyLayoutContainer.removeAllViews();
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setVisibility(0);
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.OFFLINE_ABHA_NUMBER_CREATION_MESSAGE));
        materialTextViewGenerateTitleView.setGravity(48);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
    }

    private boolean isValidContactNumber(String str) {
        return Pattern.compile("^[9876]{1}[0-9]{9}$").matcher(str).matches();
    }

    private boolean aadhaarValidation() {
        if (this.aadhaarTB.getEditText() == null || this.aadhaarTB.getEditText().getText() == null || this.aadhaarTB.getEditText().getText().toString().trim().isEmpty()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_AADHAAR));
            return false;
        }
        String strAadhaarNumber = ValidationFormulaUtil.aadhaarNumber(this.aadhaarTB.getEditText().getText().toString().trim());
        if (strAadhaarNumber == null) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(strAadhaarNumber));
        return false;
    }

    private boolean mobileNumberValidation() {
        if (this.mobileNumberTB.getEditText() == null || this.mobileNumberTB.getEditText().getText() == null || this.mobileNumberTB.getEditText().getText().toString().trim().isEmpty()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_REQUIRED_ALERT));
            return false;
        }
        if (this.mobileNumberTB.getEditText().getText().toString().trim().length() < 10) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Mobile number must contains 10 digit numbers only"));
            return false;
        }
        if (isValidContactNumber(this.mobileNumberTB.getEditText().getText().toString().trim())) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter valid mobile number"));
        return false;
    }

    private boolean genderValidation() {
        RadioGroup radioGroup = this.genderRG;
        if (radioGroup != null && radioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.GENDER_REQUIRED_ALERT));
        return false;
    }

    private boolean dobValidation() {
        if (this.yearOnlyCheckBox.isChecked()) {
            if (this.yearSpinner.getSelectedItemPosition() > 0) {
                return true;
            }
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please select year of birth"));
            return false;
        }
        DateChangeListenerStatic dateChangeListenerStatic = this.dobChangeListener;
        if (dateChangeListenerStatic != null && dateChangeListenerStatic.getDateSet() != null) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter birth date"));
        return false;
    }

    private boolean nameValidation() {
        if (this.nameTB.getEditText() == null || this.nameTB.getEditText().getText() == null || this.nameTB.getEditText().getText().toString().trim().isEmpty()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter name"));
            return false;
        }
        if (this.nameTB.getEditText().getText().toString().trim().matches("^[a-zA-Z0-9\\s!@#$%^&*()-_=+{}|;:'\",.<>/?\\[\\]\\\\]+$")) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter a name using only English characters."));
        return false;
    }

    private void sendResponse() {
        String str;
        String string;
        if (this.genderRG.getCheckedRadioButtonId() == 10002) {
            str = "M";
        } else if (this.genderRG.getCheckedRadioButtonId() == 10003) {
            str = "F";
        } else {
            str = GlobalTypes.OTHERS;
        }
        String str2 = str;
        if (this.yearOnlyCheckBox.isChecked()) {
            string = this.yearSpinner.getSelectedItem().toString();
        } else {
            string = SDF.format(this.dobChangeListener.getDateSet());
        }
        String str3 = string;
        Intent intent = new Intent();
        intent.putExtra("OfflineHealthIdBean", new Gson().toJson(new OfflineHealthIdBean(this.aadhaarTB.getEditText().getText().toString().trim(), str3, str2, this.mobileNumberTB.getEditText().getText().toString().trim(), this.nameTB.getEditText().getText().toString().trim(), getIntent().getStringExtra(RelatedPropertyNameConstants.AUDIO_FILE_NAME), this.memberId, this.abhaConsentCheckboxModel)));
        setResult(-1, intent);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            setResult(0);
            finish();
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            if (str2.equals(ADD_DETAILS)) {
                setResult(0);
                finish();
            } else if (str2.equals(CONFIRMATION_MESSAGE)) {
                this.screen = ADD_DETAILS;
                this.bodyLayoutContainer.removeAllViews();
                this.bodyLayoutContainer.addView(this.detailsLayout);
                this.nextButton.setVisibility(0);
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.screen == null || !Arrays.asList(ADD_DETAILS).contains(this.screen)) {
            super.onBackPressed();
            return;
        }
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_CREATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMOfflineHealthIdCreationActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m381xb68ca329(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$2$com-argusoft-sewa-android-app-activity-NDHMOfflineHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m381xb68ca329(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            setResult(0);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }
}
