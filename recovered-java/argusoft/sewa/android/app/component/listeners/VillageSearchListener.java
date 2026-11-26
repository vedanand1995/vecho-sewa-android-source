package com.argusoft.sewa.android.app.component.listeners;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.core.LocationMasterService;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.LocationMasterBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class VillageSearchListener {
    private static final long SEARCH_DEBOUNCE_MS = 500;
    private static final int VILLAGE_LEVEL = 6;
    private final Context context;
    private final LinearLayout linearLayout;
    private MaterialTextView noResultTextView;
    private final QueFormBean queFormBean;
    private ListView resultListView;
    private MaterialTextView selectedTextView;
    private List<LocationMasterBean> searchResults = new ArrayList();
    private Timer timer = new Timer();

    public VillageSearchListener(Context context, QueFormBean queFormBean, LinearLayout linearLayout) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.linearLayout = linearLayout;
    }

    public void init() {
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.VILLAGE_OR_ANGANVADI), -1, 50, -1);
        if (editText.getEditText() != null) {
            editText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.listeners.VillageSearchListener.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    VillageSearchListener.this.timer.cancel();
                    VillageSearchListener.this.timer = new Timer();
                    VillageSearchListener.this.timer.schedule(new C00691(charSequence), VillageSearchListener.SEARCH_DEBOUNCE_MS);
                }

                /* renamed from: com.argusoft.sewa.android.app.component.listeners.VillageSearchListener$1$1, reason: invalid class name and collision with other inner class name */
                class C00691 extends TimerTask {
                    final /* synthetic */ CharSequence val$s;

                    C00691(CharSequence charSequence) {
                        this.val$s = charSequence;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        Activity activity = (Activity) VillageSearchListener.this.context;
                        final CharSequence charSequence = this.val$s;
                        activity.runOnUiThread(new Runnable() { // from class: com.argusoft.sewa.android.app.component.listeners.VillageSearchListener$1$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m587x4f0f40b7(charSequence);
                            }
                        });
                    }

                    /* renamed from: lambda$run$0$com-argusoft-sewa-android-app-component-listeners-VillageSearchListener$1$1, reason: not valid java name */
                    /* synthetic */ void m587x4f0f40b7(CharSequence charSequence) {
                        if (charSequence == null || charSequence.length() <= 2) {
                            VillageSearchListener.this.clearResults();
                        } else {
                            VillageSearchListener.this.performSearch(charSequence.toString());
                        }
                    }
                }
            });
        }
        this.linearLayout.addView(editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSearch(String str) {
        this.queFormBean.setAnswer(null);
        this.linearLayout.removeView(this.selectedTextView);
        this.searchResults = SharedStructureData.locationMasterService.retrieveLocationMasterBeansBySearch(str, 6);
        showResults();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearResults() {
        this.queFormBean.setAnswer(null);
        this.searchResults.clear();
        this.linearLayout.removeView(this.resultListView);
        this.linearLayout.removeView(this.noResultTextView);
        this.linearLayout.removeView(this.selectedTextView);
    }

    private void showResults() {
        this.linearLayout.removeView(this.resultListView);
        this.linearLayout.removeView(this.noResultTextView);
        List<LocationMasterBean> list = this.searchResults;
        if (list == null || list.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, UtilBean.getMyLabel(LabelConstants.NO_VILLAGE_OR_ANGANVADI_FOUND_WITH_THE_GIVEN_NAME));
            this.noResultTextView = materialTextViewGenerateInstructionView;
            this.linearLayout.addView(materialTextViewGenerateInstructionView);
            return;
        }
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (LocationMasterBean locationMasterBean : this.searchResults) {
            LocationMasterService locationMasterService = SharedStructureData.locationMasterService;
            Long actualID = locationMasterBean.getActualID();
            actualID.longValue();
            String strRetrieveLocationHierarchyByLocationId = locationMasterService.retrieveLocationHierarchyByLocationId(actualID);
            arrayList.add(strRetrieveLocationHierarchyByLocationId);
            arrayList2.add(strRetrieveLocationHierarchyByLocationId);
        }
        ListView listView = MyStaticComponents.getListView(this.context, arrayList2, new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.VillageSearchListener$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m586xb9c308b(arrayList, adapterView, view, i, j);
            }
        }, -1);
        this.resultListView = listView;
        this.linearLayout.addView(listView);
    }

    /* renamed from: lambda$showResults$0$com-argusoft-sewa-android-app-component-listeners-VillageSearchListener, reason: not valid java name */
    /* synthetic */ void m586xb9c308b(List list, AdapterView adapterView, View view, int i, long j) {
        InputMethodManager inputMethodManager;
        this.queFormBean.setAnswer(String.valueOf(this.searchResults.get(i).getActualID()));
        if (view != null && (inputMethodManager = (InputMethodManager) this.context.getSystemService("input_method")) != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
        showSelected((String) list.get(i));
    }

    private void showSelected(String str) {
        this.linearLayout.removeView(this.selectedTextView);
        String str2 = UtilBean.getMyLabel(LabelConstants.SELECTED_VILLAGE_LABEL) + ": ";
        MaterialTextView materialTextViewGenerateAnswerView = MyStaticComponents.generateAnswerView(this.context, str2 + str);
        this.selectedTextView = materialTextViewGenerateAnswerView;
        if (materialTextViewGenerateAnswerView != null) {
            SpannableString spannableString = new SpannableString(str2 + str);
            spannableString.setSpan(new StyleSpan(1), 0, str2.length(), 33);
            this.selectedTextView.setText(spannableString);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.selectedTextView.getLayoutParams();
            layoutParams.topMargin = 30;
            this.selectedTextView.setLayoutParams(layoutParams);
        }
        this.linearLayout.addView(this.selectedTextView);
    }
}
