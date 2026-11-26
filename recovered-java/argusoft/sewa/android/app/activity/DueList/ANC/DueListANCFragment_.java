package com.argusoft.sewa.android.app.activity.DueList.ANC;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.argusoft.sewa.android.app.core.impl.SewaServiceRestClientImpl_;
import java.util.LinkedHashMap;
import java.util.List;
import org.androidannotations.api.BackgroundExecutor;
import org.androidannotations.api.UiThreadExecutor;
import org.androidannotations.api.builder.FragmentBuilder;
import org.androidannotations.api.view.HasViews;
import org.androidannotations.api.view.OnViewChangedNotifier;

/* loaded from: classes.dex */
public final class DueListANCFragment_ extends DueListANCFragment implements HasViews {
    public static final String ARG_TEXT_ARG = "argText";
    private View contentView_;
    private final OnViewChangedNotifier onViewChangedNotifier_ = new OnViewChangedNotifier();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        OnViewChangedNotifier onViewChangedNotifierReplaceNotifier = OnViewChangedNotifier.replaceNotifier(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        OnViewChangedNotifier.replaceNotifier(onViewChangedNotifierReplaceNotifier);
    }

    @Override // org.androidannotations.api.view.HasViews
    public <T extends View> T internalFindViewById(int i) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i);
    }

    @Override // com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
    }

    private void init_(Bundle bundle) {
        injectFragmentArguments_();
        this.sewaServiceRestClient = SewaServiceRestClientImpl_.getInstance_(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.notifyViewChanged(this);
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void injectFragmentArguments_() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("argText")) {
            return;
        }
        this.argText = arguments.getString("argText");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment
    public void updateListWithNextPage(final List<LinkedHashMap<String, Object>> list, final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment_.1
            @Override // java.lang.Runnable
            public void run() {
                DueListANCFragment_.super.updateListWithNextPage(list, z);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment
    public void runOnUiThreadSetLoading(final boolean z) {
        UiThreadExecutor.runTask("", new Runnable() { // from class: com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment_.2
            @Override // java.lang.Runnable
            public void run() {
                DueListANCFragment_.super.runOnUiThreadSetLoading(z);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment
    public void fetchNextPage() {
        BackgroundExecutor.execute(new BackgroundExecutor.Task("", 0L, "") { // from class: com.argusoft.sewa.android.app.activity.DueList.ANC.DueListANCFragment_.3
            @Override // org.androidannotations.api.BackgroundExecutor.Task
            public void execute() {
                try {
                    DueListANCFragment_.super.fetchNextPage();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    public static class FragmentBuilder_ extends FragmentBuilder<FragmentBuilder_, DueListANCFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.FragmentBuilder
        public DueListANCFragment build() {
            DueListANCFragment_ dueListANCFragment_ = new DueListANCFragment_();
            dueListANCFragment_.setArguments(this.args);
            return dueListANCFragment_;
        }

        public FragmentBuilder_ argText(String str) {
            this.args.putString("argText", str);
            return this;
        }
    }
}
