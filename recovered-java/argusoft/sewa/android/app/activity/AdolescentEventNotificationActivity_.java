package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SchoolServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class AdolescentEventNotificationActivity_ extends AdolescentEventNotificationActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.schoolService = SchoolServiceImpl_.getInstance_(this);
        this.notificationService = NotificationServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.sewaService = SewaServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addLastUpdateLabel() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addLastUpdateLabel();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addSearchTextBox() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addSearchTextBox();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addSchoolMemberSearchTextBox() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addSchoolMemberSearchTextBox();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addAdvancedSearchTextBox() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addAdvancedSearchTextBox();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addMembersOfParticularSchoolSelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addMembersOfParticularSchoolSelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addNotificationSelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addNotificationSelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addAdvancedSearchBasedOnRegionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addAdvancedSearchBasedOnRegionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void onLoadMoreUi(final List<MemberBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addVillageForStoringFamilySelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addVillageForStoringFamilySelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addAshaAreaForStoringFamilySelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addAshaAreaForStoringFamilySelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addVillageSelectionSpinnerForLocalData() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addVillageSelectionSpinnerForLocalData();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void addAshaAreaSelectionSpinnerForLocalData() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                AdolescentEventNotificationActivity_.super.addAshaAreaSelectionSpinnerForLocalData();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.14
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void setBodyDetailForStoringFamily() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.setBodyDetailForStoringFamily();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void setBodyDetailForFetchingLocalData() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.setBodyDetailForFetchingLocalData();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void retrieveMemberOfParticularSchool(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.17
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.retrieveMemberOfParticularSchool(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void retrieveInitialNotificationsFromDB(final String str, final CharSequence charSequence, final long j, final long j2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.retrieveInitialNotificationsFromDB(str, charSequence, j, j2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void retrieveMembersByAdvanceSearch(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.retrieveMembersByAdvanceSearch(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.AdolescentEventNotificationActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    AdolescentEventNotificationActivity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) AdolescentEventNotificationActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) AdolescentEventNotificationActivity_.class);
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
