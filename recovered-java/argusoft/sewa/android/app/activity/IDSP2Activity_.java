package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class IDSP2Activity_ extends IDSP2Activity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.locationService = LocationMasterServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.1
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addVillageSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.2
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addVillageSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addAshaAreaSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.3
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addAshaAreaSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addDataNotSyncedScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.4
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addDataNotSyncedScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addNewFamily() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.5
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addNewFamily();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addFamilyList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.6
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addFamilyList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void setFamilySelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.7
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.setFamilySelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addOptionSelectionScreenForFamily() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.8
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.addOptionSelectionScreenForFamily();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void memberSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.9
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.memberSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void setFormSubmissionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.10
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.setFormSubmissionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void setScreenTOAskForNextMemberVerfication() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.11
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.setScreenTOAskForNextMemberVerfication();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void onLoadMoreUi(final List<FamilyDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.12
            @Override // java.lang.Runnable
            public void run() {
                IDSP2Activity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.13
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void getVillageList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.14
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.getVillageList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void retrieveFamilyListFromDB(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.retrieveFamilyListFromDB(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void addSelectedFamilyDetails() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.addSelectedFamilyDetails();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void storeIDSPForm() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.17
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.storeIDSPForm();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.IDSP2Activity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.IDSP2Activity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    IDSP2Activity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) IDSP2Activity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) IDSP2Activity_.class);
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
