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
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.databean.RbskVisionReferredMemberBean;
import com.argusoft.sewa.android.app.util.FormMetaDataUtil_;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.ActivityIntentBuilder;
import org.androidannotations.api.builder.PostActivityStarter;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class NPCBScreeningOA_ extends NPCBScreeningOA implements HasViews {
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA, com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
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
        this.techoAshaService = TechoAshaServiceImpl_.getInstance_(this);
        this.fhsService = SewaFhsServiceImpl_.getInstance_(this);
        this.formMetaDataUtil = FormMetaDataUtil_.getInstance_(this);
        this.sewaService = SewaServiceImpl_.getInstance_(this);
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(this);
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
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.1
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.showAlert(str, str2, onClickListener, i);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void setServiceSelectionScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.2
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.setServiceSelectionScreen();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void addSearchTextBoxOnline() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.3
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.addSearchTextBoxOnline();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void openRbskReferredScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.4
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.openRbskReferredScreen();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void setRbskReferredScreen(final int i) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.5
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.setRbskReferredScreen(i);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void setFortyPlusDetailsScreen() {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.6
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.setFortyPlusDetailsScreen();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void setMemberSelectionScreen(final Boolean bool, final int i) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.7
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.setMemberSelectionScreen(bool, i);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void showTechoIdResult(final String str) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.8
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.showTechoIdResult(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void onLoadMoreUi(final List<MemberDataBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.9
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.onLoadMoreUi(list);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void onLoadMoreRbskUi(final List<RbskVisionReferredMemberBean> list) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.10
            @Override // java.lang.Runnable
            public void run() {
                NPCBScreeningOA_.super.onLoadMoreRbskUi(list);
            }
        }, 0L);
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity
    public void doUpdate(final Boolean bool) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.11
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.doUpdate(bool);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void loadRbskReferredMembers(final String str, final int i) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.12
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.loadRbskReferredMembers(str, i);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void screenRbskMappedMember(final RbskVisionReferredMemberBean rbskVisionReferredMemberBean, final int i) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.13
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.screenRbskMappedMember(rbskVisionReferredMemberBean, i);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void retrieveMemberListFromOnline(final String str, final String str2, final int i) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.14
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.retrieveMemberListFromOnline(str, str2, i);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void awaitAndShowTechoId(final String str) {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.15
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.awaitAndShowTechoId(str);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.NPCBScreeningOA
    public void onLoadMoreBackground() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.NPCBScreeningOA_.16
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    NPCBScreeningOA_.super.onLoadMoreBackground();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class IntentBuilder_ extends ActivityIntentBuilder<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, (Class<?>) NPCBScreeningOA_.class);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) NPCBScreeningOA_.class);
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
