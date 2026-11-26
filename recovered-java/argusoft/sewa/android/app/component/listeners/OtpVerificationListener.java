package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.restclient.RestHttpException;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class OtpVerificationListener implements View.OnClickListener {
    private Handler backgroundHandler;
    private Context context;
    private ImageView imageView;
    private MaterialTextView instruction;
    private MaterialTextView mobileEditText;
    private MaterialTextView note;
    private MaterialTextView noticeText;
    private TextInputLayout otpText;
    private MyProcessDialog processDialog;
    private QueFormBean queFormBean;
    private MaterialTextView scheme;
    private MaterialButton sendButton;
    private MaterialCheckBox smsScheme;
    private MaterialTextView timer;
    private LinearLayout verificationComponent;
    private MaterialButton verifyButton;
    private int[] counter = {30, 0};
    private Timer[] timerCounter = new Timer[1];
    private Handler uIHandler = new Handler(Looper.getMainLooper());

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.requestOtpBtn) {
            if (!SharedStructureData.sewaService.isOnline()) {
                SewaUtil.generateToast(this.context, LabelConstants.NETWORK_CONNECTIVITY_ALERT);
                return;
            } else {
                showProcessDialog();
                this.backgroundHandler.post(new AnonymousClass1());
                return;
            }
        }
        if (view.getId() == R.id.verifyOtpBtn) {
            if (!SharedStructureData.sewaService.isOnline()) {
                SewaUtil.generateToast(this.context, LabelConstants.NETWORK_CONNECTIVITY_ALERT);
                return;
            }
            if (this.otpText.getEditText() != null && this.otpText.getEditText().getText().toString().trim().isEmpty()) {
                SewaUtil.generateToast(this.context, LabelConstants.VERIFICATION_CODE_VALIDATION_FAILED);
                return;
            }
            showProcessDialog();
            this.sendButton.setEnabled(false);
            this.backgroundHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Boolean boolVerifyOtp = SharedStructureData.sewaServiceRestClient.verifyOtp(OtpVerificationListener.this.mobileEditText.getText().toString().trim(), OtpVerificationListener.this.otpText.getEditText().getText().toString().trim());
                        OtpVerificationListener.this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Boolean bool = boolVerifyOtp;
                                if (bool == null || !bool.booleanValue()) {
                                    if (OtpVerificationListener.this.counter[0] <= 0 && Boolean.FALSE.equals(SharedStructureData.isMobileVerificationBlocked)) {
                                        OtpVerificationListener.this.sendButton.setEnabled(true);
                                    }
                                    OtpVerificationListener.this.hideProcessDialog();
                                    OtpVerificationListener.this.otpText.getEditText().setText("");
                                    OtpVerificationListener.this.generateToast(LabelConstants.INVALID_VERIFICATION_CODE);
                                    return;
                                }
                                OtpVerificationListener.this.timerCounter[0].cancel();
                                OtpVerificationListener.this.timer.setText(LabelConstants.ZERO_SECONDS);
                                OtpVerificationListener.this.noticeText.setVisibility(0);
                                OtpVerificationListener.this.noticeText.setText(UtilBean.getMyLabel(LabelConstants.MOBILE_NUMBER_VERIFICATION_COMPLETED_SUCCESSFULLY));
                                OtpVerificationListener.this.verifyButton.setEnabled(false);
                                OtpVerificationListener.this.queFormBean.setAnswer("T/F");
                                OtpVerificationListener.this.smsScheme.setVisibility(0);
                                OtpVerificationListener.this.scheme.setVisibility(0);
                                OtpVerificationListener.this.instruction.setVisibility(0);
                                OtpVerificationListener.this.imageView.setVisibility(0);
                                SharedStructureData.isAnyMemberMobileVerificationDone = true;
                                OtpVerificationListener.this.hideProcessDialog();
                                OtpVerificationListener.this.generateToast(LabelConstants.VERIFICATION_CODE_VERIFIED_SUCCESSFULLY);
                            }
                        });
                    } catch (RestHttpException e) {
                        Log.e(getClass().getSimpleName(), null, e);
                        OtpVerificationListener.this.hideProcessDialog();
                        OtpVerificationListener.this.generateToast(e.getMessage());
                    }
                }
            });
            return;
        }
        if (view.getId() == R.id.resetBtn) {
            this.timerCounter[0].cancel();
            this.timerCounter[0] = new Timer();
            this.counter[1] = 0;
            this.sendButton.setEnabled(true);
            this.sendButton.setText(LabelConstants.REQUEST_VERIFICATION_CODE);
            this.note.setVisibility(8);
            this.timer.setVisibility(8);
            this.otpText.setVisibility(8);
            this.verifyButton.setVisibility(8);
            this.verifyButton.setEnabled(true);
            this.noticeText.setVisibility(8);
            this.smsScheme.setChecked(Boolean.FALSE.booleanValue());
            this.smsScheme.setVisibility(8);
            this.scheme.setVisibility(8);
            this.instruction.setVisibility(8);
            this.imageView.setVisibility(8);
        }
    }

    /* renamed from: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        /* renamed from: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener$1$1, reason: invalid class name and collision with other inner class name */
        class RunnableC00631 implements Runnable {
            RunnableC00631() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OtpVerificationListener.this.counter[0] = 30;
                int[] iArr = OtpVerificationListener.this.counter;
                iArr[1] = iArr[1] + 1;
                OtpVerificationListener.this.sendButton.setEnabled(false);
                OtpVerificationListener.this.note.setVisibility(0);
                OtpVerificationListener.this.timer.setVisibility(0);
                OtpVerificationListener.this.otpText.setVisibility(0);
                if (OtpVerificationListener.this.otpText.getEditText() != null) {
                    OtpVerificationListener.this.otpText.getEditText().setText("");
                }
                OtpVerificationListener.this.verifyButton.setVisibility(0);
                OtpVerificationListener.this.verifyButton.setEnabled(false);
                OtpVerificationListener.this.hideProcessDialog();
                OtpVerificationListener.this.timerCounter[0].cancel();
                OtpVerificationListener.this.timerCounter[0] = new Timer();
                OtpVerificationListener.this.timerCounter[0].schedule(new TimerTask() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.1.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (OtpVerificationListener.this.counter[0] > 0) {
                            OtpVerificationListener.this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.1.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    OtpVerificationListener.this.timer.setText(String.format(Locale.getDefault(), "%ds", Integer.valueOf(OtpVerificationListener.this.counter[0])));
                                    int[] iArr2 = OtpVerificationListener.this.counter;
                                    iArr2[0] = iArr2[0] - 1;
                                }
                            });
                        } else {
                            OtpVerificationListener.this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.1.1.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    OtpVerificationListener.this.timer.setText(LabelConstants.ZERO_SECONDS);
                                    if (OtpVerificationListener.this.counter[1] > 1) {
                                        OtpVerificationListener.this.noticeText.setText(UtilBean.getMyLabel(LabelConstants.YOU_HAVE_REACHED_MAXIMUM_NUMBER_OF_RETRIES));
                                        OtpVerificationListener.this.noticeText.setVisibility(0);
                                        SharedStructureData.isMobileVerificationBlocked = true;
                                        OtpVerificationListener.this.queFormBean.setAnswer("F");
                                        return;
                                    }
                                    OtpVerificationListener.this.sendButton.setText(UtilBean.getMyLabel(LabelConstants.REQUEST_VERIFICATION_CODE_AGAIN));
                                    OtpVerificationListener.this.sendButton.setEnabled(true);
                                }
                            });
                            cancel();
                        }
                    }
                }, 50L, 1500L);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SharedStructureData.sewaServiceRestClient.sendOtpRequest(OtpVerificationListener.this.mobileEditText.getText().toString().trim());
                OtpVerificationListener.this.uIHandler.post(new RunnableC00631());
            } catch (RestHttpException e) {
                Log.e(getClass().getSimpleName(), null, e);
                OtpVerificationListener.this.hideProcessDialog();
                OtpVerificationListener.this.generateToast(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateToast(final String str) {
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.3
            @Override // java.lang.Runnable
            public void run() {
                SewaUtil.generateToast(OtpVerificationListener.this.context, str);
            }
        });
    }

    public OtpVerificationListener(Context context, LinearLayout linearLayout, QueFormBean queFormBean) {
        this.context = context;
        this.verificationComponent = linearLayout;
        this.queFormBean = queFormBean;
        HandlerThread handlerThread = new HandlerThread("HandlerThread");
        handlerThread.start();
        this.backgroundHandler = new Handler(handlerThread.getLooper());
        init();
    }

    private void init() {
        MaterialButton materialButton = (MaterialButton) this.verificationComponent.findViewById(R.id.resetBtn);
        MaterialTextView materialTextView = (MaterialTextView) this.verificationComponent.findViewById(R.id.description);
        this.mobileEditText = (MaterialTextView) this.verificationComponent.findViewById(R.id.mobileText);
        this.sendButton = (MaterialButton) this.verificationComponent.findViewById(R.id.requestOtpBtn);
        MaterialTextView materialTextView2 = (MaterialTextView) this.verificationComponent.findViewById(R.id.message);
        this.note = materialTextView2;
        materialTextView2.setText(UtilBean.getMyLabel(materialTextView2.getText().toString()));
        this.timer = (MaterialTextView) this.verificationComponent.findViewById(R.id.timer);
        this.otpText = (TextInputLayout) this.verificationComponent.findViewById(R.id.otpText);
        this.verifyButton = (MaterialButton) this.verificationComponent.findViewById(R.id.verifyOtpBtn);
        this.noticeText = (MaterialTextView) this.verificationComponent.findViewById(R.id.notice);
        this.smsScheme = (MaterialCheckBox) this.verificationComponent.findViewById(R.id.smsScheme);
        MaterialTextView materialTextView3 = (MaterialTextView) this.verificationComponent.findViewById(R.id.scheme);
        this.scheme = materialTextView3;
        materialTextView3.setText(UtilBean.getMyLabel(materialTextView3.getText().toString()));
        MaterialTextView materialTextView4 = (MaterialTextView) this.verificationComponent.findViewById(R.id.instruction);
        this.instruction = materialTextView4;
        materialTextView4.setText(UtilBean.getMyLabel(materialTextView4.getText().toString()));
        this.imageView = (ImageView) this.verificationComponent.findViewById(R.id.image);
        materialTextView.setText(UtilBean.getMyLabel(LabelConstants.VERIFY_MOBILE_NUMBER));
        if (this.otpText.getEditText() != null) {
            this.otpText.getEditText().setInputType(2);
        }
        this.timerCounter[0] = new Timer();
        this.otpText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                OtpVerificationListener.this.verifyButton.setEnabled(Pattern.compile("^\\d{4}$").matcher(editable).matches());
            }
        });
        this.smsScheme.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    OtpVerificationListener.this.queFormBean.setAnswer("T/T");
                } else {
                    OtpVerificationListener.this.queFormBean.setAnswer("T/F");
                }
            }
        });
        materialButton.setOnClickListener(this);
        this.sendButton.setOnClickListener(this);
        this.verifyButton.setOnClickListener(this);
        String relatedpropertyname = this.queFormBean.getRelatedpropertyname();
        if (this.queFormBean.getLoopCounter() > 0) {
            relatedpropertyname = relatedpropertyname + this.queFormBean.getLoopCounter();
        }
        String str = SharedStructureData.relatedPropertyHashTable.get(relatedpropertyname);
        if (str != null) {
            this.mobileEditText.setText(str.replace("F/", ""));
            this.queFormBean.setAnswer(null);
        }
    }

    private void showProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.6
                @Override // java.lang.Runnable
                public void run() {
                    OtpVerificationListener.this.processDialog = new MyProcessDialog(OtpVerificationListener.this.context, GlobalTypes.MSG_PROCESSING);
                    OtpVerificationListener.this.processDialog.show();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProcessDialog() {
        MyProcessDialog myProcessDialog = this.processDialog;
        if (myProcessDialog == null || !myProcessDialog.isShowing()) {
            return;
        }
        this.uIHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.OtpVerificationListener.7
            @Override // java.lang.Runnable
            public void run() {
                OtpVerificationListener.this.processDialog.dismiss();
            }
        });
    }
}
