package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.DailyNutritionLogServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.FamilyBean;
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
public final class DailyNutritionActivity_ extends DailyNutritionActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.DailyNutritionActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.dailyNutritionLogService = DailyNutritionLogServiceImpl_.getInstance_(this);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("DailyNutritionActivity_", "Could not create DAO memberBeanDao", e);
        }
        try {
            this.familyBeanDao = this.dBConnection_.getDao(FamilyBean.class);
        } catch (SQLException e2) {
            Log.e("DailyNutritionActivity_", "Could not create DAO familyBeanDao", e2);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                DailyNutritionActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DailyNutritionActivity
    public void checkIfAlreadyFilled() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                DailyNutritionActivity_.super.checkIfAlreadyFilled();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DailyNutritionActivity
    public void addAshaAreaSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                DailyNutritionActivity_.super.addAshaAreaSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.4
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DailyNutritionActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.DailyNutritionActivity
    public void setBodyDetail() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.5
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DailyNutritionActivity_.super.setBodyDetail();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.DailyNutritionActivity
    public void addChildData() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DailyNutritionActivity_.6
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DailyNutritionActivity_.super.addChildData();
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
            super(context, (Class<?>) DailyNutritionActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DailyNutritionActivity_.class);
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
