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
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class LabTestActivity_ extends LabTestActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.locationMasterService = LocationMasterServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                LabTestActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void setMemberSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                LabTestActivity_.super.setMemberSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void onLoadMoreUi(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                LabTestActivity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void showRetryDialog(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                LabTestActivity_.super.showRetryDialog(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void showCustomDialog() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                LabTestActivity_.super.showCustomDialog();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.6
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    LabTestActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void retrieveMembers(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.7
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    LabTestActivity_.super.retrieveMembers(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.8
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    LabTestActivity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.LabTestActivity
    public void storeReferredLabTestEntries(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.LabTestActivity_.9
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    LabTestActivity_.super.storeReferredLabTestEntries(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) LabTestActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) LabTestActivity_.class);
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
