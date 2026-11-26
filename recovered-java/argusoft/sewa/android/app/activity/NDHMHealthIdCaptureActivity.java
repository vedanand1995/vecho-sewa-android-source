package com.argusoft.sewa.android.app.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.TextViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyArrayAdapter;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.NDHMConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.AbhaAddressSearchResponse;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileResponse;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileTokenResponse;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileV3Response;
import com.argusoft.sewa.android.app.databean.HealthIdProfileLoginAccount;
import com.argusoft.sewa.android.app.databean.HealthIdProfileLoginVerifyResponse;
import com.argusoft.sewa.android.app.databean.HealthIdSearchResponse;
import com.argusoft.sewa.android.app.databean.LinkBenefitIdResponse;
import com.argusoft.sewa.android.app.databean.MobileVerificationResponse;
import com.argusoft.sewa.android.app.databean.OptionDataBean;
import com.argusoft.sewa.android.app.databean.SearchABHADetails;
import com.argusoft.sewa.android.app.databean.SearchAbhaResponse;
import com.argusoft.sewa.android.app.databean.StateResponse;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.ValidationFormulaUtil;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class NDHMHealthIdCaptureActivity extends MenuActivity implements View.OnClickListener {
    private static final String AADHAAR_NUMBER_COLLECTION_SCREEN = "createNumberCollectionScreen";
    private static final String AADHAAR_NUMBER_VERIFICATION_SCREEN = "aadharNumberVerificationScreen";
    private static final String ABHA_ADDRESS_VERIFICATION_SCREEN = "abhAddressVerificationScreen";
    private static final String ABHA_NUMBER_SELECTION_SCREEN = "abhaNumberSelectionScreen";
    private static final String ABHA_NUMBER_VERIFICATION_SCREEN = "abhaNumberVerificationScreen";
    private static final String AUTH_MODE_DEMOGRAPHIC_SCREEN = "authModeDemographicScreen";
    private static final String AUTH_MODE_SELECTION_SCREEN = "authModeSelectionScreen";
    private static final String CODE_STATE_GUJARAT = "24";
    private static final String DISPLAY_HEALTH_ID_SCREEN = "displayHealthIdScreen";
    private static final int FINGER_PRINT_REQUEST_CODE = 1001;
    private static final String HEALTH_ID_VERIFICATION_SCREEN = "healthIdVerificationScreen";
    private static final String METHOD_SELECTION_SCREEN = "methodSelectionScreen";
    private static final String MOBILE_OTP_VALIDATION_SCREEN = "mobileOtpValidationScreen";
    private static final String MOBILE_VERIFICATION_SCREEN = "mobileVerificationScreen";
    private static final String OTP_VALIDATION_SCREEN = "otpValidationScreen";
    private static final String PHOTO_CONFIRMATION_SCREEN = "photoConfirmationScreen";
    private static final String PHOTO_CONFIRMATION_V3_SCREEN = "photoConfirmationV3Screen";
    private static final int RADIOBUTTON_ID_AADHAAR = 3;
    private static final int RADIOBUTTON_ID_ABHA_ADDRESS = 2;
    private static final int RADIOBUTTON_ID_ABHA_NUMBER = 1;
    private static final int RADIOBUTTON_ID_MOBILENUMBER = 4;
    private static final String SCOPE_SEARCH_VIA_MOBILE = "search_via_mobile";
    public static final String SCOPE_VERIFICATION_VIA_ABHA_ADDRESS_USING_BIO = "verification_via_abha_address_using_bio";
    public static final String SCOPE_VERIFICATION_VIA_ABHA_USING_BIO = "verification_via_abha_using_bio";
    public static final String SCOPE_VERIFICATION_VIA_MOBILE_USING_BIO = "verification_via_mobile_using_bio";
    public static final String STATE_SELECTION_SCREEN = "stateSelectionScreen";
    private static final String TAG = "NDHMHealthIdCapture";
    private static final String VERIFICATION_VIA_AADHAAR = "verification_via_aadhaar";
    private static final String VERIFICATION_VIA_AADHAAR_USING_BIO = "verification_via_aadhaar_using_bio";
    private static final String VERIFICATION_VIA_ABHA_ADDRESS_USING_AADHAAR = "verification_via_abha_address_using_aadhaar";
    private static final String VERIFICATION_VIA_ABHA_ADDRESS_USING_MOBILE = "verification_via_abha_address_using_mobile";
    private static final String VERIFICATION_VIA_ABHA_USING_AADHAAR = "verification_via_abha_using_aadhaar";
    private static final String VERIFICATION_VIA_ABHA_USING_MOBILE = "verification_via_abha_using_mobile";
    private static final String VERIFICATION_VIA_MOBILE = "verification_via_mobile";
    private TextInputLayout aadhaarTB;
    private AbhaAddressSearchResponse abhaAddressSearchResponse;
    private String abhaConsentCheckboxModel;
    private Spinner abhaNumberSelection;
    private Spinner authModeSelection;
    private String beneficiaryName;
    private LinearLayout bodyLayoutContainer;
    private MaterialCheckBox checkBox;
    private String dob;
    private String familyId;
    private String featureName;
    SewaFhsServiceImpl fhsService;
    private String fingerPrintAuthPid;
    private LinearLayout footerLayout;
    private String gender;
    private LinearLayout globalPanel;
    private HealthIdAccountProfileResponse healthIdAccountProfileResponse;
    private HealthIdAccountProfileV3Response healthIdAccountProfileV3Response;
    private HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponse;
    private String healthIdSuffix;
    private TextInputLayout healthIdTB;
    private LinkBenefitIdResponse linkBenefitIdResponse;
    private Integer memberId;
    RadioGroup methodSelectionRadioGroup;
    private TextInputLayout mobileNumberTB;
    private String mobileTxnId;
    private MobileVerificationResponse mobileVerificationResponse;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private TextInputLayout otpTB;
    private MaterialTextView resendBtn;
    SewaServiceRestClientImpl restClient;
    private String screen;
    private SearchAbhaResponse searchAbhaResponse;
    private String selectedAuthMode;
    private Spinner stateSelection;
    private MaterialTextView timer;
    private String token;
    private String txnId;
    private String uniqueHealthId;
    private MaterialButton verificationBtn;
    private final Timer[] timerCounter = new Timer[1];
    private final int[] counter = {30};
    private final Map<String, String> states = new HashMap();

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
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
        this.beneficiaryName = getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY);
        this.featureName = getIntent().getStringExtra("featureName");
        this.abhaConsentCheckboxModel = getIntent().getStringExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL);
        this.dob = getIntent().getStringExtra("dob");
        this.gender = getIntent().getStringExtra("gender");
        this.uniqueHealthId = getIntent().getStringExtra("uniqueHealthId");
        this.familyId = getIntent().getStringExtra("familyId");
        setTitle(UtilBean.getTitleText(LabelConstants.LINK_HEALTH_ID));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        getHealthIdSuffix();
        setHealthIdVerificationMethodSelectionScreen();
    }

    private void getHealthIdSuffix() {
        this.healthIdSuffix = "@abdm";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0019  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.onClick(android.view.View):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007b A[PHI: r4
      0x007b: PHI (r4v6 java.lang.String) = (r4v4 java.lang.String), (r4v5 java.lang.String), (r4v4 java.lang.String) binds: [B:16:0x0047, B:24:0x0076, B:13:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validateAuthModeAndGenerateOtpV3() {
        /*
            r9 = this;
            r0 = 1
            java.lang.String[] r1 = new java.lang.String[r0]
            java.lang.String r2 = "Issue with auth method validation or selected auth mode is not allowed for you"
            r3 = 0
            r1[r3] = r2
            android.widget.RadioGroup r2 = r9.methodSelectionRadioGroup     // Catch: java.lang.Exception -> La6
            int r2 = r2.getCheckedRadioButtonId()     // Catch: java.lang.Exception -> La6
            com.google.android.material.textfield.TextInputLayout r4 = r9.healthIdTB     // Catch: java.lang.Exception -> La6
            android.widget.EditText r4 = r4.getEditText()     // Catch: java.lang.Exception -> La6
            android.text.Editable r4 = r4.getText()     // Catch: java.lang.Exception -> La6
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> La6
            java.lang.String r5 = "AADHAAR_BIO"
            java.lang.String r6 = "MOBILE_OTP"
            java.lang.String r7 = "AADHAAR_OTP"
            r8 = 0
            if (r2 != r0) goto L46
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L30
            java.lang.String r0 = "verification_via_abha_using_aadhaar"
            goto L7c
        L30:
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L3b
            java.lang.String r0 = "verification_via_abha_using_mobile"
            goto L7c
        L3b:
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L7b
            java.lang.String r0 = "verification_via_abha_using_bio"
            goto L7c
        L46:
            r0 = 2
            if (r2 != r0) goto L7b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La6
            r0.<init>()     // Catch: java.lang.Exception -> La6
            r0.append(r4)     // Catch: java.lang.Exception -> La6
            java.lang.String r2 = r9.healthIdSuffix     // Catch: java.lang.Exception -> La6
            r0.append(r2)     // Catch: java.lang.Exception -> La6
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Exception -> La6
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r7.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L65
            java.lang.String r0 = "verification_via_abha_address_using_aadhaar"
            goto L7c
        L65:
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L70
            java.lang.String r0 = "verification_via_abha_address_using_mobile"
            goto L7c
        L70:
            java.lang.String r0 = r9.selectedAuthMode     // Catch: java.lang.Exception -> La6
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L7b
            java.lang.String r0 = "verification_via_abha_address_using_bio"
            goto L7c
        L7b:
            r0 = r8
        L7c:
            if (r0 == 0) goto L9e
            com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl r2 = r9.restClient     // Catch: java.lang.Exception -> La6
            java.lang.Integer r5 = r9.memberId     // Catch: java.lang.Exception -> La6
            java.util.Map r0 = r2.generateOtpForAbhaVerificationV3(r0, r4, r5, r8)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto La5
            java.lang.String r2 = "txnId"
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Exception -> La6
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Exception -> La6
            r9.txnId = r2     // Catch: java.lang.Exception -> La6
            java.lang.String r2 = "message"
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Exception -> La6
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> La6
            r9.setScreenForSelectedAuthMode(r0)     // Catch: java.lang.Exception -> La6
            return
        L9e:
            android.content.Context r0 = r9.context     // Catch: java.lang.Exception -> La6
            r2 = r1[r3]     // Catch: java.lang.Exception -> La6
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r0, r2)     // Catch: java.lang.Exception -> La6
        La5:
            return
        La6:
            r0 = move-exception
            java.lang.String r2 = "NDHMHealthIdCapture"
            java.lang.String r4 = r0.getMessage()
            android.util.Log.e(r2, r4)
            java.lang.String r0 = r0.getMessage()
            r1[r3] = r0
            com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda12 r0 = new com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda12
            r0.<init>()
            r9.runOnUiThread(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.validateAuthModeAndGenerateOtpV3():void");
    }

    /* renamed from: lambda$validateAuthModeAndGenerateOtpV3$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m351xc9fe9826(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void setHealthIdVerificationMethodSelectionScreen() {
        this.screen = METHOD_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_METHOD_FOR_ABHA_SEEDING));
        this.methodSelectionRadioGroup = new RadioGroup(this.context);
        this.methodSelectionRadioGroup.addView(MyStaticComponents.getRadioButton(this, "By " + UtilBean.getMyLabel(LabelConstants.HEALTH_ID_NUMBER), 1));
        this.methodSelectionRadioGroup.addView(MyStaticComponents.getRadioButton(this, "By " + UtilBean.getMyLabel(LabelConstants.PHR_ADDRESS), 2));
        this.methodSelectionRadioGroup.addView(MyStaticComponents.getRadioButton(this, "By " + UtilBean.getMyLabel(LabelConstants.AADHAAR_NUMBER), 3));
        this.methodSelectionRadioGroup.addView(MyStaticComponents.getRadioButton(this, "By " + UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER), 4));
        this.bodyLayoutContainer.addView(this.methodSelectionRadioGroup);
    }

    public void setAbhaNumberVerificationScreen() {
        this.screen = ABHA_NUMBER_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, "XX-XXXX-XXXX-XXXX", -1, 17, 2);
        this.healthIdTB = editText;
        editText.getEditText().setKeyListener(DigitsKeyListener.getInstance("1234567890-"));
        this.healthIdTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.1
            int len = 0;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.len = charSequence.length();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() > this.len) {
                    if (editable.length() == 2 || editable.length() == 7 || editable.length() == 12) {
                        editable.append(GlobalTypes.KEY_VALUE_SEPARATOR);
                        return;
                    }
                    return;
                }
                if (editable.length() == 2 || editable.length() == 7 || editable.length() == 12) {
                    editable.delete(editable.length() - 1, editable.length());
                }
            }
        });
        displayMemberDetails();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.LINK_HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ABHA_NUMBER));
        this.bodyLayoutContainer.addView(this.healthIdTB);
    }

    public void setAbhaAddressVerificationScreen() {
        this.screen = ABHA_ADDRESS_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.healthIdTB = MyStaticComponents.getFilteredEditText(this.context, LabelConstants.PHR_ADDRESS, -1, 50, 1, "~#^&`|$%*!@()[]<>{}\":;?+=×÷€£¥₩%《》¡¿¤•");
        TextView textView = new TextView(this.context);
        textView.setText(this.healthIdSuffix);
        textView.setId(View.generateViewId());
        LinearLayout linearLayout = new LinearLayout(this.context);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.healthIdTB.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        textView.setText(this.healthIdSuffix);
        textView.setId(View.generateViewId());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(8);
        textView.setLayoutParams(layoutParams);
        linearLayout.addView(this.healthIdTB);
        linearLayout.addView(textView);
        displayMemberDetails();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.LINK_HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.PHR_ADDRESS));
        this.bodyLayoutContainer.addView(linearLayout);
    }

    public void setMobileVerificationScreen() {
        this.screen = MOBILE_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.mobileNumberTB = MyStaticComponents.getEditText(this.context, LabelConstants.MOBILE_NUMBER, -1, 10, 3);
        String stringExtra = getIntent().getStringExtra("mobileNumber");
        if (stringExtra != null && !stringExtra.isEmpty() && !stringExtra.equals("T")) {
            this.mobileNumberTB.getEditText().setText(stringExtra);
        }
        displayMemberDetails();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.MOBILE_NUMBER));
        this.bodyLayoutContainer.addView(this.mobileNumberTB);
    }

    public void setAadhaarNumberCollectionScreen() {
        this.screen = AADHAAR_NUMBER_COLLECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        displayMemberDetails();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AADHAAR_NUMBER)));
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, LabelConstants.AADHAAR_NUMBER, -1, 12, 2);
        this.aadhaarTB = editText;
        this.bodyLayoutContainer.addView(editText);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 40, 0, 0);
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMyLabel(LabelConstants.ABHA_OFFLINE_CONSENT), -1, false);
        this.checkBox = checkBox;
        checkBox.setGravity(48);
        this.checkBox.setLayoutParams(layoutParams);
        TextViewCompat.setTextAppearance(this.checkBox, R.style.CustomSubtitleView);
        this.bodyLayoutContainer.addView(this.checkBox);
        this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda34
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m345x287df8e3(compoundButton, z);
            }
        });
        this.footerLayout.setVisibility(0);
        this.nextButton.setVisibility(8);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.nextButton.setOnClickListener(this);
    }

    /* renamed from: lambda$setAadhaarNumberCollectionScreen$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m345x287df8e3(CompoundButton compoundButton, boolean z) {
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            this.nextButton.setVisibility(0);
        } else {
            this.nextButton.setVisibility(8);
        }
    }

    public void createMobileOtpValidationScreenForSearchABHA(String str) {
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.screen = MOBILE_OTP_VALIDATION_SCREEN;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
        if (str == null) {
            str = UtilBean.getMyLabel(LabelConstants.AN_OTP_WILL_BE_SENT_TO_THE_MOBILE_PHONE_NUMBER);
        }
        materialTextView.setText(str);
        TextInputLayout textInputLayout = (TextInputLayout) linearLayout.findViewById(R.id.otpText);
        this.otpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            this.otpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
            this.otpTB.getEditText().setInputType(2);
            this.otpTB.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        }
        MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        linearLayout.findViewById(R.id.skip).setVisibility(4);
        linearLayout.findViewById(R.id.or).setVisibility(4);
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                NDHMHealthIdCaptureActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m311xb8fc1548(view);
            }
        });
        linearLayout.findViewById(R.id.timer).setVisibility(0);
        linearLayout.findViewById(R.id.resend).setVisibility(0);
        this.timer = (MaterialTextView) linearLayout.findViewById(R.id.timer);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.resend);
        this.resendBtn = materialTextView2;
        materialTextView2.setEnabled(false);
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m312x556a11a7(view);
            }
        });
        startTimer();
        this.bodyLayoutContainer.addView(linearLayout);
    }

    /* renamed from: lambda$createMobileOtpValidationScreenForSearchABHA$2$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m311xb8fc1548(View view) {
        showProcessDialog();
        validateMobileOtpForSearchABHA();
    }

    /* renamed from: lambda$createMobileOtpValidationScreenForSearchABHA$3$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m312x556a11a7(View view) {
        showProcessDialog();
        resendMobileOTPForSearchABHA();
    }

    public void createMobileOtpValidationScreen(String str) {
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.screen = MOBILE_OTP_VALIDATION_SCREEN;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
        if (str == null) {
            str = UtilBean.getMyLabel(LabelConstants.AN_OTP_WILL_BE_SENT_TO_THE_MOBILE_PHONE_NUMBER);
        }
        materialTextView.setText(str);
        TextInputLayout textInputLayout = (TextInputLayout) linearLayout.findViewById(R.id.otpText);
        this.otpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            this.otpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
            this.otpTB.getEditText().setInputType(2);
            this.otpTB.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        }
        MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        linearLayout.findViewById(R.id.skip).setVisibility(4);
        linearLayout.findViewById(R.id.or).setVisibility(4);
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                NDHMHealthIdCaptureActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m309x6bc07567(view);
            }
        });
        linearLayout.findViewById(R.id.timer).setVisibility(0);
        linearLayout.findViewById(R.id.resend).setVisibility(0);
        this.timer = (MaterialTextView) linearLayout.findViewById(R.id.timer);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.resend);
        this.resendBtn = materialTextView2;
        materialTextView2.setEnabled(false);
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m310x82e71c6(view);
            }
        });
        startTimer();
        this.bodyLayoutContainer.addView(linearLayout);
    }

    /* renamed from: lambda$createMobileOtpValidationScreen$4$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m309x6bc07567(View view) {
        this.verificationBtn.setEnabled(false);
        this.otpTB.setEnabled(false);
        showProcessDialog();
        validateMobileOtp();
    }

    /* renamed from: lambda$createMobileOtpValidationScreen$5$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m310x82e71c6(View view) {
        showProcessDialog();
        resendMobileOTPV3();
    }

    public void setAbhaNumberSelectionScreen() {
        this.screen = ABHA_NUMBER_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_ABHA_NUMBER)));
        this.bodyLayoutContainer.addView(this.abhaNumberSelection);
        hideProcessDialog();
    }

    public void setConfirmationScreen(String str, String str2) {
        this.screen = PHOTO_CONFIRMATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        if (str != null) {
            byte[] bArrDecode = Base64.decode(str, 0);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length), 300, 300, true);
            ImageView imageView = MyStaticComponents.getImageView(this.context, -1, -1, null);
            imageView.setImageBitmap(bitmapCreateScaledBitmap);
            imageView.setPadding(0, 12, 0, 12);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.CONFIRMATION_ABHA_PHOTO));
            this.bodyLayoutContainer.addView(imageView);
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.CONFIRMATION_ABHA_MESSAGE));
        }
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, str2);
        materialTextViewGenerateAnswerView.setGravity(17);
        materialTextViewGenerateAnswerView.setPadding(0, 12, 0, 12);
        this.bodyLayoutContainer.addView(materialTextViewGenerateAnswerView);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        hideProcessDialog();
    }

    public void generateMobileOtp() {
        final String[] strArr = {"Issue with generating mobile otp"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(VERIFICATION_VIA_MOBILE, this.mobileNumberTB.getEditText().getText().toString(), this.memberId, null);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                createMobileOtpValidationScreen(mapGenerateOtpForAbhaVerificationV3.get("message"));
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m323x4f6b12e3(strArr);
            }
        });
    }

    /* renamed from: lambda$generateMobileOtp$6$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m323x4f6b12e3(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void searchABHAViaMobile() {
        final String[] strArr = {"Issue with searching ABHA via mobile"};
        try {
            SearchAbhaResponse searchAbhaResponseSearchABHA = this.restClient.searchABHA(SCOPE_SEARCH_VIA_MOBILE, this.mobileNumberTB.getEditText().getText().toString(), this.memberId);
            this.searchAbhaResponse = searchAbhaResponseSearchABHA;
            if (searchAbhaResponseSearchABHA != null) {
                this.mobileTxnId = searchAbhaResponseSearchABHA.getTxnId();
                if (!this.searchAbhaResponse.getABHA().isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (SearchABHADetails searchABHADetails : this.searchAbhaResponse.getABHA()) {
                        OptionDataBean optionDataBean = new OptionDataBean();
                        optionDataBean.setKey(searchABHADetails.getIndex().toString());
                        optionDataBean.setValue(searchABHADetails.getABHANumber() + LabelConstants.NEW_LINE + searchABHADetails.getName() + LabelConstants.NEW_LINE + formatGender(searchABHADetails.getGender()));
                        arrayList.add(optionDataBean);
                    }
                    this.abhaNumberSelection = new Spinner(this.context);
                    MyArrayAdapter myArrayAdapter = new MyArrayAdapter(this.context, R.layout.spinner_item_top, UtilBean.getListOfOptions(arrayList));
                    myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
                    this.abhaNumberSelection.setAdapter((SpinnerAdapter) myArrayAdapter);
                    this.abhaNumberSelection.setSelection(0);
                    setAbhaNumberSelectionScreen();
                    return;
                }
                hideProcessDialog();
                SewaUtil.generateToast(this.context, "No Abha numbers found for given Mobile Number");
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m344xfac10b88(strArr);
            }
        });
    }

    /* renamed from: lambda$searchABHAViaMobile$7$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m344xfac10b88(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void linkHealthIdV3() {
        byte[] profileAccountAbhaCard;
        boolean z = true;
        final String[] strArr = {"Issue with link healthId"};
        try {
            if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() != 2) {
                z = false;
            }
            String authMethodType = getAuthMethodType();
            if (OtpVerificationActivity$$ExternalSyntheticBackport0.m$1(authMethodType)) {
                SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.NO_AUTH_METHOD_TYPE_METHOD));
            }
            LinkBenefitIdResponse linkBenefitIdResponseLinkBenefitV3 = this.restClient.linkBenefitV3(this.memberId, this.healthIdAccountProfileV3Response.getABHANumber(), this.token, this.featureName, authMethodType, this.abhaConsentCheckboxModel, Boolean.valueOf(z));
            this.linkBenefitIdResponse = linkBenefitIdResponseLinkBenefitV3;
            if (linkBenefitIdResponseLinkBenefitV3 != null) {
                try {
                    if (z) {
                        profileAccountAbhaCard = this.restClient.getAbhaCardForVerificationViaAbhaAddress(this.memberId, this.token);
                    } else {
                        profileAccountAbhaCard = this.restClient.getProfileAccountAbhaCard(this.memberId, this.token);
                    }
                } catch (Exception unused) {
                    profileAccountAbhaCard = null;
                }
                if (profileAccountAbhaCard != null && profileAccountAbhaCard.length > 0) {
                    displayHealthIdScreenV3(BitmapFactory.decodeByteArray(profileAccountAbhaCard, 0, profileAccountAbhaCard.length));
                    return;
                } else {
                    displayHealthIdScreenV3(null);
                    return;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m329x12fa922d(strArr);
            }
        });
    }

    /* renamed from: lambda$linkHealthIdV3$8$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m329x12fa922d(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void displayHealthIdScreenV3(Bitmap bitmap) {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DISPLAY_HEALTH_ID_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID_LINKED_SUCCESSFULLY)));
        if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(bitmap)) {
            ImageView imageView = MyStaticComponents.getImageView(this.context, -1, -1, null);
            imageView.setImageBitmap(bitmap);
            this.bodyLayoutContainer.addView(imageView);
        }
        HealthIdAccountProfileV3Response healthIdAccountProfileV3Response = this.linkBenefitIdResponse.getHealthIdAccountProfileV3Response();
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.PHR_ADDRESS, healthIdAccountProfileV3Response.getPreferredAbhaAddress());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.HEALTH_ID_NUMBER, healthIdAccountProfileV3Response.getABHANumber());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, "Name", healthIdAccountProfileV3Response.getName());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.DATE_OF_BIRTH, formatDOB(healthIdAccountProfileV3Response.getDayOfBirth(), healthIdAccountProfileV3Response.getMonthOfBirth(), healthIdAccountProfileV3Response.getYearOfBirth()));
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.GENDER, formatGender(healthIdAccountProfileV3Response.getGender()));
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.MOBILE_NUMBER, healthIdAccountProfileV3Response.getMobile());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.ADDRESS, healthIdAccountProfileV3Response.getAddress());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.PINCODE, healthIdAccountProfileV3Response.getPincode());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.EMAIL, healthIdAccountProfileV3Response.getEmail());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.STATE, healthIdAccountProfileV3Response.getStateName());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.DISTRICT, healthIdAccountProfileV3Response.getDistrictName());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, "Program Name", this.linkBenefitIdResponse.getBenefitName());
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m316x31eb4992(view);
            }
        });
        hideProcessDialog();
    }

    /* renamed from: lambda$displayHealthIdScreenV3$9$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m316x31eb4992(View view) {
        sendResponse();
    }

    public void resendMobileOTP() {
        final String[] strArr = {"Issue for sending OTP again"};
        try {
            if (Boolean.TRUE.equals(this.restClient.resendLoginMobileOTP(this.txnId))) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m334x8f8cad5a();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m335x2bfaa9b9(strArr);
            }
        });
    }

    /* renamed from: lambda$resendMobileOTP$10$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m334x8f8cad5a() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendMobileOTP$11$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m335x2bfaa9b9(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void resendMobileOTPV3() {
        final String[] strArr = {"Issue for sending OTP again"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(VERIFICATION_VIA_MOBILE, this.mobileNumberTB.getEditText().getText().toString(), this.memberId, null);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m338x177cfeb5();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m339xb3eafb14(strArr);
            }
        });
    }

    /* renamed from: lambda$resendMobileOTPV3$12$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m338x177cfeb5() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendMobileOTPV3$13$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m339xb3eafb14(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void validateMobileOtpForSearchABHA() {
        final String[] strArr = {"Issue with verifying mobile otp"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 = this.restClient.verifyOtpForAbhaVerificationV3(SCOPE_SEARCH_VIA_MOBILE, this.otpTB.getEditText().getText().toString(), this.txnId, this.memberId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 != null) {
                this.token = healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m354x84df9a3a(strArr);
            }
        });
    }

    /* renamed from: lambda$validateMobileOtpForSearchABHA$14$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m354x84df9a3a(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void resendMobileOTPForSearchABHA() {
        final String[] strArr = {"Issue for sending OTP again"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(SCOPE_SEARCH_VIA_MOBILE, this.searchAbhaResponse.getABHA().get(this.abhaNumberSelection.getSelectedItemPosition()).getIndex().toString(), this.memberId, this.mobileTxnId);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda49
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m336x533df77e();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m337xefabf3dd(strArr);
            }
        });
    }

    /* renamed from: lambda$resendMobileOTPForSearchABHA$15$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m336x533df77e() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendMobileOTPForSearchABHA$16$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m337xefabf3dd(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void validateMobileOtp() {
        final String[] strArr = {"Issue with verifying mobile otp"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 = this.restClient.verifyOtpForAbhaVerificationV3(VERIFICATION_VIA_MOBILE, this.otpTB.getEditText().getText().toString(), this.txnId, this.memberId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda45
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m352x8d2384f8();
                    }
                });
                if (!this.healthIdProfileLoginVerifyResponse.getAccounts().isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (HealthIdProfileLoginAccount healthIdProfileLoginAccount : this.healthIdProfileLoginVerifyResponse.getAccounts()) {
                        OptionDataBean optionDataBean = new OptionDataBean();
                        optionDataBean.setKey(healthIdProfileLoginAccount.getABHANumber());
                        optionDataBean.setValue(healthIdProfileLoginAccount.getABHANumber() + "\n( " + healthIdProfileLoginAccount.getName() + LabelConstants.NEW_LINE + healthIdProfileLoginAccount.getPreferredAbhaAddress() + " )");
                        arrayList.add(optionDataBean);
                    }
                    this.abhaNumberSelection = new Spinner(this.context);
                    MyArrayAdapter myArrayAdapter = new MyArrayAdapter(this.context, R.layout.spinner_item_top, UtilBean.getListOfOptions(arrayList));
                    myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
                    this.abhaNumberSelection.setAdapter((SpinnerAdapter) myArrayAdapter);
                    this.abhaNumberSelection.setSelection(0);
                    setAbhaNumberSelectionScreen();
                    return;
                }
                hideProcessDialog();
                SewaUtil.generateToast(this.context, "No Abha numbers found for given Mobile Number");
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m353x29918157(strArr);
            }
        });
    }

    /* renamed from: lambda$validateMobileOtp$17$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m352x8d2384f8() {
        Timer timer = this.timerCounter[0];
        if (timer != null) {
            timer.cancel();
        }
        this.timer.setVisibility(8);
        this.resendBtn.setEnabled(false);
        this.verificationBtn.setEnabled(false);
    }

    /* renamed from: lambda$validateMobileOtp$18$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m353x29918157(String[] strArr) {
        this.verificationBtn.setEnabled(true);
        this.otpTB.setEnabled(true);
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void generateAadhaarBioOtpForSearchABHA() {
        final String[] strArr = {"Issue for generating otp for selected abha using bio"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(SCOPE_VERIFICATION_VIA_MOBILE_USING_BIO, this.searchAbhaResponse.getABHA().get(this.abhaNumberSelection.getSelectedItemPosition()).getIndex().toString(), this.memberId, this.mobileTxnId);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                hideProcessDialog();
                Intent intent = new Intent(this.context, (Class<?>) FingerPrintScannerActivity_.class);
                intent.putExtra("isFromAbhaSeeding", Boolean.TRUE);
                startActivityForResult(intent, 1001);
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m321x502ed54c(strArr);
            }
        });
    }

    /* renamed from: lambda$generateAadhaarBioOtpForSearchABHA$19$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m321x502ed54c(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void generateMobileOtpForSearchABHA() {
        final String[] strArr = {"Issue for generating otp for selected abha"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(SCOPE_SEARCH_VIA_MOBILE, this.searchAbhaResponse.getABHA().get(this.abhaNumberSelection.getSelectedItemPosition()).getIndex().toString(), this.memberId, this.mobileTxnId);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                createMobileOtpValidationScreenForSearchABHA(mapGenerateOtpForAbhaVerificationV3.get("message"));
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m324xc5bd881e(strArr);
            }
        });
    }

    /* renamed from: lambda$generateMobileOtpForSearchABHA$20$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m324xc5bd881e(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void loginWithMobileVerifiedAbha() {
        final String[] strArr = {"Issue for generating token"};
        try {
            HealthIdAccountProfileTokenResponse healthIdAccountProfileTokenResponseVerifyMobileProfileUserAbhaVerification = this.restClient.verifyMobileProfileUserAbhaVerification(this.memberId, this.txnId, this.healthIdProfileLoginVerifyResponse.getAccounts().get(this.abhaNumberSelection.getSelectedItemPosition()).getABHANumber(), this.healthIdProfileLoginVerifyResponse.getToken());
            if (healthIdAccountProfileTokenResponseVerifyMobileProfileUserAbhaVerification != null) {
                this.token = healthIdAccountProfileTokenResponseVerifyMobileProfileUserAbhaVerification.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m330x9d64f37f(strArr);
            }
        });
    }

    /* renamed from: lambda$loginWithMobileVerifiedAbha$21$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m330x9d64f37f(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void getAccountDetails() {
        final String[] strArr = {"Issue for fetching state"};
        try {
            HealthIdAccountProfileResponse accountProfileResponse = this.restClient.getAccountProfileResponse(this.token);
            this.healthIdAccountProfileResponse = accountProfileResponse;
            if (accountProfileResponse != null) {
                setConfirmationScreen(accountProfileResponse.getKycPhoto(), this.healthIdAccountProfileResponse.getName());
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m325x9f21a36(strArr);
            }
        });
    }

    /* renamed from: lambda$getAccountDetails$22$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m325x9f21a36(String[] strArr) {
        if (!NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode)) {
            this.verificationBtn.setEnabled(true);
        }
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1001 && intent != null && intent.hasExtra("pid")) {
            this.fingerPrintAuthPid = intent.getStringExtra("pid");
            showProcessDialog();
            if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 3) {
                verifyBiometricUsingAadhaar();
                return;
            }
            if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 4) {
                verifyBiometricUsingMobile();
            } else if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 2) {
                verifyBiometricUsingABHAAddress();
            } else {
                verifyBiometricUsingABHANumber();
            }
        }
    }

    public void setHealthIdVerificationScreen() {
        this.screen = HEALTH_ID_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, "XX-XXXX-XXXX-XXXX", -1, 17, 2);
        this.healthIdTB = editText;
        editText.getEditText().setKeyListener(DigitsKeyListener.getInstance("1234567890-"));
        this.healthIdTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.4
            int len = 0;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.len = charSequence.length();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() > this.len) {
                    if (editable.length() == 2 || editable.length() == 7 || editable.length() == 12) {
                        editable.append(GlobalTypes.KEY_VALUE_SEPARATOR);
                        return;
                    }
                    return;
                }
                if (editable.length() == 2 || editable.length() == 7 || editable.length() == 12) {
                    editable.delete(editable.length() - 1, editable.length());
                }
            }
        });
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.LINK_HEALTH_ID));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.HEALTH_ID_NUMBER));
        this.bodyLayoutContainer.addView(this.healthIdTB);
    }

    public void fetchAuthMode() {
        try {
            HealthIdSearchResponse healthIdSearchResponseSearchUserByHealthId = this.restClient.searchUserByHealthId(this.healthIdTB.getEditText().getText().toString());
            if (healthIdSearchResponseSearchUserByHealthId == null || healthIdSearchResponseSearchUserByHealthId.getAuthMethods().isEmpty()) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m317xb4bc848f();
                    }
                });
            } else {
                setComponentForAuthMode(healthIdSearchResponseSearchUserByHealthId.getAuthMethods());
            }
        } catch (Exception e) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m318x512a80ee(e);
                }
            });
        }
    }

    /* renamed from: lambda$fetchAuthMode$23$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m317xb4bc848f() {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, "No auth modes found");
    }

    /* renamed from: lambda$fetchAuthMode$24$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m318x512a80ee(Exception exc) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, exc.getMessage());
    }

    private void setComponentForAuthMode(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!NDHMConstants.AUTH_MODE_PASSWORD.equals(str) && !NDHMConstants.AUTH_MODE_DEMOGRAPHICS.equals(str)) {
                OptionDataBean optionDataBean = new OptionDataBean();
                optionDataBean.setKey(str);
                optionDataBean.setValue(NDHMConstants.getAuthModeFullName(str));
                arrayList.add(optionDataBean);
            }
        }
        this.authModeSelection = new Spinner(this.context);
        MyArrayAdapter myArrayAdapter = new MyArrayAdapter(this.context, R.layout.spinner_item_top, UtilBean.getListOfOptions(arrayList));
        myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
        this.authModeSelection.setAdapter((SpinnerAdapter) myArrayAdapter);
        this.authModeSelection.setSelection(-1);
        setAuthModeSelectionScreen();
    }

    public void fetchAuthModeForAbhaAddress() {
        final String[] strArr = {"Failed to fetch the auth mode"};
        try {
            AbhaAddressSearchResponse abhaAddressSearchResponseSearchByAbhaAddress = this.restClient.searchByAbhaAddress(this.memberId, this.healthIdTB.getEditText().getText().toString() + this.healthIdSuffix);
            this.abhaAddressSearchResponse = abhaAddressSearchResponseSearchByAbhaAddress;
            if (abhaAddressSearchResponseSearchByAbhaAddress != null && !abhaAddressSearchResponseSearchByAbhaAddress.getAuthMethods().isEmpty()) {
                List<String> authMethods = this.abhaAddressSearchResponse.getAuthMethods();
                if (!authMethods.contains(NDHMConstants.AUTH_MODE_AADHAAR_BIO) && authMethods.contains(NDHMConstants.AUTH_MODE_AADHAAR_OTP)) {
                    authMethods.add(NDHMConstants.AUTH_MODE_AADHAAR_BIO);
                }
                setComponentForAuthMode(authMethods);
                return;
            }
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m319x959ba3de();
                }
            });
        } catch (Exception e) {
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m320x3209a03d(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$fetchAuthModeForAbhaAddress$25$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m319x959ba3de() {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, "No auth modes found");
    }

    /* renamed from: lambda$fetchAuthModeForAbhaAddress$26$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m320x3209a03d(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void setAuthModeSelectionScreen() {
        this.screen = AUTH_MODE_SELECTION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel("Select auth mode to link health id")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Select auth mode")));
        this.bodyLayoutContainer.addView(this.authModeSelection);
        hideProcessDialog();
    }

    public void validateAuthMode() {
        final String[] strArr = {"Issue with auth method validation or selected auth mode is not allowed for you"};
        try {
            Map<String, String> mapHealthIdVerificationAuthInit = this.restClient.healthIdVerificationAuthInit(this.healthIdTB.getEditText().getText().toString(), this.selectedAuthMode);
            if (mapHealthIdVerificationAuthInit != null) {
                this.txnId = mapHealthIdVerificationAuthInit.get("txnId");
                setScreenForSelectedAuthMode(mapHealthIdVerificationAuthInit.get("message"));
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m350x2ec4a141(strArr);
            }
        });
    }

    /* renamed from: lambda$validateAuthMode$27$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m350x2ec4a141(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void validateAadhaarAuthModeV3() {
        if (NDHMConstants.AUTH_MODE_AADHAAR_OTP.equals(this.selectedAuthMode)) {
            generateAadhaarOTP();
        } else if (NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode)) {
            hideProcessDialog();
            Intent intent = new Intent(this.context, (Class<?>) FingerPrintScannerActivity_.class);
            intent.putExtra("isFromAbhaSeeding", Boolean.TRUE);
            startActivityForResult(intent, 1001);
        }
    }

    public void validateMobileAuthModeV3() {
        if (NDHMConstants.AUTH_MODE_MOBILE_OTP.equals(this.selectedAuthMode)) {
            generateMobileOtpForSearchABHA();
        } else if (NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode)) {
            generateAadhaarBioOtpForSearchABHA();
        }
    }

    public void generateAadhaarOTP() {
        final String[] strArr = {"Issue with generating aadhaar otp"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(VERIFICATION_VIA_AADHAAR, this.aadhaarTB.getEditText().getText().toString(), this.memberId, null);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                setAadhaarOtpVerificationScreen(mapGenerateOtpForAbhaVerificationV3.get("message"));
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m322xcaf4b571(strArr);
            }
        });
    }

    /* renamed from: lambda$generateAadhaarOTP$28$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m322xcaf4b571(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    private void setScreenForSelectedAuthMode(String str) {
        String str2 = this.selectedAuthMode;
        str2.hashCode();
        switch (str2) {
            case "MOBILE_OTP":
            case "AADHAAR_OTP":
            case "PASSWORD":
                createOtpValidationScreen(str);
                break;
            case "AADHAAR_BIO":
                hideProcessDialog();
                Intent intent = new Intent(this.context, (Class<?>) FingerPrintScannerActivity_.class);
                intent.putExtra("txnId", this.txnId);
                intent.putExtra("isFromAbhaSeeding", Boolean.TRUE);
                startActivityForResult(intent, 1001);
                break;
            default:
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m348x2c7bff9f();
                    }
                });
                break;
        }
    }

    /* renamed from: lambda$setScreenForSelectedAuthMode$29$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m348x2c7bff9f() {
        hideProcessDialog();
    }

    public void createOtpValidationScreen(String str) {
        String myLabel;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.screen = OTP_VALIDATION_SCREEN;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        if (NDHMConstants.AUTH_MODE_PASSWORD.equals(this.selectedAuthMode)) {
            ((MaterialTextView) linearLayout.findViewById(R.id.description)).setText(UtilBean.getMyLabel(LabelConstants.ENTER_PASSWORD_TO_VERIFY_HEALTH_ID));
        } else {
            if (NDHMConstants.AUTH_MODE_MOBILE_OTP.equals(this.selectedAuthMode)) {
                myLabel = UtilBean.getMyLabel(LabelConstants.AN_OTP_WILL_BE_SENT_TO_THE_MOBILE_PHONE_NUMBER_LINKED_TO_THIS_HEALTH_ID);
            } else {
                myLabel = UtilBean.getMyLabel(LabelConstants.AN_OTP_WILL_BE_SENT_TO_THE_MOBILE_PHONE_NUMBER_LINKED_TO_THIS_AADHAAR_NUMBER);
            }
            MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
            if (str == null) {
                str = myLabel;
            }
            materialTextView.setText(str);
        }
        TextInputLayout textInputLayout = (TextInputLayout) linearLayout.findViewById(R.id.otpText);
        this.otpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            if (NDHMConstants.AUTH_MODE_PASSWORD.equals(this.selectedAuthMode)) {
                this.otpTB.getEditText().setHint(LabelConstants.ENTER_PASSWORD);
                this.otpTB.getEditText().setInputType(128);
                this.otpTB.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(40)});
            } else {
                this.otpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
                this.otpTB.getEditText().setInputType(2);
                this.otpTB.getEditText().setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
            }
        }
        MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        linearLayout.findViewById(R.id.skip).setVisibility(4);
        linearLayout.findViewById(R.id.or).setVisibility(4);
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (NDHMConstants.AUTH_MODE_PASSWORD.equals(NDHMHealthIdCaptureActivity.this.selectedAuthMode)) {
                    NDHMHealthIdCaptureActivity.this.verificationBtn.setEnabled(editable != null && editable.toString().length() >= 8);
                } else {
                    NDHMHealthIdCaptureActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
                }
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m313xb01623e2(view);
            }
        });
        if (NDHMConstants.AUTH_MODE_MOBILE_OTP.equals(this.selectedAuthMode) || NDHMConstants.AUTH_MODE_AADHAAR_OTP.equals(this.selectedAuthMode)) {
            ((MaterialTextView) linearLayout.findViewById(R.id.timer)).setVisibility(0);
            ((MaterialTextView) linearLayout.findViewById(R.id.resend)).setVisibility(0);
            this.timer = (MaterialTextView) linearLayout.findViewById(R.id.timer);
            MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.resend);
            this.resendBtn = materialTextView2;
            materialTextView2.setEnabled(false);
            this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m314x4c842041(view);
                }
            });
            startTimer();
        } else {
            ((MaterialTextView) linearLayout.findViewById(R.id.timer)).setVisibility(8);
            ((MaterialTextView) linearLayout.findViewById(R.id.resend)).setVisibility(8);
            hideProcessDialog();
        }
        this.bodyLayoutContainer.addView(linearLayout);
    }

    /* renamed from: lambda$createOtpValidationScreen$30$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m313xb01623e2(View view) {
        this.verificationBtn.setEnabled(false);
        this.otpTB.setEnabled(false);
        showProcessDialog();
        validateOtpAndGenerateToken();
    }

    /* renamed from: lambda$createOtpValidationScreen$31$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m314x4c842041(View view) {
        showProcessDialog();
        resendOTPV3();
    }

    public void setAadhaarOtpVerificationScreen(String str) {
        this.screen = AADHAAR_NUMBER_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        String myLabel = UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_THE_OTP_RECEIVED_ON_THE_AADHAAR_LINKED_MOBILE_NUMBER);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
        if (str == null) {
            str = myLabel;
        }
        materialTextView.setText(str);
        TextInputLayout textInputLayout = (TextInputLayout) linearLayout.findViewById(R.id.otpText);
        this.otpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            this.otpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
            this.otpTB.getEditText().setInputType(2);
        }
        MaterialButton materialButton = (MaterialButton) linearLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        this.timer = (MaterialTextView) linearLayout.findViewById(R.id.timer);
        MaterialTextView materialTextView2 = (MaterialTextView) linearLayout.findViewById(R.id.resend);
        this.resendBtn = materialTextView2;
        materialTextView2.setEnabled(false);
        linearLayout.findViewById(R.id.skip).setVisibility(4);
        linearLayout.findViewById(R.id.or).setVisibility(4);
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                NDHMHealthIdCaptureActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m346x810b2dd2(view);
            }
        });
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m347x1d792a31(view);
            }
        });
        this.bodyLayoutContainer.addView(linearLayout);
        startTimer();
    }

    /* renamed from: lambda$setAadhaarOtpVerificationScreen$32$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m346x810b2dd2(View view) {
        showProcessDialog();
        verifyAadhaarOTP();
    }

    /* renamed from: lambda$setAadhaarOtpVerificationScreen$33$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m347x1d792a31(View view) {
        showProcessDialog();
        resendAadhaarOtp();
    }

    public void verifyAadhaarOTP() {
        final String[] strArr = {"Issue while validating the aadhaar otp"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 = this.restClient.verifyOtpForAbhaVerificationV3(VERIFICATION_VIA_AADHAAR, this.otpTB.getEditText().getText().toString(), this.txnId, this.memberId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyOtpForAbhaVerificationV3 != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m357x27e889ba();
                    }
                });
                this.token = this.healthIdProfileLoginVerifyResponse.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m358xc4568619(strArr);
            }
        });
    }

    /* renamed from: lambda$verifyAadhaarOTP$34$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m357x27e889ba() {
        Timer timer = this.timerCounter[0];
        if (timer != null) {
            timer.cancel();
        }
    }

    /* renamed from: lambda$verifyAadhaarOTP$35$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m358xc4568619(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void resendAadhaarOtp() {
        final String[] strArr = {"Issue with generating aadhaar otp"};
        try {
            Map<String, String> mapGenerateOtpForAbhaVerificationV3 = this.restClient.generateOtpForAbhaVerificationV3(VERIFICATION_VIA_AADHAAR, this.aadhaarTB.getEditText().getText().toString(), this.memberId, null);
            if (mapGenerateOtpForAbhaVerificationV3 != null) {
                this.txnId = mapGenerateOtpForAbhaVerificationV3.get("txnId");
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m332xaeb3b63a();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m333x4b21b299(strArr);
            }
        });
    }

    /* renamed from: lambda$resendAadhaarOtp$36$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m332xaeb3b63a() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendAadhaarOtp$37$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m333x4b21b299(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void getAccountDetailsV3() {
        final String[] strArr = {"Issue for fetching profile details"};
        try {
            if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 2) {
                this.healthIdAccountProfileV3Response = this.restClient.getAbhaAccountViaAbhaAddress(this.token, this.memberId);
            } else {
                this.healthIdAccountProfileV3Response = this.restClient.getAccountProfileResponseV3(this.token, this.memberId);
            }
            if (this.healthIdAccountProfileV3Response != null) {
                setConfirmationScreenV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m326xc685394e(strArr);
            }
        });
    }

    /* renamed from: lambda$getAccountDetailsV3$38$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m326xc685394e(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void setConfirmationScreenV3() {
        this.screen = PHOTO_CONFIRMATION_V3_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        String kycPhoto = this.healthIdAccountProfileV3Response.getKycPhoto() != null ? this.healthIdAccountProfileV3Response.getKycPhoto() : this.healthIdAccountProfileV3Response.getProfilePhoto();
        if (kycPhoto != null && !kycPhoto.isEmpty()) {
            byte[] bArrDecode = Base64.decode(kycPhoto, 0);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length), 300, 300, true);
            ImageView imageView = MyStaticComponents.getImageView(this.context, -1, -1, null);
            imageView.setImageBitmap(bitmapCreateScaledBitmap);
            imageView.setPadding(0, 12, 0, 12);
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.CONFIRMATION_ABHA_PHOTO));
            this.bodyLayoutContainer.addView(imageView);
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, LabelConstants.CONFIRMATION_ABHA_MESSAGE));
        }
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.PHR_ADDRESS, this.healthIdAccountProfileV3Response.getPreferredAbhaAddress());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.HEALTH_ID_NUMBER, this.healthIdAccountProfileV3Response.getABHANumber());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, "Name", this.healthIdAccountProfileV3Response.getName());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.DATE_OF_BIRTH, formatDOB(this.healthIdAccountProfileV3Response.getDayOfBirth(), this.healthIdAccountProfileV3Response.getMonthOfBirth(), this.healthIdAccountProfileV3Response.getYearOfBirth()));
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.GENDER, formatGender(this.healthIdAccountProfileV3Response.getGender()));
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.MOBILE_NUMBER, this.healthIdAccountProfileV3Response.getMobile());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.ADDRESS, this.healthIdAccountProfileV3Response.getAddress());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.PINCODE, this.healthIdAccountProfileV3Response.getPincode());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.EMAIL, this.healthIdAccountProfileV3Response.getEmail());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.STATE, this.healthIdAccountProfileV3Response.getStateName());
        addQuestionAnswerView(this.bodyLayoutContainer, this.context, LabelConstants.DISTRICT, this.healthIdAccountProfileV3Response.getDistrictName());
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        hideProcessDialog();
    }

    public void resendOTP() {
        final String[] strArr = {"Issue for sending OTP again"};
        try {
            if (Boolean.TRUE.equals(this.restClient.resendOtp(this.txnId, this.selectedAuthMode))) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda55
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m340xb3377435();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m341x24ab245f(strArr);
            }
        });
    }

    /* renamed from: lambda$resendOTP$39$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m340xb3377435() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendOTP$40$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m341x24ab245f(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[PHI: r4
      0x0063: PHI (r4v6 java.lang.String) = (r4v4 java.lang.String), (r4v5 java.lang.String), (r4v4 java.lang.String) binds: [B:13:0x003a, B:18:0x005e, B:10:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resendOTPV3() {
        /*
            r8 = this;
            r0 = 1
            java.lang.String[] r1 = new java.lang.String[r0]
            java.lang.String r2 = "Issue for sending OTP again"
            r3 = 0
            r1[r3] = r2
            android.widget.RadioGroup r2 = r8.methodSelectionRadioGroup     // Catch: java.lang.Exception -> L81
            int r2 = r2.getCheckedRadioButtonId()     // Catch: java.lang.Exception -> L81
            com.google.android.material.textfield.TextInputLayout r4 = r8.healthIdTB     // Catch: java.lang.Exception -> L81
            android.widget.EditText r4 = r4.getEditText()     // Catch: java.lang.Exception -> L81
            android.text.Editable r4 = r4.getText()     // Catch: java.lang.Exception -> L81
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L81
            java.lang.String r5 = "MOBILE_OTP"
            java.lang.String r6 = "AADHAAR_OTP"
            r7 = 0
            if (r2 != r0) goto L39
            java.lang.String r0 = r8.selectedAuthMode     // Catch: java.lang.Exception -> L81
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L2e
            java.lang.String r0 = "verification_via_abha_using_aadhaar"
            goto L64
        L2e:
            java.lang.String r0 = r8.selectedAuthMode     // Catch: java.lang.Exception -> L81
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L63
            java.lang.String r0 = "verification_via_abha_using_mobile"
            goto L64
        L39:
            r0 = 2
            if (r2 != r0) goto L63
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L81
            r0.<init>()     // Catch: java.lang.Exception -> L81
            r0.append(r4)     // Catch: java.lang.Exception -> L81
            java.lang.String r2 = r8.healthIdSuffix     // Catch: java.lang.Exception -> L81
            r0.append(r2)     // Catch: java.lang.Exception -> L81
            java.lang.String r4 = r0.toString()     // Catch: java.lang.Exception -> L81
            java.lang.String r0 = r8.selectedAuthMode     // Catch: java.lang.Exception -> L81
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L58
            java.lang.String r0 = "verification_via_abha_address_using_aadhaar"
            goto L64
        L58:
            java.lang.String r0 = r8.selectedAuthMode     // Catch: java.lang.Exception -> L81
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L63
            java.lang.String r0 = "verification_via_abha_address_using_mobile"
            goto L64
        L63:
            r0 = r7
        L64:
            com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl r2 = r8.restClient     // Catch: java.lang.Exception -> L81
            java.lang.Integer r5 = r8.memberId     // Catch: java.lang.Exception -> L81
            java.util.Map r0 = r2.generateOtpForAbhaVerificationV3(r0, r4, r5, r7)     // Catch: java.lang.Exception -> L81
            if (r0 == 0) goto L80
            java.lang.String r2 = "txnId"
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Exception -> L81
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L81
            r8.txnId = r0     // Catch: java.lang.Exception -> L81
            com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda26 r0 = new com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda26     // Catch: java.lang.Exception -> L81
            r0.<init>()     // Catch: java.lang.Exception -> L81
            r8.runOnUiThread(r0)     // Catch: java.lang.Exception -> L81
        L80:
            return
        L81:
            r0 = move-exception
            java.lang.String r2 = "NDHMHealthIdCapture"
            java.lang.String r4 = r0.getMessage()
            android.util.Log.e(r2, r4)
            java.lang.String r0 = r0.getMessage()
            r1[r3] = r0
            com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda27 r0 = new com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda27
            r0.<init>()
            r8.runOnUiThread(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.resendOTPV3():void");
    }

    /* renamed from: lambda$resendOTPV3$41$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m342x6cdd60db() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendOTPV3$42$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m343x94b5d3a(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    private void startTimer() {
        this.counter[0] = 30;
        this.timer.setVisibility(0);
        this.resendBtn.setEnabled(false);
        Timer timer = this.timerCounter[0];
        if (timer != null) {
            timer.cancel();
        }
        this.timerCounter[0] = new Timer();
        this.timerCounter[0].schedule(new AnonymousClass7(), 50L, 1500L);
        hideProcessDialog();
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$7, reason: invalid class name */
    class AnonymousClass7 extends TimerTask {
        AnonymousClass7() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (NDHMHealthIdCaptureActivity.this.counter[0] > 0) {
                NDHMHealthIdCaptureActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m363xb9a7ec85();
                    }
                });
            } else {
                NDHMHealthIdCaptureActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m364xf2884d24();
                    }
                });
                cancel();
            }
        }

        /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity$7, reason: not valid java name */
        /* synthetic */ void m363xb9a7ec85() {
            NDHMHealthIdCaptureActivity.this.timer.setText(String.format(Locale.getDefault(), "in %ds", Integer.valueOf(NDHMHealthIdCaptureActivity.this.counter[0])));
            int[] iArr = NDHMHealthIdCaptureActivity.this.counter;
            iArr[0] = iArr[0] - 1;
        }

        /* renamed from: lambda$run$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity$7, reason: not valid java name */
        /* synthetic */ void m364xf2884d24() {
            NDHMHealthIdCaptureActivity.this.timer.setVisibility(8);
            NDHMHealthIdCaptureActivity.this.resendBtn.setEnabled(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046 A[Catch: Exception -> 0x0076, TryCatch #0 {Exception -> 0x0076, blocks: (B:3:0x0008, B:6:0x0014, B:22:0x0046, B:24:0x0062, B:9:0x001f, B:14:0x002d, B:17:0x0038), top: B:30:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validateOtpAndGenerateToken() {
        /*
            r7 = this;
            r0 = 1
            java.lang.String[] r1 = new java.lang.String[r0]
            java.lang.String r2 = "Issue for generating token"
            r3 = 0
            r1[r3] = r2
            android.widget.RadioGroup r2 = r7.methodSelectionRadioGroup     // Catch: java.lang.Exception -> L76
            int r2 = r2.getCheckedRadioButtonId()     // Catch: java.lang.Exception -> L76
            java.lang.String r4 = "MOBILE_OTP"
            java.lang.String r5 = "AADHAAR_OTP"
            if (r2 != r0) goto L2a
            java.lang.String r0 = r7.selectedAuthMode     // Catch: java.lang.Exception -> L76
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L1f
            java.lang.String r0 = "verification_via_abha_using_aadhaar"
            goto L44
        L1f:
            java.lang.String r0 = r7.selectedAuthMode     // Catch: java.lang.Exception -> L76
            boolean r0 = r4.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L43
            java.lang.String r0 = "verification_via_abha_using_mobile"
            goto L44
        L2a:
            r0 = 2
            if (r2 != r0) goto L43
            java.lang.String r0 = r7.selectedAuthMode     // Catch: java.lang.Exception -> L76
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L38
            java.lang.String r0 = "verification_via_abha_address_using_aadhaar"
            goto L44
        L38:
            java.lang.String r0 = r7.selectedAuthMode     // Catch: java.lang.Exception -> L76
            boolean r0 = r4.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L43
            java.lang.String r0 = "verification_via_abha_address_using_mobile"
            goto L44
        L43:
            r0 = 0
        L44:
            if (r0 == 0) goto L86
            com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl r2 = r7.restClient     // Catch: java.lang.Exception -> L76
            com.google.android.material.textfield.TextInputLayout r4 = r7.otpTB     // Catch: java.lang.Exception -> L76
            android.widget.EditText r4 = r4.getEditText()     // Catch: java.lang.Exception -> L76
            android.text.Editable r4 = r4.getText()     // Catch: java.lang.Exception -> L76
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L76
            java.lang.String r5 = r7.txnId     // Catch: java.lang.Exception -> L76
            java.lang.Integer r6 = r7.memberId     // Catch: java.lang.Exception -> L76
            com.argusoft.sewa.android.app.databean.HealthIdProfileLoginVerifyResponse r0 = r2.verifyOtpForAbhaVerificationV3(r0, r4, r5, r6)     // Catch: java.lang.Exception -> L76
            r7.healthIdProfileLoginVerifyResponse = r0     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L86
            com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda21 r0 = new com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda21     // Catch: java.lang.Exception -> L76
            r0.<init>()     // Catch: java.lang.Exception -> L76
            r7.runOnUiThread(r0)     // Catch: java.lang.Exception -> L76
            com.argusoft.sewa.android.app.databean.HealthIdProfileLoginVerifyResponse r0 = r7.healthIdProfileLoginVerifyResponse     // Catch: java.lang.Exception -> L76
            java.lang.String r0 = r0.getToken()     // Catch: java.lang.Exception -> L76
            r7.token = r0     // Catch: java.lang.Exception -> L76
            r7.getAccountDetailsV3()     // Catch: java.lang.Exception -> L76
            return
        L76:
            r0 = move-exception
            java.lang.String r2 = "NDHMHealthIdCapture"
            java.lang.String r4 = r0.getMessage()
            android.util.Log.e(r2, r4)
            java.lang.String r0 = r0.getMessage()
            r1[r3] = r0
        L86:
            com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda23 r0 = new com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda23
            r0.<init>()
            r7.runOnUiThread(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity.validateOtpAndGenerateToken():void");
    }

    /* renamed from: lambda$validateOtpAndGenerateToken$43$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m355x6897e18e() {
        Timer timer = this.timerCounter[0];
        if (timer != null) {
            timer.cancel();
        }
        this.timer.setVisibility(8);
    }

    /* renamed from: lambda$validateOtpAndGenerateToken$44$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m356x505dded(String[] strArr) {
        this.verificationBtn.setEnabled(true);
        this.otpTB.setEnabled(true);
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void getStateList() {
        final String[] strArr = {"Issue for fetching state"};
        try {
            StateResponse[] states = this.restClient.getStates();
            if (states != null && states.length > 0) {
                setStateSelectionScreen(states);
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m327xce4fff7d(strArr);
            }
        });
    }

    /* renamed from: lambda$getStateList$45$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m327xce4fff7d(String[] strArr) {
        if (!NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode)) {
            this.verificationBtn.setEnabled(true);
        }
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void setStateSelectionScreen(StateResponse[] stateResponseArr) {
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.LINK));
        this.screen = STATE_SELECTION_SCREEN;
        ArrayList arrayList = new ArrayList();
        this.states.clear();
        for (StateResponse stateResponse : stateResponseArr) {
            this.states.put(stateResponse.getName(), stateResponse.getCode());
            OptionDataBean optionDataBean = new OptionDataBean();
            optionDataBean.setKey(stateResponse.getCode());
            optionDataBean.setValue(stateResponse.getName());
            arrayList.add(optionDataBean);
        }
        this.stateSelection = new Spinner(this.context);
        MyArrayAdapter myArrayAdapter = new MyArrayAdapter(this.context, R.layout.spinner_item_top, UtilBean.getListOfOptions(arrayList));
        myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
        this.stateSelection.setAdapter((SpinnerAdapter) myArrayAdapter);
        this.stateSelection.setSelection(-1);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_STATE)));
        this.bodyLayoutContainer.addView(this.stateSelection);
        hideProcessDialog();
    }

    public void linkHealthId(String str) {
        String str2;
        final String[] strArr = {"Issue with link healthId"};
        try {
            if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(this.mobileVerificationResponse)) {
                str2 = "LINK_MOBILE_NUMBER";
            } else {
                str2 = "LINK_" + this.selectedAuthMode;
            }
            LinkBenefitIdResponse linkBenefitIdResponseLinkBenefitId = this.restClient.linkBenefitId(this.memberId, this.token, str, str2, this.featureName, this.abhaConsentCheckboxModel);
            this.linkBenefitIdResponse = linkBenefitIdResponseLinkBenefitId;
            if (linkBenefitIdResponseLinkBenefitId != null && linkBenefitIdResponseLinkBenefitId.getStatus() != null && this.linkBenefitIdResponse.getStatus().equals("LINKED")) {
                displayHealthIdScreen();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m328x4ee41e74(strArr);
            }
        });
    }

    /* renamed from: lambda$linkHealthId$46$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m328x4ee41e74(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void displayHealthIdScreen() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DISPLAY_HEALTH_ID_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel("Health ID linked successfully")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Name")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.beneficiaryName));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.linkBenefitIdResponse.getHealthId()));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel("Program Name")));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.linkBenefitIdResponse.getBenefitName()));
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m315x73a8e70d(view);
            }
        });
        hideProcessDialog();
    }

    /* renamed from: lambda$displayHealthIdScreen$47$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m315x73a8e70d(View view) {
        sendResponse();
    }

    private void sendResponse() {
        Intent intent = new Intent();
        intent.putExtra("healthIdNumber", this.linkBenefitIdResponse.getHealthIdAccountProfileV3Response().getABHANumber());
        intent.putExtra("healthId", this.linkBenefitIdResponse.getHealthIdAccountProfileV3Response().getPreferredAbhaAddress());
        setResult(-1, intent);
        finish();
    }

    public void verifyBiometricUsingAadhaar() {
        final String[] strArr = {"Issue with generating aadhaar otp"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 = this.restClient.verifyBiometricForAbhaVerificationV3(VERIFICATION_VIA_AADHAAR_USING_BIO, this.aadhaarTB.getEditText().getText().toString(), this.fingerPrintAuthPid, this.memberId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 != null) {
                this.token = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m361x6bae22d0(strArr);
            }
        });
    }

    /* renamed from: lambda$verifyBiometricUsingAadhaar$48$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m361x6bae22d0(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void verifyBiometricUsingMobile() {
        final String[] strArr = {"Issue with generating aadhaar otp"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 = this.restClient.verifyBiometricForAbhaVerificationV3(SCOPE_VERIFICATION_VIA_MOBILE_USING_BIO, this.fingerPrintAuthPid, this.memberId, this.txnId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 != null) {
                this.token = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m362xd74c7227(strArr);
            }
        });
    }

    /* renamed from: lambda$verifyBiometricUsingMobile$49$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m362xd74c7227(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void verifyBiometricUsingABHAAddress() {
        final String[] strArr = {"Issue with verifying aadhaar bio using mobile"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 = this.restClient.verifyBiometricForAbhaVerificationV3(SCOPE_VERIFICATION_VIA_ABHA_ADDRESS_USING_BIO, this.fingerPrintAuthPid, this.memberId, this.txnId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 != null) {
                this.token = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m359x2587e005(strArr);
            }
        });
    }

    /* renamed from: lambda$verifyBiometricUsingABHAAddress$50$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m359x2587e005(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void verifyBiometricUsingABHANumber() {
        final String[] strArr = {"Issue with verifying aadhaar bio via abha number"};
        try {
            HealthIdProfileLoginVerifyResponse healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 = this.restClient.verifyBiometricForAbhaVerificationV3(SCOPE_VERIFICATION_VIA_ABHA_USING_BIO, this.fingerPrintAuthPid, this.memberId, this.txnId);
            this.healthIdProfileLoginVerifyResponse = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3;
            if (healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3 != null) {
                this.token = healthIdProfileLoginVerifyResponseVerifyBiometricForAbhaVerificationV3.getToken();
                getAccountDetailsV3();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m360xf51cacf1(strArr);
            }
        });
    }

    /* renamed from: lambda$verifyBiometricUsingABHANumber$51$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m360xf51cacf1(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    private void addQuestionAnswerView(ViewGroup viewGroup, Context context, String str, String str2) {
        viewGroup.addView(MyStaticComponents.generateQuestionView(null, null, context, str));
        if (str2 == null || str2.isEmpty()) {
            str2 = "Not available";
        }
        viewGroup.addView(MyStaticComponents.generateAnswerView(context, str2));
    }

    private String formatDOB(String str, String str2, String str3) {
        if (str == null || str2 == null) {
            if (str3 != null) {
                return str3;
            }
            return null;
        }
        String str4 = str + GlobalTypes.KEY_VALUE_SEPARATOR + str2;
        if (str3 == null) {
            return str4;
        }
        return str4 + GlobalTypes.KEY_VALUE_SEPARATOR + str3;
    }

    private String formatGender(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        if (lowerCase.equals("f")) {
            return LabelConstants.FEMALE;
        }
        if (lowerCase.equals("m")) {
            return LabelConstants.MALE;
        }
        return "Other";
    }

    private String getAuthMethodType() {
        if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 4) {
            return NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode) ? "LINK_MOBILE_NUMBER_BIO" : "LINK_MOBILE_NUMBER";
        }
        if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 3) {
            return NDHMConstants.AUTH_MODE_AADHAAR_BIO.equals(this.selectedAuthMode) ? "LINK_AADHAAR_NUMBER_BIO" : "LINK_AADHAAR_NUMBER";
        }
        if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 1) {
            return "LINK_" + this.selectedAuthMode;
        }
        if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() != 2) {
            return null;
        }
        return "LINK_ABHA_ADDRESS_" + this.selectedAuthMode;
    }

    private boolean healthIdValidation() {
        if (this.healthIdTB.getEditText() == null || this.healthIdTB.getEditText().getText() == null || this.healthIdTB.getEditText().getText().toString().trim().isEmpty()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter healthId"));
            return false;
        }
        if (Pattern.compile("^\\d{2}(-)\\d{4}(-)\\d{4}(-)\\d{4}$").matcher(this.healthIdTB.getEditText().getText().toString()).matches()) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Please enter valid healthId"));
        return false;
    }

    private boolean abhaAddressValidation() {
        if (this.healthIdTB.getEditText() != null && this.healthIdTB.getEditText().getText() != null && !this.healthIdTB.getEditText().getText().toString().trim().isEmpty()) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_ABHA_ADDRESS));
        return false;
    }

    private boolean aadhaarValidation() {
        if (this.aadhaarTB.getEditText() == null || this.aadhaarTB.getEditText().getText() == null || this.aadhaarTB.getEditText().getText().toString().trim().isEmpty()) {
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_AADHAAR));
            return false;
        }
        if (ValidationFormulaUtil.aadhaarNumber(this.aadhaarTB.getEditText().getText().toString().trim()) == null) {
            return true;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Aadhaar Number is not valid"));
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        String str = this.screen;
        if (str == null || str.isEmpty()) {
            navigateToHomeScreen(false);
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            String str2 = this.screen;
            str2.hashCode();
            switch (str2) {
                case "otpValidationScreen":
                    Timer timer = this.timerCounter[0];
                    if (timer != null) {
                        timer.cancel();
                    }
                    setAuthModeSelectionScreen();
                    break;
                case "abhaNumberSelectionScreen":
                    setMobileVerificationScreen();
                    break;
                case "aadharNumberVerificationScreen":
                    Timer timer2 = this.timerCounter[0];
                    if (timer2 != null) {
                        timer2.cancel();
                    }
                    setAadhaarNumberCollectionScreen();
                    break;
                case "mobileOtpValidationScreen":
                    Timer timer3 = this.timerCounter[0];
                    if (timer3 != null) {
                        timer3.cancel();
                    }
                    setMobileVerificationScreen();
                    break;
                case "createNumberCollectionScreen":
                case "abhaNumberVerificationScreen":
                case "mobileVerificationScreen":
                case "healthIdVerificationScreen":
                case "abhAddressVerificationScreen":
                    setHealthIdVerificationMethodSelectionScreen();
                    break;
                case "methodSelectionScreen":
                    setResult(0);
                    finish();
                    break;
                case "authModeSelectionScreen":
                    if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 1) {
                        setAbhaNumberVerificationScreen();
                        break;
                    } else if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 2) {
                        setAbhaAddressVerificationScreen();
                        break;
                    } else if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 3) {
                        setAadhaarNumberCollectionScreen();
                        break;
                    } else if (this.methodSelectionRadioGroup.getCheckedRadioButtonId() == 4) {
                        setMobileVerificationScreen();
                        break;
                    }
                    break;
                case "displayHealthIdScreen":
                    sendResponse();
                    break;
                case "photoConfirmationV3Screen":
                    showConfirmationDialog();
                    break;
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.screen != null && !Arrays.asList(ABHA_NUMBER_VERIFICATION_SCREEN, ABHA_ADDRESS_VERIFICATION_SCREEN, MOBILE_VERIFICATION_SCREEN, HEALTH_ID_VERIFICATION_SCREEN, AADHAAR_NUMBER_COLLECTION_SCREEN, METHOD_SELECTION_SCREEN, DISPLAY_HEALTH_ID_SCREEN).contains(this.screen)) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_LINK, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda51
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m331x41ae6f0a(view);
                }
            }, DynamicUtils.BUTTON_YES_NO);
            this.myAlertDialog = myAlertDialog;
            myAlertDialog.show();
        } else if (DISPLAY_HEALTH_ID_SCREEN.equals(this.screen)) {
            sendResponse();
        } else {
            super.onBackPressed();
        }
    }

    /* renamed from: lambda$onBackPressed$52$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m331x41ae6f0a(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            setResult(0);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    private void showConfirmationDialog() {
        MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_LINK, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m349xc7cf3ae1(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.myAlertDialog = myAlertDialog;
        myAlertDialog.show();
    }

    /* renamed from: lambda$showConfirmationDialog$53$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity, reason: not valid java name */
    /* synthetic */ void m349xc7cf3ae1(View view) {
        if (view.getId() == -1) {
            this.myAlertDialog.dismiss();
            setResult(0);
            finish();
            return;
        }
        this.myAlertDialog.dismiss();
    }

    private void displayMemberDetails() {
        try {
            if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(this.memberId) && this.memberId.intValue() != -1) {
                MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(this.memberId.intValue()));
                String str = new SimpleDateFormat("dd/MM/yyyy").format(memberBeanRetrieveMemberBeanByActualId.getDob());
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, displayGender(memberBeanRetrieveMemberBeanByActualId.getGender())));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID) + "( " + UtilBean.getMyLabel(LabelConstants.FAMILY_ID) + " )"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + "( " + memberBeanRetrieveMemberBeanByActualId.getFamilyId() + " )"));
                return;
            }
            if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(this.uniqueHealthId) && OtpVerificationActivity$$ExternalSyntheticBackport0.m(this.memberId)) {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID) + " ( " + UtilBean.getMyLabel(LabelConstants.FAMILY_ID) + " )"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.uniqueHealthId + " ( " + this.familyId + " )"));
            }
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.beneficiaryName));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, this.dob));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, displayGender(this.gender)));
        } catch (Exception unused) {
        }
    }

    private String displayGender(String str) throws NumberFormatException {
        if (str == null) {
            return "NA";
        }
        if (str.matches("\\d+(?:\\.\\d+)?")) {
            int i = Integer.parseInt(getIntent().getStringExtra("gender"));
            if (i != 1) {
                if (i == 2) {
                    return LabelConstants.FEMALE;
                }
                return "Other";
            }
            return LabelConstants.MALE;
        }
        if (!str.equalsIgnoreCase("M") && !str.equalsIgnoreCase("male")) {
            if (str.equalsIgnoreCase("F") || str.equalsIgnoreCase("female")) {
                return LabelConstants.FEMALE;
            }
            return "Other";
        }
        return LabelConstants.MALE;
    }
}
