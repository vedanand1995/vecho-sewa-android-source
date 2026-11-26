package com.argusoft.sewa.android.app.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.argusoft.sewa.android.app.core.impl.MalariaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaFhsServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoAshaServiceImpl_;
import com.argusoft.sewa.android.app.core.impl.TechoServiceImpl_;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
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
public final class MyPeopleAshaActivity_ extends MyPeopleAshaActivity implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.restClient = SewaServiceRestClientImpl_.getInstance_(this);
        this.malariaService = MalariaServiceImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.1
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void showMDAorSideEffectsScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.2
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.showMDAorSideEffectsScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setVisits() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setVisits();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void addGraph() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.addGraph();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void addAshaAreaSelectionSpinner() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.addAshaAreaSelectionSpinner();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setServiceSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setServiceSelectionScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void addSearchTextBoxForMember() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.7
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.addSearchTextBoxForMember();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void addSearchTextBoxForFamily() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.8
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.addSearchTextBoxForFamily();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setFamilySelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.9
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setFamilySelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void onLoadMoreUi(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.10
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void onLoadMoreUiFamilies(final List<FamilyDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.11
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.onLoadMoreUiFamilies(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setMalariaScreen(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.12
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setMalariaScreen(str);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setNpcbMemberListScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.13
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setNpcbMemberListScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setMemberSelectionScreen(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.14
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setMemberSelectionScreen(z);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setMotherDetailsScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.15
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setMotherDetailsScreen();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void showNotOnlineMessage() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.16
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.showNotOnlineMessage();
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setServicesProvidedScreenForRchRegister(final Map<String, List<LinkedHashMap<String, Object>>> map) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.17
            @Override // java.lang.Runnable
            public void run() {
                MyPeopleAshaActivity_.super.setServicesProvidedScreenForRchRegister(map);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.18
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void setBodyDetail() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.19
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.setBodyDetail();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void retrieveLCDCFamilyListFromDB(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.20
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.retrieveLCDCFamilyListFromDB(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void retrieveLCDC02FamilyListFromDB(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.21
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.retrieveLCDC02FamilyListFromDB(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void retrieveFilariaFamilyListFromDB(final CharSequence charSequence) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.22
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.retrieveFilariaFamilyListFromDB(charSequence);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void retrieveMemberListFromDB(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.23
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.retrieveMemberListFromDB(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.24
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void onLoadMoreFamilyBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.25
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.onLoadMoreFamilyBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity
    public void retrieveRCHServicesProvidedToMember() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.MyPeopleAshaActivity_.26
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    MyPeopleAshaActivity_.super.retrieveRCHServicesProvidedToMember();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) MyPeopleAshaActivity_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyPeopleAshaActivity_.class);
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
