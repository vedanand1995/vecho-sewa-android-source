package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class HeadToToeScreeningActivity_ extends HeadToToeScreeningActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.healthInfrastructureService = HealthInfrastructureServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void addSearchScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.addSearchScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void createHealthInfraSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.createHealthInfraSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void showFamilyDetails() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.showFamilyDetails();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setMemberDetailsView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setMemberDetailsView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setChildBodyMeasurementScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setChildBodyMeasurementScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setApgarQuestionView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setApgarQuestionView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setCommonDefectsScreen1() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setCommonDefectsScreen1();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setCommonDefectsScreen2() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setCommonDefectsScreen2();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setScreeningConfirmationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setScreeningConfirmationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void addEventHandler(final RelativeLayout relativeLayout, final RelativeLayout relativeLayout2) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.addEventHandler(relativeLayout, relativeLayout2);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void viewDefectSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.12
            @Override // java.lang.Runnable
            public void run() throws IOException {
                HeadToToeScreeningActivity_.super.viewDefectSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void addDefectDescriptionPopUp(final LinearLayout linearLayout, final Bitmap bitmap, final Map<String, Object> map) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.addDefectDescriptionPopUp(linearLayout, bitmap, map);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setImage(final LinearLayout linearLayout, final Bitmap bitmap) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setImage(linearLayout, bitmap);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setDefaultImage(final LinearLayout linearLayout) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.15
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setDefaultImage(linearLayout);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setSelectedDefectsScreen(final List<LinkedHashMap<String, Object>> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.16
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setSelectedDefectsScreen(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void viewStabilizationInfoForDefects(final List<LinkedHashMap<String, Object>> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.17
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.viewStabilizationInfoForDefects(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void viewReferralConformationScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.18
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.viewReferralConformationScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void viewHealthInfrastructureScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.19
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.viewHealthInfrastructureScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setScreeningCompletionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.20
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.setScreeningCompletionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void generateToaster(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.21
            @Override // java.lang.Runnable
            public void run() {
                HeadToToeScreeningActivity_.super.generateToaster(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.22
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void retrieveAssignedHealthInfra() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.23
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.retrieveAssignedHealthInfra();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void getMemberDataBeanFromServer(final String str, final String str2, final String str3) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.24
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.getMemberDataBeanFromServer(str, str2, str3);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void getFamilyDataBeanFromServer(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.25
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.getFamilyDataBeanFromServer(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void setDefectSelectionScreen() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.26
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.setDefectSelectionScreen();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void getImageFromServer(final Map<String, Object> map, final LinearLayout linearLayout) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.27
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.getImageFromServer(map, linearLayout);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void retrieveSelectedDefectDetails() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.28
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.retrieveSelectedDefectDetails();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void getStabilizationInfoForDefects() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.29
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.getStabilizationInfoForDefects();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity
    public void storeScreeningDetails() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.HeadToToeScreeningActivity_.30
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    HeadToToeScreeningActivity_.super.storeScreeningDetails();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) HeadToToeScreeningActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) HeadToToeScreeningActivity_.class);
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
