package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.CampaignSessionServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.HealthInfraTypeLocationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.HealthInfrastructureServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.RoutineImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.UserServiceImpl_;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.NotificationMobDataBean;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.CampaignSessionBean;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class RoutineImmunizationActivity_ extends RoutineImmunizationActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.userService = UserServiceImpl_.getInstance_(this);
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.locationMasterService = LocationMasterServiceImpl_.getInstance_(this);
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.immunisationService = ImmunisationServiceImpl_.getInstance_(this);
        this.routineImmunisationService = RoutineImmunisationServiceImpl_.getInstance_(this);
        this.healthInfrastructureService = HealthInfrastructureServiceImpl_.getInstance_(this);
        this.healthInfraTypeLocationService = HealthInfraTypeLocationServiceImpl_.getInstance_(this);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.campaignSessionService = CampaignSessionServiceImpl_.getInstance_(this);
        this.notificationService = NotificationServiceImpl_.getInstance_(this);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("RoutineImmunizationActi", "Could not create DAO memberBeanDao", e);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void setCampaignSelectionScreen(final Boolean bool) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.setCampaignSelectionScreen(bool);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addMemberTypeScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addMemberTypeScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addNotificationSelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addNotificationSelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void setMemberSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.setMemberSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addSelectedServiceMemberList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addSelectedServiceMemberList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void setServiceListView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.setServiceListView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addChildrenListView(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addChildrenListView(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addPregnantWomenListView(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addPregnantWomenListView(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void addPncWomenListView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.addPncWomenListView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void onLoadMoreUiNotifications(final List<NotificationMobDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.onLoadMoreUiNotifications(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void onLoadMoreUiMember(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationActivity_.super.onLoadMoreUiMember(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.13
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void retrieveCampaignSessionsByLocation() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.14
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.retrieveCampaignSessionsByLocation();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void endSessionOnline(final CampaignSessionBean campaignSessionBean) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.endSessionOnline(campaignSessionBean);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void retrieveInitialNotificationsFromDB(final String str, final CharSequence charSequence, final long j, final long j2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.retrieveInitialNotificationsFromDB(str, charSequence, j, j2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void retrieveCountsForEachNotificationType(final Integer num) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.17
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.retrieveCountsForEachNotificationType(num);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void retrieveOnlineMember(final CharSequence charSequence, final Date date, final String str, final Long l, final Long l2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.retrieveOnlineMember(charSequence, date, str, l, l2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void retrieveMemberListByServiceType(final String str, final CharSequence charSequence, final String str2, final String str3, final Date date, final List<Integer> list) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.retrieveMemberListByServiceType(str, charSequence, str2, str3, date, list);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity
    public void callApi(final MemberDataBean memberDataBean, final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationActivity_.21
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationActivity_.super.callApi(memberDataBean, str);
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
            super(context, (Class<?>) RoutineImmunizationActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) RoutineImmunizationActivity_.class);
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
