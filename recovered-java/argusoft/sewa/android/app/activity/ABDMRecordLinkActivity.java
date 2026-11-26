package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.component.listeners.DateChangeListenerStatic;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NDHMConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.HIPCareContextMaster;
import com.argusoft.sewa.android.app.databean.HIPPatientIdentifiers;
import com.argusoft.sewa.android.app.databean.HIPVerifyDemography;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ABDMRecordLinkActivity extends MenuActivity implements View.OnClickListener {
    private static final String ABHA_ID_SCREEN = "abhaIdScreen";
    private static final String AUTH_MODE_SELECTION_SCREEN = "authModeSelectionScreen";
    private static final String DEMOGRAPHICS_SCREEN = "demographicsScreen";
    private static final String DIRECT_AUTH_SCREEN = "directAuthScreen";
    private static final String OTP_VERIFICATION_SCREEN = "otpVerificationScreen";
    private static final String TAG = "ABDMRecordLink";
    private static final SimpleDateFormat displaySDF = new SimpleDateFormat("yyyy", Locale.getDefault());
    private TextInputLayout abhaIdTB;
    private RadioGroup authModeRG;
    private LinearLayout bodyLayoutContainer;
    private HIPCareContextMaster contextMaster;
    private LinearLayout detailsLayout;
    private DateChangeListenerStatic dobChangeListener;
    private LinearLayout dobDP;
    private LinearLayout footerLayout;
    private RadioGroup genderRG;
    private LinearLayout globalPanel;
    private Integer memberId;
    private TextInputLayout mobileNumberTB;
    private MyAlertDialog myAlertDialog;
    private TextInputLayout nameTB;
    private Button nextButton;
    private LinearLayout otpLayout;
    private TextInputLayout otpTB;
    private String requestId;
    private MaterialTextView resendBtn;
    private Map<String, String> response;
    SewaServiceRestClientImpl restClient;
    private String screen;
    private String selectedAuthMode;
    private MaterialTextView skipBtn;
    private MaterialTextView timer;
    private MaterialButton verificationBtn;
    List<OptionDataBean> options = new ArrayList();
    private final Timer[] timerCounter = new Timer[1];
    private final int[] counter = {30, 0};
    List<String> authModes = new ArrayList();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        this.memberId = Integer.valueOf(Integer.parseInt(getIntent().getStringExtra("memberId")));
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
        setTitle(UtilBean.getTitleText(LabelConstants.LINK_RECORD));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        getCareContextMasterDetails();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == DynamicUtils.ID_NEXT_BUTTON) {
            String str = this.screen;
            str.hashCode();
            switch (str) {
                case "otpVerificationScreen":
                    Timer timer = this.timerCounter[0];
                    if (timer != null) {
                        timer.cancel();
                        break;
                    }
                    break;
                case "directAuthScreen":
                    showProcessDialog();
                    checkForDirectAuth();
                    break;
                case "abhaIdScreen":
                    if (abhaIdValidation()) {
                        showProcessDialog();
                        fetchAuthModes();
                        break;
                    }
                    break;
                case "demographicsScreen":
                    if (dobValidation() && genderValidation() && mobileNumberValidation() && nameValidation()) {
                        showProcessDialog();
                        validateDemographics();
                        break;
                    }
                    break;
                case "authModeSelectionScreen":
                    if (abhaIdValidation()) {
                        showProcessDialog();
                        this.selectedAuthMode = this.options.get(this.authModeRG.getCheckedRadioButtonId()).getKey();
                        validateAuthMode();
                        break;
                    }
                    break;
            }
        }
    }

    private void setComponentForAbhaId() {
        this.abhaIdTB = MyStaticComponents.getEditTextWithSpecialCharacter(this.context, LabelConstants.ABHA_ID, -1, 99, 144);
        setAbhaIdScreen();
    }

    private boolean dobValidation() {
        DateChangeListenerStatic dateChangeListenerStatic = this.dobChangeListener;
        if (dateChangeListenerStatic != null && dateChangeListenerStatic.getDateSet() != null) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter birth date"));
        return false;
    }

    private boolean nameValidation() {
        if (this.nameTB.getEditText() != null && this.nameTB.getEditText().getText() != null && !this.nameTB.getEditText().getText().toString().trim().isEmpty()) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter name"));
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

    private boolean isValidContactNumber(String str) {
        return Pattern.compile("^[9876]{1}[0-9]{9}$").matcher(str).matches();
    }

    private boolean genderValidation() {
        RadioGroup radioGroup = this.genderRG;
        if (radioGroup != null && radioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.GENDER_REQUIRED_ALERT));
        return false;
    }

    private boolean authModeValidation() {
        RadioGroup radioGroup = this.authModeRG;
        if (radioGroup != null && radioGroup.getCheckedRadioButtonId() != -1) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please select auth mose"));
        return false;
    }

    public void validateAuthMode() {
        final String[] strArr = {"Issue with auth method validation or selected auth mode is not allowed for you"};
        try {
            this.response = this.restClient.initLinking(this.abhaIdTB.getEditText().getText().toString(), this.memberId, this.selectedAuthMode);
            hideProcessDialog();
            if (!this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_MOBILE_OTP) && !this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_AADHAAR_OTP) && !this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_EMAIL_OTP)) {
                if (this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_DEMOGRAPHICS)) {
                    setDemographicsScreen();
                    return;
                } else {
                    setDirectAuthScreen();
                    return;
                }
            }
            setOTPVerificationScreen();
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    ABDMRecordLinkActivity.this.hideProcessDialog();
                    SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
                }
            });
        }
    }

    public void getCareContextMasterDetails() {
        final String[] strArr = {"Issue with care context master details"};
        try {
            List<HIPCareContextMaster> careContextMasterDetails = this.restClient.getCareContextMasterDetails(this.memberId.toString());
            if (careContextMasterDetails.size() > 0) {
                for (HIPCareContextMaster hIPCareContextMaster : careContextMasterDetails) {
                    if (hIPCareContextMaster.getPreferred().booleanValue()) {
                        this.contextMaster = hIPCareContextMaster;
                        setComponentForAbhaId();
                        return;
                    }
                }
            }
            hideProcessDialog();
            setComponentForAbhaId();
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    ABDMRecordLinkActivity.this.hideProcessDialog();
                    SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
                }
            });
        }
    }

    public void validateDemographics() {
        String str;
        final String[] strArr = {"Issue with demographics"};
        try {
            HIPVerifyDemography hIPVerifyDemography = new HIPVerifyDemography();
            int checkedRadioButtonId = this.genderRG.getCheckedRadioButtonId();
            if (checkedRadioButtonId == 10002) {
                str = "M";
            } else if (checkedRadioButtonId == 10003) {
                str = "F";
            } else if (checkedRadioButtonId == 10035) {
                str = "U";
            } else if (checkedRadioButtonId == 10036) {
                str = GlobalTypes.OTHERS;
            } else {
                str = "";
            }
            hIPVerifyDemography.setGender(str);
            hIPVerifyDemography.setName(this.nameTB.getEditText().getText().toString().trim());
            hIPVerifyDemography.setDateOfBirth(displaySDF.format(this.dobChangeListener.getDateSet()));
            HIPPatientIdentifiers hIPPatientIdentifiers = new HIPPatientIdentifiers();
            hIPPatientIdentifiers.setType("MOBILE");
            hIPPatientIdentifiers.setValue("+91" + this.mobileNumberTB.getEditText().getText().toString().trim());
            hIPVerifyDemography.setIdentifier(hIPPatientIdentifiers);
            this.requestId = this.restClient.verifyDemography(this.response.get("requestId"), hIPVerifyDemography);
            hideProcessDialog();
            showInformationDialog();
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    ABDMRecordLinkActivity.this.hideProcessDialog();
                    SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
                }
            });
        }
    }

    public void checkForDirectAuth() {
        String strCheckForDirectAuth;
        final String[] strArr = {"Issue with Direct auth mode"};
        try {
            strCheckForDirectAuth = this.restClient.checkForDirectAuth(this.response.get("responseId"));
            hideProcessDialog();
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        if (strCheckForDirectAuth.equals("DIRECT_AUTH_GRANTED")) {
            this.requestId = this.response.get("responseId");
            showInformationDialog();
        } else {
            if (strCheckForDirectAuth.equals("DIRECT_AUTH_DENIED")) {
                showAlertDialog();
                return;
            }
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    ABDMRecordLinkActivity.this.hideProcessDialog();
                    SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
                }
            });
        }
    }

    public void showAlertDialog() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.DIRECT_AUTH_MODE_DENIED_MSG, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m122x35ff42f1(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showAlertDialog$0$com-argusoft-sewa-android-app-activity-ABDMRecordLinkActivity, reason: not valid java name */
    /* synthetic */ void m122x35ff42f1(View view) {
        this.myAlertDialog.dismiss();
        finish();
    }

    public void showInformationDialog() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.LINK_RECORD_MSG, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m123x89029282(view);
            }
        }, DynamicUtils.BUTTON_OK);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showInformationDialog$1$com-argusoft-sewa-android-app-activity-ABDMRecordLinkActivity, reason: not valid java name */
    /* synthetic */ void m123x89029282(View view) {
        this.myAlertDialog.dismiss();
        sendResponse();
    }

    public void setAbhaIdScreen() {
        this.screen = ABHA_ID_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        String stringExtra = getIntent().getStringExtra("healthId");
        if (stringExtra != null) {
            this.abhaIdTB.getEditText().setText(stringExtra);
        }
        if (this.contextMaster != null) {
            this.abhaIdTB.getEditText().setText(this.contextMaster.getHealthId());
        }
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.LINK_RECORD)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.ENTER_ABHA_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.ABHA_ID)));
        this.bodyLayoutContainer.addView(this.abhaIdTB);
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
    }

    public void fetchAuthModes() {
        final String[] strArr = {"Issue for getting authentication methods"};
        try {
            List<String> listFetchAuthModesByHealthId = this.restClient.fetchAuthModesByHealthId(this.abhaIdTB.getEditText().getText().toString().trim(), this.memberId);
            this.authModes = listFetchAuthModesByHealthId;
            if (listFetchAuthModesByHealthId != null) {
                listFetchAuthModesByHealthId.add(NDHMConstants.AUTH_MODE_DIRECT);
                if (this.authModes.contains(NDHMConstants.AUTH_MODE_PASSWORD)) {
                    this.authModes.remove(NDHMConstants.AUTH_MODE_PASSWORD);
                }
                setAuthModeSelectionScreen();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.5
            @Override // java.lang.Runnable
            public void run() {
                ABDMRecordLinkActivity.this.hideProcessDialog();
                SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
            }
        });
    }

    public void resendOTP() {
        final String[] strArr = {"Issue for sending otp again"};
        try {
            Map<String, String> mapInitLinking = this.restClient.initLinking(this.abhaIdTB.getEditText().getText().toString(), this.memberId, this.selectedAuthMode);
            this.response = mapInitLinking;
            if (mapInitLinking != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ABDMRecordLinkActivity.this.timerCounter[0] = new Timer();
                        ABDMRecordLinkActivity.this.startTimer();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.7
            @Override // java.lang.Runnable
            public void run() {
                ABDMRecordLinkActivity.this.hideProcessDialog();
                SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
            }
        });
    }

    public void setAuthModeSelectionScreen() {
        this.screen = AUTH_MODE_SELECTION_SCREEN;
        this.authModeRG = new RadioGroup(this.context);
        for (String str : this.authModes) {
            OptionDataBean optionDataBean = new OptionDataBean();
            optionDataBean.setKey(str);
            optionDataBean.setValue(NDHMConstants.getAuthModeFullName(str));
            this.options.add(optionDataBean);
            this.authModeRG.addView(MyStaticComponents.getRadioButton(this.context, optionDataBean.getValue(), this.options.indexOf(optionDataBean)));
            HIPCareContextMaster hIPCareContextMaster = this.contextMaster;
            if (hIPCareContextMaster != null && str.equals(hIPCareContextMaster.getPrefAuthMode())) {
                this.authModeRG.check(this.options.indexOf(optionDataBean));
            }
        }
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.AUTH_MODE_MSG)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_AUTH_MODE)));
        this.bodyLayoutContainer.addView(this.authModeRG);
        hideProcessDialog();
    }

    public void setOTPVerificationScreen() {
        this.screen = OTP_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        String myLabel = UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_THE_OTP_RECEIVED_ON_THE_AADHAAR_LINKED_MOBILE_NUMBER);
        if (this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_MOBILE_OTP)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.MOBILE_OTP_MSG);
        } else if (this.selectedAuthMode.equals(NDHMConstants.AUTH_MODE_EMAIL_OTP)) {
            myLabel = UtilBean.getMyLabel(LabelConstants.EMAIL_OTP_MSG);
        }
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        this.otpLayout = linearLayout;
        ((MaterialTextView) linearLayout.findViewById(R.id.description)).setText(myLabel);
        ((MaterialTextView) this.otpLayout.findViewById(R.id.or)).setVisibility(4);
        TextInputLayout textInputLayout = (TextInputLayout) this.otpLayout.findViewById(R.id.otpText);
        this.otpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            this.otpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
            this.otpTB.getEditText().setInputType(2);
        }
        MaterialButton materialButton = (MaterialButton) this.otpLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        this.timer = (MaterialTextView) this.otpLayout.findViewById(R.id.timer);
        this.resendBtn = (MaterialTextView) this.otpLayout.findViewById(R.id.resend);
        this.skipBtn = (MaterialTextView) this.otpLayout.findViewById(R.id.skip);
        this.resendBtn.setEnabled(false);
        this.skipBtn.setEnabled(false);
        this.skipBtn.setVisibility(4);
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ABDMRecordLinkActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ABDMRecordLinkActivity.this.showProcessDialog();
                ABDMRecordLinkActivity.this.VerifyOTP();
            }
        });
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ABDMRecordLinkActivity.this.showProcessDialog();
                ABDMRecordLinkActivity.this.resendOTP();
            }
        });
        this.bodyLayoutContainer.addView(this.otpLayout);
        this.counter[1] = 0;
        startTimer();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDemographicsScreen() {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.setDemographicsScreen():void");
    }

    public void setDirectAuthScreen() {
        this.screen = DIRECT_AUTH_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.DIRECT_AUTH_MODE_MSG)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTimer() {
        int[] iArr = this.counter;
        iArr[0] = 30;
        iArr[1] = iArr[1] + 1;
        this.timer.setVisibility(0);
        this.resendBtn.setEnabled(false);
        this.skipBtn.setEnabled(false);
        Timer timer = this.timerCounter[0];
        if (timer != null) {
            timer.cancel();
        }
        this.timerCounter[0] = new Timer();
        this.timerCounter[0].schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.11
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (ABDMRecordLinkActivity.this.counter[0] > 0) {
                    ABDMRecordLinkActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ABDMRecordLinkActivity.this.timer.setText(String.format(Locale.getDefault(), "in %ds", Integer.valueOf(ABDMRecordLinkActivity.this.counter[0])));
                            int[] iArr2 = ABDMRecordLinkActivity.this.counter;
                            iArr2[0] = iArr2[0] - 1;
                        }
                    });
                } else {
                    ABDMRecordLinkActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.11.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ABDMRecordLinkActivity.this.timer.setVisibility(8);
                            ABDMRecordLinkActivity.this.resendBtn.setEnabled(true);
                            ABDMRecordLinkActivity.this.skipBtn.setEnabled(true);
                            ABDMRecordLinkActivity.this.resendBtn.setTextColor(Color.parseColor("#245eae"));
                            ABDMRecordLinkActivity.this.skipBtn.setTextColor(Color.parseColor("#245eae"));
                        }
                    });
                    cancel();
                }
            }
        }, 50L, 1500L);
        hideProcessDialog();
    }

    public void VerifyOTP() {
        final String[] strArr = {"Issue in otp verification for record linking"};
        try {
            this.requestId = this.restClient.verifyOtpForRecordLinking(this.response.get("requestId"), this.otpTB.getEditText().getText().toString());
            hideProcessDialog();
            if (this.requestId != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ABDMRecordLinkActivity.this.timerCounter[0] != null) {
                            ABDMRecordLinkActivity.this.timerCounter[0].cancel();
                        }
                        ABDMRecordLinkActivity.this.timer.setVisibility(8);
                        ABDMRecordLinkActivity.this.resendBtn.setEnabled(false);
                        ABDMRecordLinkActivity.this.skipBtn.setEnabled(false);
                        ABDMRecordLinkActivity.this.verificationBtn.setEnabled(false);
                        ABDMRecordLinkActivity.this.otpTB.setEnabled(false);
                        ABDMRecordLinkActivity.this.showInformationDialog();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.13
            @Override // java.lang.Runnable
            public void run() {
                ABDMRecordLinkActivity.this.hideProcessDialog();
                SewaUtil.generateToast(ABDMRecordLinkActivity.this.context, strArr[0]);
            }
        });
    }

    private boolean abhaIdValidation() {
        if (this.abhaIdTB.getEditText() != null && this.abhaIdTB.getEditText().getText() != null && !this.abhaIdTB.getEditText().getText().toString().trim().isEmpty()) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter ABHA ID"));
        return false;
    }

    private void sendResponse() {
        Intent intent = new Intent();
        intent.putExtra("RequestId", this.requestId);
        setResult(-1, intent);
        finish();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
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
            switch (str2) {
                case "otpVerificationScreen":
                    Timer timer = this.timerCounter[0];
                    if (timer != null) {
                        timer.cancel();
                    }
                    setAuthModeSelectionScreen();
                    break;
                case "directAuthScreen":
                case "demographicsScreen":
                    setAuthModeSelectionScreen();
                    break;
                case "abhaIdScreen":
                    setResult(0);
                    finish();
                    break;
                case "authModeSelectionScreen":
                    setComponentForAbhaId();
                    break;
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.screen != null && Arrays.asList(ABHA_ID_SCREEN, AUTH_MODE_SELECTION_SCREEN, OTP_VERIFICATION_SCREEN, DEMOGRAPHICS_SCREEN, DIRECT_AUTH_SCREEN).contains(this.screen)) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, UtilBean.getMyLabel(LabelConstants.EXIT_LINK_RECORD_MSG), new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.ABDMRecordLinkActivity.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (view.getId() == -1) {
                        ABDMRecordLinkActivity.this.myAlertDialog.dismiss();
                        ABDMRecordLinkActivity.this.setResult(0);
                        ABDMRecordLinkActivity.this.finish();
                        return;
                    }
                    ABDMRecordLinkActivity.this.myAlertDialog.dismiss();
                }
            }, DynamicUtils.BUTTON_YES_NO);
            this.myAlertDialog = myAlertDialog;
            myAlertDialog.show();
            return;
        }
        super.onBackPressed();
    }
}
