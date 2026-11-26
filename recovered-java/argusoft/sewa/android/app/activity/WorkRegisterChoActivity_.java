package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl_;
import java.util.LinkedHashMap;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class WorkRegisterChoActivity_ extends WorkRegisterChoActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.userService = UserServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void setAshaSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.setAshaSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void showNotOnlineMessage() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.showNotOnlineMessage();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void addDateSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.addDateSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void createTableLayout(final List<String> list, final List<LinkedHashMap<String, Object>> list2) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.createTableLayout(list, list2);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void addDataToTable(final TableLayout tableLayout, final List<LinkedHashMap<String, Object>> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                WorkRegisterChoActivity_.super.addDataToTable(tableLayout, list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.7
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    WorkRegisterChoActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity
    public void retrieveData(final boolean z, final int i, final int i2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.WorkRegisterChoActivity_.8
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    WorkRegisterChoActivity_.super.retrieveData(z, i, i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) WorkRegisterChoActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) WorkRegisterChoActivity_.class);
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
