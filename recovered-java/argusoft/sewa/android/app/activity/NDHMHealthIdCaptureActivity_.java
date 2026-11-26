package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.StateResponse;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NDHMHealthIdCaptureActivity_ extends NDHMHealthIdCaptureActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
    }

    @Override // org.androidannotations.api.view.HasViews
    public <T extends View> T internalFindViewById(int i) {
        return (T) findViewById(i);
    }

    private void init_(Bundle bundle) {
        this.techoService = TechoServiceImpl_.getInstance_(this);
        this.serviceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        this.onViewChangedNotifier_.notifyViewChanged(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.notifyViewChanged(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.notifyViewChanged(this);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void showAlert(final String str, final String str2, final View.OnClickListener onClickListener, final int i) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setHealthIdVerificationMethodSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setHealthIdVerificationMethodSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAbhaNumberVerificationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAbhaNumberVerificationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAbhaAddressVerificationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAbhaAddressVerificationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setMobileVerificationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setMobileVerificationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAadhaarNumberCollectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAadhaarNumberCollectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void createMobileOtpValidationScreenForSearchABHA(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.createMobileOtpValidationScreenForSearchABHA(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void createMobileOtpValidationScreen(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.createMobileOtpValidationScreen(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAbhaNumberSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAbhaNumberSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setConfirmationScreen(final String str, final String str2) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setConfirmationScreen(str, str2);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void displayHealthIdScreenV3(final Bitmap bitmap) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.displayHealthIdScreenV3(bitmap);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setHealthIdVerificationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setHealthIdVerificationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAuthModeSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAuthModeSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void createOtpValidationScreen(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.createOtpValidationScreen(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setAadhaarOtpVerificationScreen(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.15
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setAadhaarOtpVerificationScreen(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setConfirmationScreenV3() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.16
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setConfirmationScreenV3();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void setStateSelectionScreen(final StateResponse[] stateResponseArr) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.17
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.setStateSelectionScreen(stateResponseArr);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void displayHealthIdScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.18
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCaptureActivity_.super.displayHealthIdScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateAuthModeAndGenerateOtpV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateAuthModeAndGenerateOtpV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void generateMobileOtp() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.21
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.generateMobileOtp();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void searchABHAViaMobile() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.22
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.searchABHAViaMobile();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void linkHealthIdV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.23
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.linkHealthIdV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendMobileOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.24
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendMobileOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendMobileOTPV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.25
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendMobileOTPV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateMobileOtpForSearchABHA() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.26
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateMobileOtpForSearchABHA();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendMobileOTPForSearchABHA() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.27
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendMobileOTPForSearchABHA();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateMobileOtp() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.28
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateMobileOtp();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void generateAadhaarBioOtpForSearchABHA() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.29
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.generateAadhaarBioOtpForSearchABHA();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void generateMobileOtpForSearchABHA() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.30
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.generateMobileOtpForSearchABHA();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void loginWithMobileVerifiedAbha() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.31
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.loginWithMobileVerifiedAbha();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void getAccountDetails() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.32
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.getAccountDetails();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void fetchAuthMode() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.33
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.fetchAuthMode();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void fetchAuthModeForAbhaAddress() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.34
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.fetchAuthModeForAbhaAddress();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateAuthMode() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.35
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateAuthMode();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateAadhaarAuthModeV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.36
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateAadhaarAuthModeV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateMobileAuthModeV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.37
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateMobileAuthModeV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void generateAadhaarOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.38
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.generateAadhaarOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void verifyAadhaarOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.39
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.verifyAadhaarOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendAadhaarOtp() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.40
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendAadhaarOtp();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void getAccountDetailsV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.41
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.getAccountDetailsV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.42
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void resendOTPV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.43
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.resendOTPV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void validateOtpAndGenerateToken() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.44
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.validateOtpAndGenerateToken();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void getStateList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.45
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.getStateList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void linkHealthId(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.46
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.linkHealthId(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void verifyBiometricUsingAadhaar() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.47
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.verifyBiometricUsingAadhaar();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void verifyBiometricUsingMobile() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.48
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.verifyBiometricUsingMobile();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void verifyBiometricUsingABHAAddress() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.49
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.verifyBiometricUsingABHAAddress();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity
    public void verifyBiometricUsingABHANumber() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCaptureActivity_.50
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCaptureActivity_.super.verifyBiometricUsingABHANumber();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) NDHMHealthIdCaptureActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) NDHMHealthIdCaptureActivity_.class);
            this.fragmentSupport_ = fragment;
        }

        @Override // org.androidannotations.api.builder.ActivityIntentBuilder, org.androidannotations.api.builder.ActivityStarter
        public PostActivityStarter startForResult(int i) {
            Fragment fragment = this.fragmentSupport_;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i);
            } else if (this.context instanceof Activity) {
                ActivityCompat.startActivityForResult((Activity) this.context, this.intent, i, this.lastOptions);
            } else {
                this.context.startActivity(this.intent);
            }
            return new PostActivityStarter(this.context);
        }
    }
}
