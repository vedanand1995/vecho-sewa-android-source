package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.DailyPresenceReportServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.LmsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.DailyPresenceReport;
import com.argusoft.sewa.android.app.model.LoginBean;
import com.argusoft.sewa.android.app.model.VersionBean;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class HomeScreenActivityOA_ extends HomeScreenActivityOA implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenActivityOA, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.moveToProductionService = MoveToProductionServiceImpl_.getInstance_(this);
        this.techoService = TechoServiceImpl_.getInstance_(this);
        this.lmsService = LmsServiceImpl_.getInstance_(this);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.dailyPresenceReportService = DailyPresenceReportServiceImpl_.getInstance_(this);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.loginBeanDao = dBConnection.getDao(LoginBean.class);
        } catch (SQLException e) {
            Log.e("HomeScreenActivityOA_", "Could not create DAO loginBeanDao", e);
        }
        try {
            this.versionDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e2) {
            Log.e("HomeScreenActivityOA_", "Could not create DAO versionDao", e2);
        }
        try {
            this.versionBeanDao = this.dBConnection_.getDao(VersionBean.class);
        } catch (SQLException e3) {
            Log.e("HomeScreenActivityOA_", "Could not create DAO versionBeanDao", e3);
        }
        try {
            this.dailyPresenceReportBeanDao = this.dBConnection_.getDao(DailyPresenceReport.class);
        } catch (SQLException e4) {
            Log.e("HomeScreenActivityOA_", "Could not create DAO dailyPresenceReportBeanDao", e4);
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

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void showProcessDialog() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.1
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenActivityOA_.super.showProcessDialog();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void showAlert(final String str, final String str2, final View.OnClickListener onClickListener, final int i) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.2
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenActivityOA_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void hideProcessDialog() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.3
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenActivityOA_.super.hideProcessDialog();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenActivityOA
    public void checkNetworkAvailability() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.4
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenActivityOA_.super.checkNetworkAvailability();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenActivityOA
    public void checkGps() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.5
            @Override // java.lang.Runnable
            public void run() {
                HomeScreenActivityOA_.super.checkGps();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void checkIsMobileTimeSyncedProperly() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.6
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HomeScreenActivityOA_.super.checkIsMobileTimeSyncedProperly();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void networkCallsForLanguageChange(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.7
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HomeScreenActivityOA_.super.networkCallsForLanguageChange(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HomeScreenMenuActivity
    public void doUpdate(final Boolean bool, final Runnable runnable) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HomeScreenActivityOA_.8
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HomeScreenActivityOA_.super.doUpdate(bool, runnable);
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
            super(context, (Class<?>) HomeScreenActivityOA_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) HomeScreenActivityOA_.class);
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
