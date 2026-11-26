package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.ImmunisationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.LocationMasterServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.MigrationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.NotificationServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.db.DBConnection;
import com.argusoft.sewa.android.app.model.MemberBean;
import com.argusoft.sewa.android.app.model.MigratedFamilyBean;
import com.argusoft.sewa.android.app.model.MigratedMembersBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.sql.SQLException;
import java.util.Date;
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
public final class MyPeopleActivity_ extends MyPeopleActivity implements HasViews {
    private DBConnection dBConnection_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.notificationService = NotificationServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.migrationService = MigrationServiceImpl_.getInstance_(this);
        this.immunisationService = ImmunisationServiceImpl_.getInstance_(this);
        this.locationMasterService = LocationMasterServiceImpl_.getInstance_(this);
        DBConnection dBConnection = (DBConnection) OpenHelperManager.getHelper(this, DBConnection.class);
        this.dBConnection_ = dBConnection;
        try {
            this.memberBeanDao = dBConnection.getDao(MemberBean.class);
        } catch (SQLException e) {
            Log.e("MyPeopleActivity_", "Could not create DAO memberBeanDao", e);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void showMDAorSideEffectsScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.showMDAorSideEffectsScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setManageFamilyMigrationsScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setManageFamilyMigrationsScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setVisits() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setVisits();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addGraph() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addGraph();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addVillageSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addVillageSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addAshaAreaSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addAshaAreaSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setServiceSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setServiceSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addSearchTextBoxOnline() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addSearchTextBoxOnline();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addSearchTextBox() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addSearchTextBox();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addSearchTextBoxForFamily() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addSearchTextBoxForFamily();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setFamilySelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setFamilySelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setFilariasisSideEffectsMemberSelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setFilariasisSideEffectsMemberSelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setMemberSelectionScreen(final String str, final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setMemberSelectionScreen(str, z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiMember(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.15
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiMember(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiChildren(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.16
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiChildren(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiFamilies(final List<FamilyDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.17
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiFamilies(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiFamiliesForFilaria(final List<FamilyDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.18
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiFamiliesForFilaria(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiMigratedMembers(final List<MigratedMembersBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.19
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiMigratedMembers(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiMigratedFamily(final List<MigratedFamilyBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.20
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiMigratedFamily(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void onLoadMoreUiFamiliesForLeprosy(final List<FamilyDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.21
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.onLoadMoreUiFamiliesForLeprosy(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addNewlyWedCoupleList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.22
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addNewlyWedCoupleList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addEligibleCoupleList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.23
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addEligibleCoupleList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addPregnantWomenList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.24
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addPregnantWomenList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addPncMothersList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.25
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addPncMothersList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addMentalHealthScreeningMemberList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.26
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addMentalHealthScreeningMemberList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addElderlyCareMemberList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.27
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addElderlyCareMemberList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addChildsBelow5YearsList() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.28
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addChildsBelow5YearsList();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addMemberListScreenForUpdateInfo() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.29
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addMemberListScreenForUpdateInfo();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void addFamilyListScreenForNewMember() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.30
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.addFamilyListScreenForNewMember();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setVisitSelectionScreen(final List<String> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.31
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setVisitSelectionScreen(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setMigratedFamilyScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.32
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setMigratedFamilyScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setMigratedMembersScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.33
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setMigratedMembersScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setMemberScreenForRchRegister() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.34
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setMemberScreenForRchRegister();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void showNotOnlineMessage() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.35
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.showNotOnlineMessage();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setServicesProvidedScreenForRchRegister(final Map<String, List<LinkedHashMap<String, Object>>> map, final Boolean bool) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.36
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setServicesProvidedScreenForRchRegister(map, bool);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setRadioButtonColorFromSyncStatus(final RadioButton radioButton, final MemberDataBean memberDataBean) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.37
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleActivity_.super.setRadioButtonColorFromSyncStatus(radioButton, memberDataBean);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.38
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void setBodyDetail() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.39
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.setBodyDetail();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void callApi(final MemberDataBean memberDataBean, final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.40
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.callApi(memberDataBean, str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveOnlineMember(final CharSequence charSequence, final Date date, final String str, final Long l) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.41
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveOnlineMember(charSequence, date, str, l);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveLCDCFamilyListFromDB(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.42
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveLCDCFamilyListFromDB(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveFilariaFamilyListFromDB(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.43
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveFilariaFamilyListFromDB(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveMemberListByServiceType(final String str, final CharSequence charSequence, final boolean z, final String str2, final Date date) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.44
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveMemberListByServiceType(str, charSequence, z, str2, date);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreEligibleCouples() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.45
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreEligibleCouples();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreNewlyWedCouples() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.46
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreNewlyWedCouples();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreMentalHealthScreeningMembers() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.47
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreMentalHealthScreeningMembers();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreElderlyCareMembers() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.48
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreElderlyCareMembers();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreSideEffectsMethod() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.49
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreSideEffectsMethod();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMorePregnantWomenList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.50
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMorePregnantWomenList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMorePNCMothersList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.51
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMorePNCMothersList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreRCH() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.52
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreRCH();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreMembers() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.53
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreMembers();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreChildrenList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.54
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreChildrenList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreDptBooster2ChildrenList() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.55
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreDptBooster2ChildrenList();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreFamilies() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.56
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreFamilies();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreFamiliesFilaria() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.57
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreFamiliesFilaria();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMigratedMembers() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.58
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMigratedMembers();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMigratedFamily() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.59
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMigratedFamily();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void loadMoreFamiliesLeprosy() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.60
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.loadMoreFamiliesLeprosy();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveMemberListForUpdateBySearch(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.61
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveMemberListForUpdateBySearch(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveMigratedFamilyList(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.62
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveMigratedFamilyList(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveMigratedMembersList(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.63
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveMigratedMembersList(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveMemberListForRchRegister(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.64
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveMemberListForRchRegister(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity
    public void retrieveRCHServicesProvidedToMember() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleActivity_.65
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleActivity_.super.retrieveRCHServicesProvidedToMember();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        OpenHelperManager.releaseHelper();
        this.dBConnection_ = null;
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) MyPeopleActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyPeopleActivity_.class);
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
