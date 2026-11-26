package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class MamtaDayActivity_ extends MamtaDayActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.notificationService = NotificationServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("MamtaDayActivity_", "Could not create DAO memberBeanDao", e);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.onBackPressed();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void setMemberSelectionScreen(final String str, final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.setMemberSelectionScreen(str, z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void setVisitSelectionScreen(final List<String> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.setVisitSelectionScreen(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void addVillageSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.addVillageSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void addAshaAreaSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.addAshaAreaSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void onLoadMoreUi(final List<NotificationMobDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                MamtaDayActivity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.8
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MamtaDayActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void retrieveMemberListByServiceType(final String str, final CharSequence charSequence, final boolean z) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.9
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MamtaDayActivity_.super.retrieveMemberListByServiceType(str, charSequence, z);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MamtaDayActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MamtaDayActivity_.10
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MamtaDayActivity_.super.onLoadMoreBackground();
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
            super(context, (Class<?>) MamtaDayActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MamtaDayActivity_.class);
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
