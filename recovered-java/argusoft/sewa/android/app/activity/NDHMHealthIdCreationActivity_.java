package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NDHMHealthIdCreationActivity_ extends NDHMHealthIdCreationActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("NDHMHealthIdCreationAct", "Could not create DAO memberBeanDao", e);
        }
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setOptionSelectionForHealthIdCreationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setOptionSelectionForHealthIdCreationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setCreateHealthIdViaAadhaarOTPScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setCreateHealthIdViaAadhaarOTPScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setCreateHealthIdViaFingerprintScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setCreateHealthIdViaFingerprintScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setComponentForCreateHealthIdViaDemographics() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setComponentForCreateHealthIdViaDemographics();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void checkNetworkConnection() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.checkNetworkConnection();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setOTPVerificationScreen(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setOTPVerificationScreen(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setDisplayUpdateMobileNumber() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setDisplayUpdateMobileNumber();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void setOTPVerificationForUpdateMobile(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.setOTPVerificationForUpdateMobile(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void displayHealthIdScreen(final Bitmap bitmap) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                NDHMHealthIdCreationActivity_.super.displayHealthIdScreen(bitmap);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.11
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void validateToken() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.12
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.validateToken();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void showAbhaCard() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.13
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.showAbhaCard();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void generateOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.14
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.generateOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void resendOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.resendOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void generateHealthIdUsingAadhaarOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.generateHealthIdUsingAadhaarOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void generateUpdateMobileOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.17
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.generateUpdateMobileOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void resendUpdateMobileOtp() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.resendUpdateMobileOtp();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void verifyUpdateMobileOTP() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.verifyUpdateMobileOTP();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void createUsingAadhaarBiometricsV3() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.createUsingAadhaarBiometricsV3();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void downloadAbhaCard(final Long l) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.21
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.downloadAbhaCard(l);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity
    public void getAbhaCard(final String str, final String str2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NDHMHealthIdCreationActivity_.22
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NDHMHealthIdCreationActivity_.super.getAbhaCard(str, str2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        OpenHelperManager.releaseHelper();
        this.dBConnection_ = null;
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) NDHMHealthIdCreationActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) NDHMHealthIdCreationActivity_.class);
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
