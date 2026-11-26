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
import com.argusoft.sewa.android.app.model.CampaignMasterBean;
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
public final class RoutineImmunizationAshaActivity_ extends RoutineImmunizationAshaActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
            Log.e("RoutineImmunizationAsha", "Could not create DAO memberBeanDao", e);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void setCampaignSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.setCampaignSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addMemberTypeScreen(final CampaignMasterBean campaignMasterBean) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addMemberTypeScreen(campaignMasterBean);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addNotificationDisplayScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addNotificationDisplayScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addDPTMembersScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addDPTMembersScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void setMemberSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.setMemberSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addSelectedServiceMemberList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addSelectedServiceMemberList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void setServiceListView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.setServiceListView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addChildrenListView(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addChildrenListView(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addPregnantWomenListView(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addPregnantWomenListView(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void addPncWomenListView() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.addPncWomenListView();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void onLoadMoreUi(final List<NotificationMobDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void onLoadMoreUiDPTMembers(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.onLoadMoreUiDPTMembers(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void showMemberDetailsToAshaUser(final MemberDataBean memberDataBean, final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                RoutineImmunizationAshaActivity_.super.showMemberDetailsToAshaUser(memberDataBean, str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void retrieveCampaignSessionsByLocation() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.retrieveCampaignSessionsByLocation();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void retrieveCountsForEachNotificationType(final List<Integer> list, final CampaignMasterBean campaignMasterBean) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.17
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.retrieveCountsForEachNotificationType(list, campaignMasterBean);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void retrieveInitialNotificationsFromDB(final String str, final CharSequence charSequence, final long j, final long j2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.retrieveInitialNotificationsFromDB(str, charSequence, j, j2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void retrieveMembersForDPTAlertFromDB(final String str, final CharSequence charSequence, final long j, final long j2) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.retrieveMembersForDPTAlertFromDB(str, charSequence, j, j2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void retrieveMemberCountForServices(final Integer num) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.retrieveMemberCountForServices(num);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.21
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity
    public void loadMoreDPTMembersList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.RoutineImmunizationAshaActivity_.22
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    RoutineImmunizationAshaActivity_.super.loadMoreDPTMembersList();
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
            super(context, (Class<?>) RoutineImmunizationAshaActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) RoutineImmunizationAshaActivity_.class);
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
