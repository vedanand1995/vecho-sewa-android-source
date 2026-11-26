package com.argusoft.sewa.android.app.activity;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyAlertDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.Date;
import java.util.Objects;

/* loaded from: classes.dex */
public class OtpVerificationActivity extends MenuActivity implements View.OnClickListener {
    private LinearLayout bodyLayoutContainer;
    private String contactNumber;
    private LinearLayout footer;
    private LinearLayout globalPanel;
    private MaterialTextView infoText;
    private Intent myIntent;
    private MaterialButton nextButton;
    private TextInputLayout otp;
    private MaterialButton resendOtp;
    SewaServiceRestClientImpl restClient;
    SewaServiceImpl sewaService;
    private MaterialButton submitOtp;
    private LinearLayout submitResendLayout;
    private MaterialTextView timer;
    private int timerCount;
    UserServiceImpl userService;
    private MaterialButton verify;
    private boolean isMobileVerified = false;
    private LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    private volatile boolean stopTimer = false;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        getWindow().setSoftInputMode(16);
        initView();
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.menu_refresh).setVisible(false);
        menu.findItem(R.id.menu_about).setVisible(false);
        menu.findItem(R.id.menu_home).setVisible(false);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.globalPanel;
        if (linearLayout != null) {
            setContentView(linearLayout);
        }
        setTitle(UtilBean.getTitleText(LabelConstants.OTP_VERIFICATION));
    }

    private void initView() {
        LinearLayout linearLayoutGenerateDynamicScreenTemplate = DynamicUtils.generateDynamicScreenTemplate(this, this);
        this.globalPanel = linearLayoutGenerateDynamicScreenTemplate;
        setSupportActionBar((Toolbar) linearLayoutGenerateDynamicScreenTemplate.findViewById(R.id.my_toolbar));
        this.bodyLayoutContainer = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_BODY_LAYOUT);
        MaterialButton materialButton = (MaterialButton) this.globalPanel.findViewById(DynamicUtils.ID_NEXT_BUTTON);
        this.nextButton = materialButton;
        materialButton.setText(UtilBean.getMyLabel("Next"));
        LinearLayout linearLayout = (LinearLayout) this.globalPanel.findViewById(DynamicUtils.ID_FOOTER);
        this.footer = linearLayout;
        linearLayout.setVisibility(8);
        if (isUserOnline()) {
            retrieveContactNumber();
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    protected void setTitle(String str) {
        super.setTitle(str);
        Toolbar toolbar = (Toolbar) findViewById(R.id.my_toolbar);
        if (toolbar != null) {
            toolbar.setNavigationIcon((Drawable) null);
        }
    }

    private boolean isUserOnline() {
        if (this.sewaService.isOnline()) {
            return true;
        }
        this.alertDialog = new MyAlertDialog(this.context, false, LabelConstants.NETWORK_CONNECTIVITY_ALERT, new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m459xc9a83d4d(view);
            }
        }, DynamicUtils.BUTTON_OK);
        return false;
    }

    /* renamed from: lambda$isUserOnline$0$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m459xc9a83d4d(View view) {
        this.alertDialog.dismiss();
        navigateToHomeScreen(false);
    }

    public void retrieveContactNumber() {
        showProcessDialog();
        try {
            this.contactNumber = this.restClient.getContactNumberForOtpVerification(Integer.valueOf(OtpVerificationActivity$$ExternalSyntheticBackport0.m(SewaTransformer.loginBean.getUserID().longValue())));
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
        String str = this.contactNumber;
        if (str == null) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m469xa8907b81();
                }
            });
            return;
        }
        try {
            this.restClient.sendOtpRequest(str);
        } catch (RestHttpException e2) {
            Log.e(getClass().getSimpleName(), e2.getMessage(), e2);
        }
        addBodyLayout();
    }

    /* renamed from: lambda$retrieveContactNumber$1$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m469xa8907b81() {
        hideProcessDialog();
        SewaUtil.generateToast(this.context, "Unable to get contact number. Please try after some time.");
        navigateToHomeScreen(false);
    }

    public void addBodyLayout() {
        generateUIComponents();
        this.bodyLayoutContainer.removeAllViews();
        MaterialTextView materialTextViewGenerateTitleView = MyStaticComponents.generateTitleView(this.context, LabelConstants.OTP_VERIFICATION);
        materialTextViewGenerateTitleView.setGravity(17);
        this.bodyLayoutContainer.addView(materialTextViewGenerateTitleView);
        StringBuilder sb = new StringBuilder("******");
        sb.append(this.contactNumber.substring(r1.length() - 4));
        String string = sb.toString();
        MaterialTextView materialTextViewGenerateSubTitleView = MyStaticComponents.generateSubTitleView(this.context, "Please enter One Time Password sent to your registered mobile number - " + string);
        this.infoText = materialTextViewGenerateSubTitleView;
        this.bodyLayoutContainer.addView(materialTextViewGenerateSubTitleView);
        this.bodyLayoutContainer.addView(this.timer);
        this.bodyLayoutContainer.addView(this.otp);
        this.bodyLayoutContainer.addView(this.submitOtp);
        this.resendOtp.setEnabled(false);
        this.bodyLayoutContainer.addView(this.resendOtp);
        updateTimerText();
        hideProcessDialog();
    }

    private void generateUIComponents() {
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, LabelConstants.ENTER_OTP, -1, 4, -1);
        this.otp = editText;
        if (editText.getEditText() != null) {
            this.otp.getEditText().setInputType(2);
        }
        MaterialButton customButton = MyStaticComponents.getCustomButton(this.context, "Verify OTP", -1, new LinearLayout.LayoutParams(-1, -2));
        this.submitOtp = customButton;
        customButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m457x111b60f4(view);
            }
        });
        MaterialButton customButton2 = MyStaticComponents.getCustomButton(this.context, "Resend OTP", -1, new LinearLayout.LayoutParams(-1, -2));
        this.resendOtp = customButton2;
        customButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m458x8f7c64d3(view);
            }
        });
        this.timer = MyStaticComponents.getListTitleView(this.context, "60");
    }

    /* renamed from: lambda$generateUIComponents$2$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m457x111b60f4(View view) {
        onSubmitOtpButtonClick();
    }

    /* renamed from: lambda$generateUIComponents$3$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m458x8f7c64d3(View view) {
        onResendOtpButtonClick();
    }

    public void onVerifyButtonClick() {
        showProcessDialog();
        try {
            this.restClient.checkPhoneNumberAlreadyExists(this.contactNumber, Integer.valueOf(SewaTransformer.loginBean.getUserID().toString()));
            try {
                this.restClient.sendOtpRequest((String) Objects.requireNonNull(this.contactNumber));
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
            }
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m468x8906b1cb();
                }
            });
        } catch (RestHttpException e2) {
            if (e2.getMessage() != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m466x8c44aa0d(e2);
                    }
                });
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m467xaa5adec();
                    }
                });
            }
            hideProcessDialog();
        }
    }

    /* renamed from: lambda$onVerifyButtonClick$4$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m466x8c44aa0d(RestHttpException restHttpException) {
        SewaUtil.generateToast(this.context, restHttpException.getMessage());
    }

    /* renamed from: lambda$onVerifyButtonClick$5$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m467xaa5adec() {
        SewaUtil.generateToast(this.context, LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
    }

    /* renamed from: lambda$onVerifyButtonClick$6$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m468x8906b1cb() {
        this.resendOtp.setEnabled(false);
        this.bodyLayoutContainer.removeView(this.verify);
        this.bodyLayoutContainer.addView(this.otp);
        this.bodyLayoutContainer.addView(this.submitResendLayout);
        updateTimerText();
        hideProcessDialog();
    }

    private void updateTimerText() {
        this.stopTimer = false;
        new Thread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                this.f$0.m475x894a251d();
            }
        }).start();
    }

    /* renamed from: lambda$updateTimerText$9$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m475x894a251d() throws InterruptedException {
        this.timerCount = 60;
        while (this.timerCount >= 0 && !this.stopTimer) {
            final int i = this.timerCount;
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m473x8c881d5f(i);
                }
            });
            if (this.timerCount == 0) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m474xae9213e();
                    }
                });
                return;
            } else {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
                this.timerCount--;
            }
        }
    }

    /* renamed from: lambda$updateTimerText$7$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m473x8c881d5f(int i) {
        this.timer.setText(i + "s");
    }

    /* renamed from: lambda$updateTimerText$8$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m474xae9213e() {
        this.timer.setText("");
        this.resendOtp.setEnabled(true);
    }

    public void onResendOtpButtonClick() {
        showProcessDialog();
        try {
            this.restClient.sendOtpRequest((String) Objects.requireNonNull(this.contactNumber));
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
        }
        runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m461xede6b17d();
            }
        });
    }

    /* renamed from: lambda$onResendOtpButtonClick$10$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m461xede6b17d() {
        this.submitOtp.setEnabled(true);
        this.resendOtp.setEnabled(false);
        updateTimerText();
        hideProcessDialog();
    }

    public void onSubmitOtpButtonClick() {
        if (((EditText) Objects.requireNonNull(this.otp.getEditText())).getText().toString().isEmpty()) {
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m462xc2b7a739();
                }
            });
            return;
        }
        showProcessDialog();
        try {
            if (Boolean.TRUE.equals(this.restClient.verifyOtp((String) Objects.requireNonNull(this.contactNumber), ((EditText) Objects.requireNonNull(this.otp.getEditText())).getText().toString()))) {
                this.isMobileVerified = true;
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m463x4118ab18();
                    }
                });
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m464xbf79aef7();
                    }
                });
            }
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m465x3ddab2d6(e);
                }
            });
        }
    }

    /* renamed from: lambda$onSubmitOtpButtonClick$11$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m462xc2b7a739() {
        SewaUtil.generateToast(this.context, "Please enter OTP");
    }

    /* renamed from: lambda$onSubmitOtpButtonClick$12$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m463x4118ab18() {
        SewaUtil.generateToast(this.context, "OTP Verified Successfully");
        this.bodyLayoutContainer.removeView(this.otp);
        this.bodyLayoutContainer.removeView(this.submitOtp);
        this.bodyLayoutContainer.removeView(this.resendOtp);
        submitData();
    }

    /* renamed from: lambda$onSubmitOtpButtonClick$13$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m464xbf79aef7() {
        this.isMobileVerified = false;
        SewaUtil.generateToast(this.context, "Invalid OTP");
        hideProcessDialog();
    }

    /* renamed from: lambda$onSubmitOtpButtonClick$14$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m465x3ddab2d6(RestHttpException restHttpException) {
        if (restHttpException.getMessage() != null && restHttpException.getMessage().contains("OTP is expired")) {
            this.stopTimer = true;
            SewaUtil.generateToast(this.context, restHttpException.getMessage());
            this.submitOtp.setEnabled(false);
            this.resendOtp.setEnabled(true);
            this.timer.setText("");
        } else {
            SewaUtil.generateToast(this.context, "Something went wrong. Please try again.");
        }
        hideProcessDialog();
    }

    private boolean checkValidation(boolean z) {
        if (!z || this.isMobileVerified) {
            return true;
        }
        SewaUtil.generateToast(this.context, "Please verify the mobile number through OTP");
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == this.nextButton.getId() && checkValidation(true)) {
            submitData();
        }
    }

    public void submitData() {
        showProcessDialog();
        try {
            this.restClient.updateOtpVerificationDate(Integer.valueOf(OtpVerificationActivity$$ExternalSyntheticBackport0.m(SewaTransformer.loginBean.getUserID().longValue())));
            LoginBean loginBeanFromDb = this.userService.getLoginBeanFromDb();
            loginBeanFromDb.setOtpVerificationDate(new Date());
            this.userService.createOrUpdate(loginBeanFromDb);
            SewaTransformer.loginBean = loginBeanFromDb;
            runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m472xa39975d3();
                }
            });
        } catch (RestHttpException e) {
            Log.e(getClass().getSimpleName(), e.getMessage(), e);
            if (e.getMessage() != null) {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m470xa6d76e15(e);
                    }
                });
            } else {
                runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m471x253871f4();
                    }
                });
            }
            hideProcessDialog();
        }
    }

    /* renamed from: lambda$submitData$15$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m470xa6d76e15(RestHttpException restHttpException) {
        SewaUtil.generateToast(this.context, restHttpException.getMessage());
    }

    /* renamed from: lambda$submitData$16$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m471x253871f4() {
        SewaUtil.generateToast(this.context, LabelConstants.ERROR_OCCURRED_SO_TRY_AGAIN);
    }

    /* renamed from: lambda$submitData$17$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m472xa39975d3() {
        hideProcessDialog();
        navigateToHomeScreen(false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.alertDialog = new MyAlertDialog(this.context, false, "Do you want to close OTP Verification?", new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.OtpVerificationActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m460x7184b892(view);
            }
        }, DynamicUtils.BUTTON_YES_NO);
        this.alertDialog.show();
    }

    /* renamed from: lambda$onBackPressed$18$com-argusoft-sewa-android-app-activity-OtpVerificationActivity, reason: not valid java name */
    /* synthetic */ void m460x7184b892(View view) {
        this.alertDialog.dismiss();
        if (view.getId() == -1) {
            Intent intent = new Intent(this, (Class<?>) LoginActivity_.class);
            this.myIntent = intent;
            intent.setFlags(335544320);
            startActivity(this.myIntent);
            finish();
        }
    }
}
