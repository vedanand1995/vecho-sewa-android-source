package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.TextViewCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.databean.EnrollUsingAadhaar;
import com.argusoft.sewa.android.app.databean.HealthIdAccountProfileResponse;
import com.argusoft.sewa.android.app.databean.VerifyOtpResponse;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.exception.DataException;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.AadharScanUtil;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.ValidationFormulaUtil;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import com.j256.ormlite.dao.Dao;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import org.apache.http.util.ByteArrayBuffer;

/* loaded from: classes.dex */
public class NDHMHealthIdCreationActivity extends MenuActivity implements View.OnClickListener {
    private static final String CHANGE_MOBILE_OTP_VERIFICATION_SCREEN = "changeMobileOtpVarificationScreen";
    private static final String CREATE_HEALTH_ID_VIA_AADHAAR_FINGERPRINT_SCREEN = "createHealthIdViaAadhaarFingerPrintScreen";
    private static final String CREATE_HEALTH_ID_VIA_AADHAAR_OTP_SCREEN = "createHealthIdViaAadhaarOTPScreen";
    private static final String DISPLAY_HEALTH_ID_SCREEN = "displayHealthIdScreen";
    private static final String DISPLAY_HEALTH_ID_UPDATE_MOBILE_SCREEN = "displayHealthIdUpdateMobileScreen";
    private static final int FINGER_PRINT_REQUEST_CODE = 1001;
    private static final int NDHM_HEALTH_ID_MANAGEMENT_REQUEST_CODE = 1000;
    private static final int NDHM_HEALTH_ID_SKIP_REQUEST_CODE = 1002;
    public static final String NETWORK_FAILURE = "Network Unavailable";
    private static final String OPTION_SELECTION_FOR_HEALTH_ID_CREATION_SCREEN = "optionSelectionForHealthIdCreationScreen";
    private static final String OTP_VERIFICATION_SCREEN = "otpVerificationScreen";
    private static final int RADIOBUTTON_ID_NO = 2;
    private static final int RADIOBUTTON_ID_YES = 1;
    private static final SimpleDateFormat SDF = new SimpleDateFormat(AadharScanUtil.DOB_DATE_FORMAT_1, Locale.getDefault());
    private static final String TAG = "NDHMHealthIdCreation";
    Map<String, String> aadhaarDetailsMap;
    private TextInputLayout aadhaarTB;
    LinearLayout aadharScannerLayout;
    private String abhaCardToken;
    private String abhaConsentCheckboxModel;
    private LinearLayout bodyLayoutContainer;
    private byte[] bytes;
    private MaterialCheckBox checkBox;
    MaterialTextView dateOfBirthTitle;
    private EnrollUsingAadhaar enrollUsingAadhaar;
    private String featureName;
    SewaFhsServiceImpl fhsService;
    private String fingerPrintAuthPid;
    private LinearLayout footerLayout;
    private LinearLayout globalPanel;
    private String healthId;
    private HealthIdAccountProfileResponse healthIdAccountProfileResponse;
    private String healthIdNumber;
    Dao<MemberBean, Integer> memberBeanDao;
    private Integer memberId;
    private TextInputLayout mobileNumberTB;
    private TextInputLayout mobileOtpTB;
    private MyAlertDialog myAlertDialog;
    private Button nextButton;
    private LinearLayout otpLayout;
    private TextInputLayout otpTB;
    private RadioGroup radioGroupForYesNo;
    private MediaRecorder recorder;
    private MaterialTextView resendBtn;
    SewaServiceRestClientImpl restClient;
    MaterialTextView scannerAadharName;
    MaterialTextView scannerDob;
    MaterialTextView scannerGender;
    private String screen;
    private MaterialTextView skipBtn;
    private MaterialTextView timer;
    private String token;
    private String txnId;
    private MaterialButton verificationBtn;
    private final Timer[] timerCounter = new Timer[1];
    private final int[] counter = {30, 0};
    private int resendOtpCounter = 0;
    private boolean isAudioRecording = false;
    private String fileName = "";

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
        this.featureName = getIntent().getStringExtra("featureName");
        this.abhaConsentCheckboxModel = getIntent().getStringExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL);
        setTitle(UtilBean.getTitleText(LabelConstants.CREATE_HEALTH_ID));
    }

    private void initView() {
        validateToken();
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this.context, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        this.nextButton = (Button) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.footerLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        setOptionSelectionForHealthIdCreationScreen();
    }

    public void validateToken() {
        try {
            try {
                SharedStructureData.sewaService.revalidateUserTokenForUser();
                SharedStructureData.sewaService.doAfterSuccessfulLogin(false);
            } catch (Exception e) {
                SharedStructureData.NETWORK_MESSAGE = SewaConstants.NETWORK_NOT_PROPER;
                Log.e(getClass().getName(), "Exception", e);
            }
        } finally {
            hideProcessDialog();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0016  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r4) {
        /*
            r3 = this;
            int r0 = r4.getId()
            int r1 = com.argusoft.sewa.android.app.util.DynamicUtils.ID_NEXT_BUTTON
            if (r0 != r1) goto L74
            java.lang.String r4 = r3.screen
            r4.hashCode()
            int r0 = r4.hashCode()
            r1 = 1
            r2 = -1
            switch(r0) {
                case -471731395: goto L2e;
                case -312460956: goto L23;
                case 125702768: goto L18;
                default: goto L16;
            }
        L16:
            r4 = -1
            goto L38
        L18:
            java.lang.String r0 = "displayHealthIdUpdateMobileScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L21
            goto L16
        L21:
            r4 = 2
            goto L38
        L23:
            java.lang.String r0 = "createHealthIdViaAadhaarOTPScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L2c
            goto L16
        L2c:
            r4 = 1
            goto L38
        L2e:
            java.lang.String r0 = "createHealthIdViaAadhaarFingerPrintScreen"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L37
            goto L16
        L37:
            r4 = 0
        L38:
            switch(r4) {
                case 0: goto L64;
                case 1: goto L64;
                case 2: goto L3c;
                default: goto L3b;
            }
        L3b:
            goto L89
        L3c:
            android.widget.RadioGroup r4 = r3.radioGroupForYesNo
            int r4 = r4.getCheckedRadioButtonId()
            if (r4 == r2) goto L5a
            android.widget.RadioGroup r4 = r3.radioGroupForYesNo
            int r4 = r4.getCheckedRadioButtonId()
            if (r4 != r1) goto L53
            r3.showProcessDialog()
            r3.generateUpdateMobileOTP()
            goto L89
        L53:
            r3.showProcessDialog()
            r3.showAbhaCard()
            goto L89
        L5a:
            java.lang.String r4 = "Please Select an option"
            java.lang.String r4 = com.argusoft.sewa.android.app.util.UtilBean.getMyLabel(r4)
            com.argusoft.sewa.android.app.util.SewaUtil.generateToast(r3, r4)
            goto L89
        L64:
            boolean r4 = r3.aadhaarValidation()
            if (r4 == 0) goto L89
            boolean r4 = r3.mobileNumberValidation()
            if (r4 == 0) goto L89
            r3.checkNetworkConnection()
            goto L89
        L74:
            int r4 = r4.getId()
            r0 = 10040(0x2738, float:1.4069E-41)
            if (r4 != r0) goto L89
            com.google.zxing.integration.android.IntentIntegrator r4 = new com.google.zxing.integration.android.IntentIntegrator
            r4.<init>(r3)
            java.lang.Class<com.argusoft.sewa.android.app.qrscanner.QRScannerActivity> r0 = com.argusoft.sewa.android.app.qrscanner.QRScannerActivity.class
            r4.setCaptureActivity(r0)
            r4.initiateScan()
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.onClick(android.view.View):void");
    }

    private void setAadhaarQRScanData() {
        String aadhaarValueFromMap;
        Map<String, String> map = this.aadhaarDetailsMap;
        if (map == null || (aadhaarValueFromMap = getAadhaarValueFromMap(map, AadharScanUtil.UID)) == null) {
            return;
        }
        this.aadhaarTB.getEditText().setText(aadhaarValueFromMap);
    }

    public void showAbhaCard() {
        final String[] strArr = {"Issue while retrieving the ABHA Card"};
        try {
            this.bytes = this.restClient.sendSMSandGetHealthIdCard(this.enrollUsingAadhaar.getHealthIdAccountProfileResponse().getJwtResponse().getToken(), this.enrollUsingAadhaar.getHealthIdAccountProfileResponse().getHealthIdNumber());
        } catch (Exception unused) {
        }
        try {
            byte[] bArr = this.bytes;
            if (bArr != null && bArr.length > 0) {
                displayHealthIdScreen(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            } else {
                displayHealthIdScreen(null);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m375xf05c9ce7(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$showAbhaCard$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m375xf05c9ce7(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    private String getAadhaarValueFromMap(Map<String, String> map, String str) {
        String str2;
        if (map == null || !map.containsKey(str) || (str2 = map.get(str)) == null || str2.isEmpty()) {
            return null;
        }
        return str2;
    }

    public void setOptionSelectionForHealthIdCreationScreen() {
        this.screen = OPTION_SELECTION_FOR_HEALTH_ID_CREATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.SELECT_METHOD_FOR_ABHA_CREATION)));
        ArrayList arrayList = new ArrayList();
        arrayList.add(UtilBean.getMyLabel(LabelConstants.AADHAAR_OTP_AUTHENTICATION));
        arrayList.add(UtilBean.getMyLabel(LabelConstants.AADHAAR_FINGERPRINT_AUTHENTICATION));
        arrayList.add(UtilBean.getMyLabel(LabelConstants.AADHAAR_DEMOGRAPHIC_AUTHENTICATION));
        this.bodyLayoutContainer.addView(MyStaticComponents.getButtonList(this.context, arrayList, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    if (SharedStructureData.sewaService.isOnline()) {
                        NDHMHealthIdCreationActivity.this.setComponentForCreateHealthIdViaAadhaarOTP();
                        return;
                    } else {
                        SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT));
                        NDHMHealthIdCreationActivity.this.setOptionSelectionForHealthIdCreationScreen();
                        return;
                    }
                }
                if (i != 1) {
                    if (i == 2) {
                        NDHMHealthIdCreationActivity.this.showPopUpWindow(view);
                    }
                } else if (SharedStructureData.sewaService.isOnline()) {
                    NDHMHealthIdCreationActivity.this.setComponentForCreateHealthIdViaFingerprint();
                } else {
                    SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, UtilBean.getMyLabel(LabelConstants.NETWORK_CONNECTIVITY_ALERT));
                    NDHMHealthIdCreationActivity.this.setOptionSelectionForHealthIdCreationScreen();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setComponentForCreateHealthIdViaAadhaarOTP() {
        this.aadhaarTB = MyStaticComponents.getEditText(this.context, LabelConstants.AADHAAR_NUMBER, -1, 12, 2);
        this.mobileNumberTB = MyStaticComponents.getEditText(this.context, LabelConstants.MOBILE_NUMBER, -1, 10, 3);
        String stringExtra = getIntent().getStringExtra("mobileNumber");
        if (stringExtra != null && !stringExtra.isEmpty() && !stringExtra.equals("T")) {
            this.mobileNumberTB.getEditText().setText(stringExtra);
        }
        setCreateHealthIdViaAadhaarOTPScreen();
    }

    public void setCreateHealthIdViaAadhaarOTPScreen() {
        this.screen = CREATE_HEALTH_ID_VIA_AADHAAR_OTP_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.CREATE_HEALTH_ID)));
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(String.format("(%s)", UtilBean.getMyLabel(LabelConstants.AADHAAR_OTP_AUTHENTICATION))));
        materialTextViewGenerateSubTitleView.setTextAlignment(4);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        if (this.memberId != null) {
            MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(r1.intValue()));
            if (memberBeanRetrieveMemberBeanByActualId != null && this.memberId.intValue() != -1) {
                String str = new SimpleDateFormat("dd/MM/yyyy").format(memberBeanRetrieveMemberBeanByActualId.getDob());
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, determineGender(memberBeanRetrieveMemberBeanByActualId.getGender(), true)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID) + "( " + UtilBean.getMyLabel(LabelConstants.FAMILY_ID) + " )"));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + "( " + memberBeanRetrieveMemberBeanByActualId.getFamilyId() + " )"));
                this.aadharScannerLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
                MaterialTextView materialTextViewGenerateSubTitleView2 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.AADHAR_SCANNER_DETAILS));
                materialTextViewGenerateSubTitleView2.setTextAlignment(4);
                this.aadharScannerLayout.addView(materialTextViewGenerateSubTitleView2);
                this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
                MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerAadharName = materialTextViewGenerateAnswerView;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView);
                MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH));
                this.dateOfBirthTitle = materialTextViewGenerateQuestionView;
                this.aadharScannerLayout.addView(materialTextViewGenerateQuestionView);
                MaterialTextView materialTextViewGenerateAnswerView2 = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerDob = materialTextViewGenerateAnswerView2;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView2);
                this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
                MaterialTextView materialTextViewGenerateAnswerView3 = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerGender = materialTextViewGenerateAnswerView3;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView3);
                this.bodyLayoutContainer.addView(this.aadharScannerLayout);
                this.aadharScannerLayout.setVisibility(8);
            } else {
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, getIntent().getStringExtra("firstName") + ' ' + getIntent().getStringExtra("lastName")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, getIntent().getStringExtra("dob")));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
                this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, determineGender(getIntent().getStringExtra("gender"), false)));
                this.aadharScannerLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
                MaterialTextView materialTextViewGenerateSubTitleView3 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.AADHAR_SCANNER_DETAILS));
                materialTextViewGenerateSubTitleView3.setTextAlignment(4);
                this.aadharScannerLayout.addView(materialTextViewGenerateSubTitleView3);
                this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
                MaterialTextView materialTextViewGenerateAnswerView4 = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerAadharName = materialTextViewGenerateAnswerView4;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView4);
                MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH));
                this.dateOfBirthTitle = materialTextViewGenerateQuestionView2;
                this.aadharScannerLayout.addView(materialTextViewGenerateQuestionView2);
                MaterialTextView materialTextViewGenerateAnswerView5 = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerDob = materialTextViewGenerateAnswerView5;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView5);
                this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
                MaterialTextView materialTextViewGenerateAnswerView6 = MyStaticComponents.generateAnswerView(this.context, "Not available");
                this.scannerGender = materialTextViewGenerateAnswerView6;
                this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView6);
                this.bodyLayoutContainer.addView(this.aadharScannerLayout);
                this.aadharScannerLayout.setVisibility(8);
            }
        }
        MaterialTextView materialTextViewGenerateSubTitleView4 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.SCAN_AADHAAR_CARD));
        materialTextViewGenerateSubTitleView4.setTextAlignment(4);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView4);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, IdConstants.AADHAAR_SCAN_LAYOUT, 1, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(120, 120);
        layoutParams2.setMargins(0, 0, 0, 20);
        layoutParams2.gravity = 17;
        linearLayout.addView(MyStaticComponents.getImageView(this.context, 1, R.drawable.ic_qr_scan, layoutParams2));
        layoutParams.setMargins(0, 20, 0, 20);
        linearLayout.setGravity(17);
        linearLayout.addView(MyStaticComponents.getMaterialTextView(this.context, UtilBean.getMyLabel(LabelConstants.SCAN_AADHAAR_CARD), -1, R.style.CustomAnswerView, true));
        linearLayout.setOnClickListener(this);
        this.bodyLayoutContainer.addView(linearLayout);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.AN_OTP_WILL_BE_SENT_TO_THE_MOBILE_PHONE_NUMBER_LINKED_TO_THIS_AADHAAR_NUMBER)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AADHAAR_NUMBER)));
        this.bodyLayoutContainer.addView(this.aadhaarTB);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionViewWithTooltip(null, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_HINT_FOR_ABHA), this.context, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER)));
        this.bodyLayoutContainer.addView(this.mobileNumberTB);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(0, 40, 0, 0);
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMyLabel(LabelConstants.ABHA_OFFLINE_CONSENT), -1, false);
        this.checkBox = checkBox;
        checkBox.setGravity(48);
        this.checkBox.setLayoutParams(layoutParams3);
        TextViewCompat.setTextAppearance(this.checkBox, R.style.CustomSubtitleView);
        this.bodyLayoutContainer.addView(this.checkBox);
        this.footerLayout.setVisibility(0);
        this.nextButton.setVisibility(8);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.SEND_OTP));
        this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m370x3554dd23(compoundButton, z);
            }
        });
    }

    /* renamed from: lambda$setCreateHealthIdViaAadhaarOTPScreen$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m370x3554dd23(CompoundButton compoundButton, boolean z) {
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            this.nextButton.setVisibility(0);
        } else {
            this.nextButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setComponentForCreateHealthIdViaFingerprint() {
        this.aadhaarTB = MyStaticComponents.getEditText(this.context, LabelConstants.AADHAAR_NUMBER, -1, 12, 2);
        this.mobileNumberTB = MyStaticComponents.getEditText(this.context, LabelConstants.MOBILE_NUMBER, -1, 10, 3);
        String stringExtra = getIntent().getStringExtra("mobileNumber");
        if (stringExtra != null && !stringExtra.isEmpty() && !stringExtra.equals("T")) {
            this.mobileNumberTB.getEditText().setText(stringExtra);
        }
        setCreateHealthIdViaFingerprintScreen();
    }

    public void setCreateHealthIdViaFingerprintScreen() {
        this.screen = CREATE_HEALTH_ID_VIA_AADHAAR_FINGERPRINT_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.CREATE_HEALTH_ID)));
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(String.format("(%s)", LabelConstants.AADHAAR_FINGERPRINT_AUTHENTICATION)));
        materialTextViewGenerateSubTitleView.setTextAlignment(4);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        MemberBean memberBeanRetrieveMemberBeanByActualId = this.fhsService.retrieveMemberBeanByActualId(Long.valueOf(this.memberId.intValue()));
        if (memberBeanRetrieveMemberBeanByActualId != null && this.memberId.intValue() != -1) {
            String str = new SimpleDateFormat("dd/MM/yyyy").format(memberBeanRetrieveMemberBeanByActualId.getDob());
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, UtilBean.getMemberFullName(memberBeanRetrieveMemberBeanByActualId)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, str));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, determineGender(memberBeanRetrieveMemberBeanByActualId.getGender(), true)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_ID) + "( " + UtilBean.getMyLabel(LabelConstants.FAMILY_ID) + " )"));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, memberBeanRetrieveMemberBeanByActualId.getUniqueHealthId() + "( " + memberBeanRetrieveMemberBeanByActualId.getFamilyId() + " )"));
            this.aadharScannerLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            MaterialTextView materialTextViewGenerateSubTitleView2 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.AADHAR_SCANNER_DETAILS));
            materialTextViewGenerateSubTitleView2.setTextAlignment(4);
            this.aadharScannerLayout.addView(materialTextViewGenerateSubTitleView2);
            this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerAadharName = materialTextViewGenerateAnswerView;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView);
            MaterialTextView materialTextViewGenerateQuestionView = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH));
            this.dateOfBirthTitle = materialTextViewGenerateQuestionView;
            this.aadharScannerLayout.addView(materialTextViewGenerateQuestionView);
            MaterialTextView materialTextViewGenerateAnswerView2 = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerDob = materialTextViewGenerateAnswerView2;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView2);
            this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
            MaterialTextView materialTextViewGenerateAnswerView3 = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerGender = materialTextViewGenerateAnswerView3;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView3);
            this.bodyLayoutContainer.addView(this.aadharScannerLayout);
            this.aadharScannerLayout.setVisibility(8);
        } else {
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, getIntent().getStringExtra("firstName") + ' ' + getIntent().getStringExtra("lastName")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, getIntent().getStringExtra("dob")));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
            this.bodyLayoutContainer.addView(MyStaticComponents.generateAnswerView(this.context, determineGender(getIntent().getStringExtra("gender"), false)));
            this.aadharScannerLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
            MaterialTextView materialTextViewGenerateSubTitleView3 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.AADHAR_SCANNER_DETAILS));
            materialTextViewGenerateSubTitleView3.setTextAlignment(4);
            this.aadharScannerLayout.addView(materialTextViewGenerateSubTitleView3);
            this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.MEMBER_NAME)));
            MaterialTextView materialTextViewGenerateAnswerView4 = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerAadharName = materialTextViewGenerateAnswerView4;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView4);
            MaterialTextView materialTextViewGenerateQuestionView2 = MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.DATE_OF_BIRTH));
            this.dateOfBirthTitle = materialTextViewGenerateQuestionView2;
            this.aadharScannerLayout.addView(materialTextViewGenerateQuestionView2);
            MaterialTextView materialTextViewGenerateAnswerView5 = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerDob = materialTextViewGenerateAnswerView5;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView5);
            this.aadharScannerLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.GENDER)));
            MaterialTextView materialTextViewGenerateAnswerView6 = MyStaticComponents.generateAnswerView(this.context, "Not available");
            this.scannerGender = materialTextViewGenerateAnswerView6;
            this.aadharScannerLayout.addView(materialTextViewGenerateAnswerView6);
            this.bodyLayoutContainer.addView(this.aadharScannerLayout);
            this.aadharScannerLayout.setVisibility(8);
        }
        MaterialTextView materialTextViewGenerateSubTitleView4 = MyStaticComponents.generateSubTitleView(this.context, UtilBean.getMyLabel(LabelConstants.SCAN_AADHAAR_CARD));
        materialTextViewGenerateSubTitleView4.setTextAlignment(4);
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView4);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, IdConstants.AADHAAR_SCAN_LAYOUT, 1, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(120, 120);
        layoutParams2.setMargins(0, 0, 0, 20);
        layoutParams2.gravity = 17;
        linearLayout.addView(MyStaticComponents.getImageView(this.context, 1, R.drawable.ic_qr_scan, layoutParams2));
        layoutParams.setMargins(0, 20, 0, 20);
        linearLayout.setGravity(17);
        linearLayout.addView(MyStaticComponents.getMaterialTextView(this.context, UtilBean.getMyLabel(LabelConstants.SCAN_AADHAAR_CARD), -1, R.style.CustomAnswerView, true));
        linearLayout.setOnClickListener(this);
        this.bodyLayoutContainer.addView(linearLayout);
        this.bodyLayoutContainer.addView(MyStaticComponents.getOrTextView(this.context));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_ALL_DETAILS_AS_GIVEN_IN_THE_AADHAAR_CARD)));
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, UtilBean.getMyLabel(LabelConstants.AADHAAR_NUMBER)));
        this.bodyLayoutContainer.addView(this.aadhaarTB);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionViewWithTooltip(null, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_HINT_FOR_ABHA), this.context, UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER)));
        this.bodyLayoutContainer.addView(this.mobileNumberTB);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(0, 40, 0, 0);
        MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, UtilBean.getMyLabel(LabelConstants.ABHA_OFFLINE_CONSENT), -1, false);
        this.checkBox = checkBox;
        checkBox.setGravity(48);
        this.checkBox.setLayoutParams(layoutParams3);
        TextViewCompat.setTextAppearance(this.checkBox, R.style.CustomSubtitleView);
        this.bodyLayoutContainer.addView(this.checkBox);
        this.footerLayout.setVisibility(0);
        this.nextButton.setVisibility(8);
        this.nextButton.setText(UtilBean.getMyLabel(LabelConstants.REGISTER));
        this.nextButton.setOnClickListener(this);
        this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda9
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m371x179fefbf(compoundButton, z);
            }
        });
    }

    /* renamed from: lambda$setCreateHealthIdViaFingerprintScreen$2$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m371x179fefbf(CompoundButton compoundButton, boolean z) {
        if (Boolean.TRUE.equals(Boolean.valueOf(z))) {
            this.nextButton.setVisibility(0);
        } else {
            this.nextButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopUpWindow(View view) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.ndhm_record_consent_popup_window, (ViewGroup) null);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, (displayMetrics.widthPixels * 8) / 10, -1, true);
        popupWindow.showAtLocation(view, 17, 0, 0);
        final Button button = (Button) viewInflate.findViewById(R.id.popup_button);
        final ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.mic_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m376xf3d013c8(imageButton, popupWindow, view2);
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws IllegalStateException, IOException {
                this.f$0.m377xe521a349(imageButton, button, view2);
            }
        });
    }

    /* renamed from: lambda$showPopUpWindow$3$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m376xf3d013c8(ImageButton imageButton, PopupWindow popupWindow, View view) {
        if (this.isAudioRecording) {
            imageButton.performClick();
        }
        popupWindow.dismiss();
        Intent intent = new Intent(this.context, (Class<?>) NDHMOfflineHealthIdCreationActivity_.class);
        intent.putExtra("memberId", this.memberId);
        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
        intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
        intent.putExtra("gender", getIntent().getStringExtra("gender"));
        intent.putExtra("mobileNumber", getIntent().getStringExtra("mobileNumber"));
        intent.putExtra("dob", getIntent().getStringExtra("dob"));
        intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, this.abhaConsentCheckboxModel);
        startActivityForResult(intent, 1000);
    }

    /* renamed from: lambda$showPopUpWindow$4$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m377xe521a349(ImageButton imageButton, Button button, View view) throws IllegalStateException, IOException {
        if (this.isAudioRecording) {
            button.setText(R.string.next);
            this.recorder.stop();
            this.recorder.reset();
            this.recorder.release();
            this.recorder = null;
            imageButton.setImageResource(R.drawable.record_audio);
            SewaUtil.generateToast(this, "Audio Recorded successfully");
            this.isAudioRecording = false;
            return;
        }
        try {
            this.isAudioRecording = true;
            if (this.recorder == null) {
                this.recorder = new MediaRecorder();
            }
            this.fileName = "Record_ABHA_CONSENT_" + new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss", Locale.getDefault()).format(new Date()) + GlobalTypes.AUDIO_RECORD_FORMAT;
            this.recorder.setAudioSource(1);
            this.recorder.setOutputFormat(3);
            this.recorder.setAudioEncoder(1);
            this.recorder.setOutputFile(SewaConstants.DIR_AUDIO + this.fileName);
            this.recorder.prepare();
            this.recorder.start();
            imageButton.setImageResource(R.drawable.stop_audio);
            SewaUtil.generateToast(this, "Recording started");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void setComponentForCreateHealthIdViaDemographics() {
        Intent intent = new Intent(this.context, (Class<?>) NDHMOfflineHealthIdCreationActivity_.class);
        intent.putExtra("memberId", this.memberId);
        intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
        intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
        intent.putExtra("gender", getIntent().getStringExtra("gender"));
        intent.putExtra("mobileNumber", getIntent().getStringExtra("mobileNumber"));
        intent.putExtra("dob", getIntent().getStringExtra("dob"));
        intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, this.abhaConsentCheckboxModel);
        startActivityForResult(intent, 1000);
    }

    public void checkNetworkConnection() {
        if (SharedStructureData.sewaService.isOnline()) {
            String str = this.screen;
            str.hashCode();
            if (!str.equals(CREATE_HEALTH_ID_VIA_AADHAAR_FINGERPRINT_SCREEN)) {
                if (str.equals(CREATE_HEALTH_ID_VIA_AADHAAR_OTP_SCREEN)) {
                    showProcessDialog();
                    generateOTP();
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.context, (Class<?>) FingerPrintScannerActivity_.class);
            intent.putExtra("aadhaar", this.aadhaarTB.getEditText().getText().toString());
            intent.putExtra(AadharScanUtil.MOBILE_HEX, this.mobileNumberTB.getEditText().getText().toString());
            intent.putExtra("memberId", this.memberId);
            intent.putExtra("featureName", this.featureName);
            intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, this.abhaConsentCheckboxModel);
            startActivityForResult(intent, 1001);
            return;
        }
        SewaUtil.generateToast(this.context, UtilBean.getMyLabel("Network Unavailable"));
    }

    public void generateOTP() {
        final String[] strArr = {"Issue for sending otp"};
        try {
            Map<String, String> mapGenerateAadhaarOTPV3 = this.restClient.generateAadhaarOTPV3(this.aadhaarTB.getEditText().getText().toString().trim(), this.memberId);
            System.out.println("-------------------------first-otp-------------");
            System.out.println(mapGenerateAadhaarOTPV3);
            if (mapGenerateAadhaarOTPV3 != null) {
                this.txnId = mapGenerateAadhaarOTPV3.get("txnId");
                setOTPVerificationScreen(mapGenerateAadhaarOTPV3.get("message"));
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.2
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity.this.hideProcessDialog();
                SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, strArr[0]);
            }
        });
    }

    public void resendOTP() {
        final String[] strArr = {"Issue for sending otp again"};
        try {
            Map<String, String> mapGenerateAadhaarOTP = this.restClient.generateAadhaarOTP(this.aadhaarTB.getEditText().getText().toString().trim(), this.memberId);
            if (mapGenerateAadhaarOTP != null) {
                this.txnId = mapGenerateAadhaarOTP.get("txnId");
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        NDHMHealthIdCreationActivity.this.timerCounter[0] = new Timer();
                        NDHMHealthIdCreationActivity.this.startTimer();
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.4
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity.this.hideProcessDialog();
                SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, strArr[0]);
            }
        });
    }

    public void setOTPVerificationScreen(String str) {
        this.screen = OTP_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_layout, (ViewGroup) null);
        this.otpLayout = linearLayout;
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
        if (str == null) {
            str = UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_THE_OTP_RECEIVED_ON_THE_AADHAAR_LINKED_MOBILE_NUMBER);
        }
        materialTextView.setText(str);
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
        this.otpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                NDHMHealthIdCreationActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SharedStructureData.sewaService.isOnline()) {
                    NDHMHealthIdCreationActivity.this.showProcessDialog();
                    NDHMHealthIdCreationActivity.this.generateHealthIdUsingAadhaarOTP();
                } else {
                    SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, UtilBean.getMyLabel("Network Unavailable"));
                }
            }
        });
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NDHMHealthIdCreationActivity.this.showProcessDialog();
                NDHMHealthIdCreationActivity.this.resendOTP();
            }
        });
        this.skipBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(NDHMHealthIdCreationActivity.this.context, (Class<?>) NDHMOfflineHealthIdCreationActivity_.class);
                intent.putExtra("memberId", NDHMHealthIdCreationActivity.this.memberId);
                intent.putExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY, NDHMHealthIdCreationActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.NAME_OF_BENEFICIARY));
                intent.putExtra(RelatedPropertyNameConstants.AADHAR_SCANNED, NDHMHealthIdCreationActivity.this.getIntent().getStringExtra(RelatedPropertyNameConstants.AADHAR_SCANNED));
                intent.putExtra("gender", NDHMHealthIdCreationActivity.this.getIntent().getStringExtra("gender"));
                intent.putExtra(RelatedPropertyNameConstants.AADHAR_NUMBER, NDHMHealthIdCreationActivity.this.aadhaarTB.getEditText().getText().toString());
                intent.putExtra("mobileNumber", NDHMHealthIdCreationActivity.this.mobileNumberTB.getEditText().getText().toString());
                intent.putExtra("dob", NDHMHealthIdCreationActivity.this.getIntent().getStringExtra("dob"));
                intent.putExtra(RelatedPropertyNameConstants.ABHA_CONSENT_CHECKBOX_MODEL, NDHMHealthIdCreationActivity.this.abhaConsentCheckboxModel);
                NDHMHealthIdCreationActivity.this.startActivityForResult(intent, 1002);
            }
        });
        this.bodyLayoutContainer.addView(this.otpLayout);
        this.counter[1] = 0;
        startTimer();
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
        this.timerCounter[0].schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.9
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (NDHMHealthIdCreationActivity.this.counter[0] > 0) {
                    NDHMHealthIdCreationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NDHMHealthIdCreationActivity.this.timer.setText(String.format(Locale.getDefault(), "in %ds", Integer.valueOf(NDHMHealthIdCreationActivity.this.counter[0])));
                            int[] iArr2 = NDHMHealthIdCreationActivity.this.counter;
                            iArr2[0] = iArr2[0] - 1;
                        }
                    });
                } else {
                    NDHMHealthIdCreationActivity.this.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NDHMHealthIdCreationActivity.this.timer.setVisibility(8);
                            NDHMHealthIdCreationActivity.this.resendBtn.setEnabled(true);
                            NDHMHealthIdCreationActivity.this.skipBtn.setEnabled(true);
                            NDHMHealthIdCreationActivity.this.resendBtn.setTextColor(Color.parseColor("#245eae"));
                            NDHMHealthIdCreationActivity.this.skipBtn.setTextColor(Color.parseColor("#245eae"));
                        }
                    });
                    cancel();
                }
            }
        }, 50L, 1500L);
        hideProcessDialog();
    }

    public void generateHealthIdUsingAadhaarOTP() {
        final String[] strArr = {"Issue for creating Health Id"};
        try {
            EnrollUsingAadhaar enrollUsingAadhaarCreateUsingAadhaarOTPV3 = this.restClient.createUsingAadhaarOTPV3(this.memberId, this.aadhaarTB.getEditText().getText().toString().trim(), this.mobileNumberTB.getEditText().getText().toString(), this.otpTB.getEditText().getText().toString(), this.txnId, this.featureName, this.abhaConsentCheckboxModel, Boolean.valueOf(this.checkBox.isChecked()));
            this.enrollUsingAadhaar = enrollUsingAadhaarCreateUsingAadhaarOTPV3;
            this.txnId = enrollUsingAadhaarCreateUsingAadhaarOTPV3.getTxnId();
            EnrollUsingAadhaar enrollUsingAadhaar = this.enrollUsingAadhaar;
            if (enrollUsingAadhaar != null) {
                HealthIdAccountProfileResponse healthIdAccountProfileResponse = enrollUsingAadhaar.getHealthIdAccountProfileResponse();
                this.healthIdAccountProfileResponse = healthIdAccountProfileResponse;
                this.healthIdNumber = healthIdAccountProfileResponse.getHealthIdNumber();
                this.healthId = this.healthIdAccountProfileResponse.getHealthId();
                this.abhaCardToken = this.healthIdAccountProfileResponse.getJwtResponse().getToken();
                try {
                    if (this.healthIdAccountProfileResponse.getMobile() == null || !this.healthIdAccountProfileResponse.getMobile().equals(this.mobileNumberTB.getEditText().getText().toString())) {
                        setDisplayUpdateMobileNumber();
                    } else {
                        showAbhaCard();
                    }
                } catch (Exception unused) {
                    this.bytes = null;
                }
                this.healthIdNumber = this.healthIdAccountProfileResponse.getHealthIdNumber();
                this.healthId = this.healthIdAccountProfileResponse.getHealthId();
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NDHMHealthIdCreationActivity.this.timerCounter[0] != null) {
                            NDHMHealthIdCreationActivity.this.timerCounter[0].cancel();
                        }
                        NDHMHealthIdCreationActivity.this.timer.setVisibility(8);
                        NDHMHealthIdCreationActivity.this.resendBtn.setEnabled(false);
                        NDHMHealthIdCreationActivity.this.skipBtn.setEnabled(false);
                        NDHMHealthIdCreationActivity.this.verificationBtn.setEnabled(false);
                        NDHMHealthIdCreationActivity.this.otpTB.setEnabled(false);
                    }
                });
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.11
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity.this.hideProcessDialog();
                SewaUtil.generateToast(NDHMHealthIdCreationActivity.this.context, strArr[0]);
            }
        });
    }

    public void setDisplayUpdateMobileNumber() {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DISPLAY_HEALTH_ID_UPDATE_MOBILE_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateQuestionView(null, null, this.context, this.mobileNumberTB.getEditText().getText() != null ? String.format(LabelConstants.DIFFERENT_MOBILE_NUMBER_FROM_ABHA, this.mobileNumberTB.getEditText().getText().toString()) : String.format(LabelConstants.DIFFERENT_MOBILE_NUMBER_FROM_ABHA, "")));
        this.radioGroupForYesNo = new RadioGroup(this.context);
        MaterialRadioButton radioButton = MyStaticComponents.getRadioButton(this, "Yes", 1);
        MaterialRadioButton radioButton2 = MyStaticComponents.getRadioButton(this, "No", 2);
        this.radioGroupForYesNo.addView(radioButton);
        this.radioGroupForYesNo.addView(radioButton2);
        this.radioGroupForYesNo.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                this.f$0.m372x93e72599(radioGroup, i);
            }
        });
        this.bodyLayoutContainer.addView(this.radioGroupForYesNo);
        this.nextButton.setText(UtilBean.getMyLabel("Next"));
        hideProcessDialog();
    }

    /* renamed from: lambda$setDisplayUpdateMobileNumber$5$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m372x93e72599(RadioGroup radioGroup, int i) {
        this.footerLayout.setVisibility(0);
    }

    public void generateUpdateMobileOTP() {
        final String[] strArr = {"Issue for sending otp"};
        try {
            Map<String, String> mapGenerateUpdateMobileOTP = this.restClient.generateUpdateMobileOTP(this.txnId, this.mobileNumberTB.getEditText().getText().toString(), this.memberId);
            if (mapGenerateUpdateMobileOTP != null) {
                this.txnId = mapGenerateUpdateMobileOTP.get("txnId");
                setOTPVerificationForUpdateMobile(mapGenerateUpdateMobileOTP.get("message"));
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m366x1cee77d7(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$generateUpdateMobileOTP$6$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m366x1cee77d7(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void resendUpdateMobileOtp() {
        final String[] strArr = {"Issue for sending otp"};
        try {
            Map<String, String> mapGenerateUpdateMobileOTP = this.restClient.generateUpdateMobileOTP(this.txnId, this.mobileNumberTB.getEditText().getText().toString(), this.memberId);
            if (mapGenerateUpdateMobileOTP != null) {
                this.txnId = mapGenerateUpdateMobileOTP.get("txnId");
                int i = this.resendOtpCounter + 1;
                this.resendOtpCounter = i;
                if (i == 2) {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m367xc69d7912();
                        }
                    });
                } else {
                    runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m368xb7ef0893();
                        }
                    });
                }
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m369xa9409814(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$resendUpdateMobileOtp$7$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m367xc69d7912() {
        this.resendBtn.setVisibility(4);
        this.timer.setVisibility(4);
        hideProcessDialog();
    }

    /* renamed from: lambda$resendUpdateMobileOtp$8$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m368xb7ef0893() {
        this.timerCounter[0] = new Timer();
        startTimer();
    }

    /* renamed from: lambda$resendUpdateMobileOtp$9$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m369xa9409814(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void setOTPVerificationForUpdateMobile(String str) {
        String str2;
        this.screen = CHANGE_MOBILE_OTP_VERIFICATION_SCREEN;
        this.bodyLayoutContainer.removeAllViews();
        this.footerLayout.setVisibility(8);
        this.resendOtpCounter = 0;
        String myLabel = UtilBean.getMyLabel(UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_THE_OTP_RECEIVED_ON_THE_MOBILE_NUMBER));
        if (this.mobileNumberTB.getEditText().getText().toString() != null) {
            str2 = String.format(myLabel, "******" + this.mobileNumberTB.getEditText().getText().toString().substring(this.mobileNumberTB.getEditText().getText().toString().length() - 4));
        } else {
            str2 = String.format(myLabel, "");
        }
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.context).inflate(R.layout.aadhaar_otp_validation_without_skip_otp_layout, (ViewGroup) null);
        this.otpLayout = linearLayout;
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.description);
        if (str == null) {
            str = str2;
        }
        materialTextView.setText(str);
        TextInputLayout textInputLayout = (TextInputLayout) this.otpLayout.findViewById(R.id.otpText);
        this.mobileOtpTB = textInputLayout;
        if (textInputLayout.getEditText() != null) {
            this.mobileOtpTB.getEditText().setHint(LabelConstants.ENTER_OTP);
            this.mobileOtpTB.getEditText().setInputType(2);
        }
        MaterialButton materialButton = (MaterialButton) this.otpLayout.findViewById(R.id.verifyOtpBtn);
        this.verificationBtn = materialButton;
        materialButton.setText(UtilBean.getMyLabel(LabelConstants.VALIDATE));
        this.verificationBtn.setEnabled(false);
        this.timer = (MaterialTextView) this.otpLayout.findViewById(R.id.timer);
        MaterialTextView materialTextView2 = (MaterialTextView) this.otpLayout.findViewById(R.id.resend);
        this.resendBtn = materialTextView2;
        materialTextView2.setEnabled(false);
        this.mobileOtpTB.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.12
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                NDHMHealthIdCreationActivity.this.verificationBtn.setEnabled(Pattern.compile("^\\d{6}$").matcher(editable).matches());
            }
        });
        this.verificationBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m373x45a69f07(view);
            }
        });
        this.resendBtn.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m374x36f82e88(view);
            }
        });
        this.bodyLayoutContainer.addView(this.otpLayout);
        this.counter[1] = 0;
        startTimer();
        hideProcessDialog();
    }

    /* renamed from: lambda$setOTPVerificationForUpdateMobile$10$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m373x45a69f07(View view) {
        showProcessDialog();
        verifyUpdateMobileOTP();
    }

    /* renamed from: lambda$setOTPVerificationForUpdateMobile$11$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m374x36f82e88(View view) {
        showProcessDialog();
        resendUpdateMobileOtp();
    }

    public void verifyUpdateMobileOTP() {
        final String[] strArr = {"Invalid OTP"};
        try {
            final VerifyOtpResponse verifyOtpResponseVerifyUpdateMobileOTP = this.restClient.verifyUpdateMobileOTP(this.txnId, this.mobileOtpTB.getEditText().getText().toString(), this.memberId, this.mobileNumberTB.getEditText().getText().toString(), this.enrollUsingAadhaar.getHealthIdAccountProfileResponse().getHealthIdNumber());
            if (verifyOtpResponseVerifyUpdateMobileOTP != null) {
                this.txnId = verifyOtpResponseVerifyUpdateMobileOTP.getTxnId();
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m378x990e872(verifyOtpResponseVerifyUpdateMobileOTP);
                    }
                });
                showAbhaCard();
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m379xfae277f3(strArr);
                }
            });
        }
    }

    /* renamed from: lambda$verifyUpdateMobileOTP$12$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m378x990e872(VerifyOtpResponse verifyOtpResponse) {
        SewaUtil.generateToast(this.context, verifyOtpResponse.getMessage());
    }

    /* renamed from: lambda$verifyUpdateMobileOTP$13$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m379xfae277f3(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void createUsingAadhaarBiometricsV3() {
        final String[] strArr = {"Issue for verifying biometrics"};
        try {
            EnrollUsingAadhaar enrollUsingAadhaarCreateUsingAadhaarBiometricsV3 = this.restClient.createUsingAadhaarBiometricsV3(this.aadhaarTB.getEditText().getText().toString(), this.fingerPrintAuthPid, this.mobileNumberTB.getEditText().getText().toString(), this.featureName, this.abhaConsentCheckboxModel, Boolean.valueOf(this.checkBox.isChecked()), this.memberId);
            this.enrollUsingAadhaar = enrollUsingAadhaarCreateUsingAadhaarBiometricsV3;
            if (OtpVerificationActivity$$ExternalSyntheticBackport0.m(enrollUsingAadhaarCreateUsingAadhaarBiometricsV3)) {
                this.txnId = this.enrollUsingAadhaar.getTxnId();
                HealthIdAccountProfileResponse healthIdAccountProfileResponse = this.enrollUsingAadhaar.getHealthIdAccountProfileResponse();
                this.healthIdAccountProfileResponse = healthIdAccountProfileResponse;
                this.healthIdNumber = healthIdAccountProfileResponse.getHealthIdNumber();
                this.healthId = this.healthIdAccountProfileResponse.getHealthId();
                this.abhaCardToken = this.healthIdAccountProfileResponse.getJwtResponse().getToken();
                if (this.healthIdAccountProfileResponse.getMobile() != null && this.healthIdAccountProfileResponse.getMobile().equals(this.mobileNumberTB.getEditText().getText().toString())) {
                    showProcessDialog();
                    showAbhaCard();
                    return;
                }
                setDisplayUpdateMobileNumber();
                return;
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            strArr[0] = e.getMessage();
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m365x173faa83(strArr);
            }
        });
    }

    /* renamed from: lambda$createUsingAadhaarBiometricsV3$14$com-argusoft-sewa-android-app-activity-NDHMHealthIdCreationActivity, reason: not valid java name */
    /* synthetic */ void m365x173faa83(String[] strArr) {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, strArr[0]);
    }

    public void downloadAbhaCard(Long l) throws IOException {
        if (l != null) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new URL(WSConstants.REST_TECHO_SERVICE_URL + "getfileById?id=" + l).openConnection().getInputStream());
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
                while (true) {
                    int i = bufferedInputStream.read();
                    if (i == -1) {
                        break;
                    } else {
                        byteArrayBuffer.append((byte) i);
                    }
                }
                if (byteArrayBuffer.isEmpty()) {
                    return;
                }
                byte[] byteArray = byteArrayBuffer.toByteArray();
                displayHealthIdScreen(BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), null, e);
            }
        }
    }

    public void getAbhaCard(String str, String str2) {
        try {
            byte[] bArrSaveHealthIdCardV2 = this.restClient.saveHealthIdCardV2(str, str2);
            this.bytes = bArrSaveHealthIdCardV2;
            displayHealthIdScreen(BitmapFactory.decodeByteArray(bArrSaveHealthIdCardV2, 0, bArrSaveHealthIdCardV2.length));
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            e.getMessage();
        }
    }

    public void displayHealthIdScreen(Bitmap bitmap) {
        this.bodyLayoutContainer.removeAllViews();
        this.screen = DISPLAY_HEALTH_ID_SCREEN;
        this.bodyLayoutContainer.addView(MyStaticComponents.generateTitleView(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID_GENERATED_SUCCESSFULLY)));
        ImageView imageView = MyStaticComponents.getImageView(this.context, -1, -1, null);
        imageView.setImageBitmap(bitmap);
        this.bodyLayoutContainer.addView(imageView);
        this.bodyLayoutContainer.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.HEALTH_ID_CARD_MESSAGE)));
        this.footerLayout.setVisibility(0);
        this.nextButton.setText(UtilBean.getMyLabel("Okay"));
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NDHMHealthIdCreationActivity.this.sendResponse();
            }
        });
        hideProcessDialog();
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

    private String determineGender(String str, Boolean bool) throws NumberFormatException {
        if (str == null) {
            return "NA";
        }
        if (!bool.booleanValue() && str.matches("\\d+(?:\\.\\d+)?")) {
            int i = Integer.parseInt(getIntent().getStringExtra("gender"));
            if (i != 1) {
                if (i != 2) {
                    return "Other";
                }
                return LabelConstants.FEMALE;
            }
            return LabelConstants.MALE;
        }
        if (!str.equalsIgnoreCase("M") && !str.equalsIgnoreCase("male")) {
            if (!str.equalsIgnoreCase("F") && !str.equalsIgnoreCase("female")) {
                return "Other";
            }
            return LabelConstants.FEMALE;
        }
        return LabelConstants.MALE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendResponse() {
        Intent intent = new Intent();
        intent.putExtra("healthIdNumber", this.healthIdNumber);
        intent.putExtra("healthId", this.healthId);
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
                    setCreateHealthIdViaAadhaarOTPScreen();
                    break;
                case "optionSelectionForHealthIdCreationScreen":
                    setResult(0);
                    finish();
                    break;
                case "createHealthIdViaAadhaarFingerPrintScreen":
                case "createHealthIdViaAadhaarOTPScreen":
                    setOptionSelectionForHealthIdCreationScreen();
                    break;
                case "displayHealthIdScreen":
                    sendResponse();
                    break;
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1000) {
            if (intent == null && i2 == 0) {
                setOptionSelectionForHealthIdCreationScreen();
                return;
            }
            if (intent == null || intent.getStringExtra("OfflineHealthIdBean") == null) {
                return;
            }
            Intent intent2 = new Intent();
            intent2.putExtra("healthIdNumber", intent.getStringExtra("OfflineHealthIdBean"));
            intent2.putExtra("isFromOffline", true);
            setResult(-1, intent2);
            finish();
            return;
        }
        if (i == 1001) {
            if (intent != null && intent.hasExtra("healthIdNumber") && intent.hasExtra(FieldNameConstants.TOKEN)) {
                this.token = intent.getStringExtra(FieldNameConstants.TOKEN);
                this.healthIdNumber = intent.getStringExtra("healthIdNumber");
                this.healthId = intent.getStringExtra("healthId");
                getAbhaCard(this.token, this.healthIdNumber);
            }
            if (intent == null || !intent.hasExtra("pid")) {
                return;
            }
            this.fingerPrintAuthPid = intent.getStringExtra("pid");
            showProcessDialog();
            createUsingAadhaarBiometricsV3();
            return;
        }
        if (i == 1002) {
            if (intent == null || intent.getStringExtra("OfflineHealthIdBean") == null) {
                return;
            }
            Intent intent3 = new Intent();
            intent3.putExtra("healthIdNumber", intent.getStringExtra("OfflineHealthIdBean"));
            intent3.putExtra("isFromOffline", true);
            setResult(-1, intent3);
            finish();
            return;
        }
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
                    String aadhaarValueFromMap = getAadhaarValueFromMap(this.aadhaarDetailsMap, "dob");
                    String aadhaarValueFromMap2 = getAadhaarValueFromMap(this.aadhaarDetailsMap, AadharScanUtil.YOB);
                    String aadhaarValueFromMap3 = getAadhaarValueFromMap(this.aadhaarDetailsMap, "name");
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    if (aadhaarValueFromMap == null) {
                        this.dateOfBirthTitle.setText(LabelConstants.YEAR_OF_BIRTH);
                        this.aadharScannerLayout.updateViewLayout(this.dateOfBirthTitle, layoutParams);
                    }
                    MaterialTextView materialTextView = this.scannerAadharName;
                    if (aadhaarValueFromMap3 == null) {
                        aadhaarValueFromMap3 = LabelConstants.N_A;
                    }
                    materialTextView.setText(aadhaarValueFromMap3);
                    MaterialTextView materialTextView2 = this.scannerDob;
                    if (aadhaarValueFromMap == null) {
                        aadhaarValueFromMap = aadhaarValueFromMap2 != null ? aadhaarValueFromMap2 : LabelConstants.N_A;
                    }
                    materialTextView2.setText(aadhaarValueFromMap);
                    this.scannerGender.setText(determineGender(getAadhaarValueFromMap(this.aadhaarDetailsMap, "gender"), false));
                    this.aadharScannerLayout.setVisibility(0);
                    return;
                }
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
            } catch (DataException e) {
                Log.e(TAG, null, e);
                SewaUtil.generateToast(this, LabelConstants.PLEASE_SCAN_AADHAAR);
            } catch (Exception e2) {
                System.out.println("In exception");
                Log.e(TAG, null, e2);
                SewaUtil.generateToast(this, LabelConstants.FAILED_TO_SCAN_QR);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.screen != null && Arrays.asList(CREATE_HEALTH_ID_VIA_AADHAAR_FINGERPRINT_SCREEN, OTP_VERIFICATION_SCREEN, DISPLAY_HEALTH_ID_SCREEN).contains(this.screen)) {
            MyAlertDialog myAlertDialog = new MyAlertDialog(this, LabelConstants.ARE_YOU_SURE_WANT_TO_CLOSE_HEALTH_ID_CREATION, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (view.getId() == -1) {
                        NDHMHealthIdCreationActivity.this.myAlertDialog.dismiss();
                        NDHMHealthIdCreationActivity.this.setResult(0);
                        NDHMHealthIdCreationActivity.this.finish();
                        return;
                    }
                    NDHMHealthIdCreationActivity.this.myAlertDialog.dismiss();
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
}
