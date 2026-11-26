package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.DailyNutritionLogServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.HealthInfraTypeLocationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.MoveToProductionServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.NPCBServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.NcdScoreServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.NcdServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.RchHighRiskServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SchoolServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import com.google.gson.JsonSyntaxException;
import java.sql.SQLException;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class DynamicFormActivity_ extends DynamicFormActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws SQLException, JsonSyntaxException {
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
        this.sewaFhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.rchHighRiskService = RchHighRiskServiceImpl_.getInstance_(this);
        this.immunisationService = ImmunisationServiceImpl_.getInstance_(this);
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.techoService = TechoServiceImpl_.getInstance_(this);
        this.ncdScoreService = NcdScoreServiceImpl_.getInstance_(this);
        this.ncdService = NcdServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.moveToProductionService = MoveToProductionServiceImpl_.getInstance_(this);
        this.healthInfrastructureService = HealthInfrastructureServiceImpl_.getInstance_(this);
        this.locationMasterService = LocationMasterServiceImpl_.getInstance_(this);
        this.npcbService = NPCBServiceImpl_.getInstance_(this);
        this.schoolService = SchoolServiceImpl_.getInstance_(this);
        this.serviceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.dailyNutritionLogService = DailyNutritionLogServiceImpl_.getInstance_(this);
        this.healthInfraTypeLocationService = HealthInfraTypeLocationServiceImpl_.getInstance_(this);
        this.routineImmunisationService = RoutineImmunisationServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicFormActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void setContentView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                DynamicFormActivity_.super.setContentView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void checkForGpsEnabledForms() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                DynamicFormActivity_.super.checkForGpsEnabledForms();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void onFormFillFinish(final String str, final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                DynamicFormActivity_.super.onFormFillFinish(str, z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void showToaster(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                DynamicFormActivity_.super.showToaster(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.6
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DynamicFormActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void getLgdWiseCoordinates() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.7
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DynamicFormActivity_.super.getLgdWiseCoordinates();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void retrieveSheet() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.8
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DynamicFormActivity_.super.retrieveSheet();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.DynamicFormActivity
    public void storeOpdLabTestForm(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DynamicFormActivity_.9
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DynamicFormActivity_.super.storeOpdLabTestForm(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) DynamicFormActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DynamicFormActivity_.class);
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
