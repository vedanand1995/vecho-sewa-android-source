package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.FamilyDataBean;
import com.argusoft.sewa.android.app.databean.MemberDataBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VbdsLarvaContainerComponent extends LinearLayout {
    private static final int COUNT_BOX_WIDTH_DP = 96;
    private static final int COUNT_FIELD_MAX_LENGTH = 6;
    private static final int ERROR_COLOR = -5242848;
    private static final int LABEL_COLOR = -11184811;
    private static final int RENDER_CHUNK_SIZE = 25;
    private static final long SEARCH_DEBOUNCE_MS = 400;
    private final Map<String, FamilyAnswer> answerMap;
    private final Integer areaId;
    private final Context context;
    private Map<String, MemberDataBean> headMembersMapWithFamilyIdAsKey;
    private final boolean isMandatory;
    private LinearLayout listContainer;
    private final QueFormBean queFormBean;
    private int renderGeneration;
    private final Handler renderHandler;
    private final Handler searchHandler;
    private MaterialTextView selectionSummaryView;
    private boolean suppressCheckChange;

    public VbdsLarvaContainerComponent(Context context, QueFormBean queFormBean) {
        super(context);
        this.answerMap = new LinkedHashMap();
        this.searchHandler = new Handler(Looper.getMainLooper());
        this.renderHandler = new Handler(Looper.getMainLooper());
        boolean z = false;
        this.renderGeneration = 0;
        this.suppressCheckChange = false;
        this.context = context;
        this.queFormBean = queFormBean;
        if (queFormBean.getIsmandatory() != null && queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
            z = true;
        }
        this.isMandatory = z;
        this.areaId = resolveAreaId();
        setOrientation(1);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        buildView();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAnswer();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            updateAnswer();
        }
    }

    private Integer resolveAreaId() {
        return resolveIntProperty("locationId");
    }

    private Integer resolveTotalContainerCount() {
        return resolveIntProperty(RelatedPropertyNameConstants.TOTAL_CONTAINER_COUNT);
    }

    private Integer resolveSelectionLimit() {
        Integer numResolveIntProperty = resolveIntProperty(RelatedPropertyNameConstants.NO_OF_HOUSES_FOUND_POSITIVE);
        if (numResolveIntProperty == null || numResolveIntProperty.intValue() <= 0) {
            return null;
        }
        return numResolveIntProperty;
    }

    private Integer resolveIntProperty(String str) {
        String str2 = SharedStructureData.relatedPropertyHashTable.get(str);
        if (str2 == null || str2.trim().isEmpty()) {
            return null;
        }
        try {
            return Integer.valueOf(str2.trim());
        } catch (NumberFormatException e) {
            Log.e(getClass().getSimpleName(), "Invalid value for " + str + ": " + str2, e);
            return null;
        }
    }

    private void buildView() {
        if (resolveSelectionLimit() != null) {
            MaterialTextView materialTextView = new MaterialTextView(this.context);
            this.selectionSummaryView = materialTextView;
            materialTextView.setTextColor(LABEL_COLOR);
            this.selectionSummaryView.setTextSize(2, 14.0f);
            this.selectionSummaryView.setTypeface(Typeface.create("sans-serif-medium", 0));
            this.selectionSummaryView.setPadding(0, 0, 0, dpToPx(this.context, 4.0f));
            addView(this.selectionSummaryView);
            updateSelectionSummary();
        }
        TextInputLayout editText = MyStaticComponents.getEditText(this.context, UtilBean.getMyLabel(LabelConstants.VBDS_LARVA_FAMILY_SEARCH_HINT), -1, 50, 1);
        if (editText.getEditText() != null) {
            editText.getEditText().setHint(UtilBean.getMyLabel(LabelConstants.VBDS_LARVA_FAMILY_SEARCH_HINT));
            editText.getEditText().addTextChangedListener(new AnonymousClass1());
        }
        addView(editText);
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        this.listContainer = linearLayout;
        addView(linearLayout);
        renderList(null);
    }

    /* renamed from: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent$1, reason: invalid class name */
    class AnonymousClass1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(final CharSequence charSequence, int i, int i2, int i3) {
            VbdsLarvaContainerComponent.this.searchHandler.removeCallbacksAndMessages(null);
            VbdsLarvaContainerComponent.this.searchHandler.postDelayed(new Runnable() { // from class: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m580x54266f36(charSequence);
                }
            }, VbdsLarvaContainerComponent.SEARCH_DEBOUNCE_MS);
        }

        /* renamed from: lambda$onTextChanged$0$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent$1, reason: not valid java name */
        /* synthetic */ void m580x54266f36(CharSequence charSequence) {
            VbdsLarvaContainerComponent.this.renderList(charSequence == null ? null : charSequence.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderList(String str) {
        this.renderHandler.removeCallbacksAndMessages(null);
        int i = this.renderGeneration + 1;
        this.renderGeneration = i;
        this.listContainer.removeAllViews();
        List<FamilyDataBean> listRetrieveFamilyDataBeansForVBDSByAshaArea = SharedStructureData.sewaFhsService.retrieveFamilyDataBeansForVBDSByAshaArea(this.areaId, str);
        if (listRetrieveFamilyDataBeansForVBDSByAshaArea == null || listRetrieveFamilyDataBeansForVBDSByAshaArea.isEmpty()) {
            this.listContainer.addView(MyStaticComponents.getMaterialTextView(this.context, UtilBean.getMyLabel(LabelConstants.NO_FAMILIES_FOUND), -1, R.style.CustomAnswerView, false));
            return;
        }
        ArrayList arrayList = new ArrayList(listRetrieveFamilyDataBeansForVBDSByAshaArea.size());
        Iterator<FamilyDataBean> it = listRetrieveFamilyDataBeansForVBDSByAshaArea.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFamilyId());
        }
        this.headMembersMapWithFamilyIdAsKey = SharedStructureData.sewaFhsService.retrieveHeadMemberDataBeansByFamilyId(arrayList);
        m579xf41c4b78(listRetrieveFamilyDataBeansForVBDSByAshaArea, 0, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: renderChunk, reason: merged with bridge method [inline-methods] */
    public void m579xf41c4b78(final List<FamilyDataBean> list, int i, final int i2) {
        if (i2 != this.renderGeneration) {
            return;
        }
        final int iMin = Math.min(i + 25, list.size());
        while (i < iMin) {
            this.listContainer.addView(buildFamilyRow(list.get(i)));
            i++;
        }
        if (iMin < list.size()) {
            this.renderHandler.post(new Runnable() { // from class: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m579xf41c4b78(list, iMin, i2);
                }
            });
        }
    }

    private View buildFamilyRow(FamilyDataBean familyDataBean) {
        final String familyId = familyDataBean.getFamilyId();
        Map<String, MemberDataBean> map = this.headMembersMapWithFamilyIdAsKey;
        MemberDataBean memberDataBean = map == null ? null : map.get(familyId);
        String memberFullName = memberDataBean != null ? UtilBean.getMemberFullName(memberDataBean) : null;
        final LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(5, 10, 5, 10);
        final MaterialCheckBox checkBox = MyStaticComponents.getCheckBox(this.context, "", -1, false);
        checkBox.setText(buildFamilyLabel(familyDataBean, memberFullName));
        linearLayout.addView(checkBox);
        final CountSection[] countSectionArr = new CountSection[1];
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent$$ExternalSyntheticLambda1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m578xce328d24(familyId, checkBox, countSectionArr, linearLayout, compoundButton, z);
            }
        });
        if (this.answerMap.containsKey(familyId)) {
            FamilyAnswer familyAnswer = this.answerMap.get(familyId);
            checkBox.setChecked(true);
            if (countSectionArr[0] != null) {
                if (familyAnswer.searchedContainers != null) {
                    countSectionArr[0].searchedField.setText(String.valueOf(familyAnswer.searchedContainers));
                }
                if (familyAnswer.positiveContainers != null) {
                    countSectionArr[0].positiveField.setText(String.valueOf(familyAnswer.positiveContainers));
                }
                validateRow(familyAnswer, countSectionArr[0].positiveField, countSectionArr[0].errorView);
            }
        }
        return linearLayout;
    }

    /* renamed from: lambda$buildFamilyRow$1$com-argusoft-sewa-android-app-component-VbdsLarvaContainerComponent, reason: not valid java name */
    /* synthetic */ void m578xce328d24(String str, MaterialCheckBox materialCheckBox, CountSection[] countSectionArr, LinearLayout linearLayout, CompoundButton compoundButton, boolean z) {
        if (this.suppressCheckChange) {
            return;
        }
        Integer numResolveSelectionLimit = resolveSelectionLimit();
        if (z && numResolveSelectionLimit != null && !this.answerMap.containsKey(str) && this.answerMap.size() >= numResolveSelectionLimit.intValue()) {
            this.suppressCheckChange = true;
            materialCheckBox.setChecked(false);
            this.suppressCheckChange = false;
            SewaUtil.generateToast(this.context, UtilBean.getMyLabel(LabelConstants.CANNOT_SELECT_MORE_FAMILIES_THAN_POSITIVE_HOUSES) + " (" + numResolveSelectionLimit + ")");
            return;
        }
        if (z) {
            if (countSectionArr[0] == null) {
                countSectionArr[0] = buildCountSection(linearLayout, str);
            }
            countSectionArr[0].container.setVisibility(0);
            if (!this.answerMap.containsKey(str)) {
                this.answerMap.put(str, new FamilyAnswer(str));
            }
        } else {
            CountSection countSection = countSectionArr[0];
            if (countSection != null) {
                countSection.container.setVisibility(8);
                countSectionArr[0].searchedField.setText("");
                countSectionArr[0].positiveField.setText("");
                clearFieldError(countSectionArr[0].positiveField, countSectionArr[0].errorView);
            }
            this.answerMap.remove(str);
        }
        updateAnswer();
    }

    private CountSection buildCountSection(LinearLayout linearLayout, final String str) {
        LinearLayout linearLayout2 = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout2.getLayoutParams();
        layoutParams.setMargins(60, 0, 0, 0);
        linearLayout2.setLayoutParams(layoutParams);
        EditText editTextCreateCountEditText = createCountEditText();
        linearLayout2.addView(buildCountRow(UtilBean.getMyLabel(LabelConstants.CONTAINERS_SEARCHED), editTextCreateCountEditText));
        final EditText editTextCreateCountEditText2 = createCountEditText();
        linearLayout2.addView(buildCountRow(UtilBean.getMyLabel(LabelConstants.POSITIVE_CONTAINERS_FOUND), editTextCreateCountEditText2));
        final MaterialTextView materialTextView = new MaterialTextView(this.context);
        materialTextView.setTextColor(ERROR_COLOR);
        materialTextView.setTextSize(2, 12.0f);
        materialTextView.setMinHeight(dpToPx(this.context, 18.0f));
        materialTextView.setPadding(0, dpToPx(this.context, 2.0f), 0, 0);
        materialTextView.setVisibility(4);
        linearLayout2.addView(materialTextView);
        linearLayout.addView(linearLayout2);
        editTextCreateCountEditText.addTextChangedListener(new SimpleTextWatcher() { // from class: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                FamilyAnswer familyAnswer = (FamilyAnswer) VbdsLarvaContainerComponent.this.answerMap.get(str);
                if (familyAnswer == null) {
                    return;
                }
                familyAnswer.searchedContainers = VbdsLarvaContainerComponent.this.parseCount(charSequence);
                VbdsLarvaContainerComponent.this.validateRow(familyAnswer, editTextCreateCountEditText2, materialTextView);
                VbdsLarvaContainerComponent.this.updateAnswer();
            }
        });
        editTextCreateCountEditText2.addTextChangedListener(new SimpleTextWatcher() { // from class: com.argusoft.sewa.android.app.component.VbdsLarvaContainerComponent.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null);
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                FamilyAnswer familyAnswer = (FamilyAnswer) VbdsLarvaContainerComponent.this.answerMap.get(str);
                if (familyAnswer == null) {
                    return;
                }
                familyAnswer.positiveContainers = VbdsLarvaContainerComponent.this.parseCount(charSequence);
                VbdsLarvaContainerComponent.this.validateRow(familyAnswer, editTextCreateCountEditText2, materialTextView);
                VbdsLarvaContainerComponent.this.updateAnswer();
            }
        });
        return new CountSection(linearLayout2, editTextCreateCountEditText, editTextCreateCountEditText2, materialTextView);
    }

    private EditText createCountEditText() {
        EditText editText = new EditText(this.context);
        editText.setInputType(2);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        editText.setSingleLine(true);
        editText.setGravity(1);
        editText.setTextSize(2, 15.0f);
        editText.setMinHeight(0);
        editText.setMinimumHeight(0);
        editText.setPadding(dpToPx(this.context, 6.0f), dpToPx(this.context, 4.0f), dpToPx(this.context, 6.0f), dpToPx(this.context, 8.0f));
        return editText;
    }

    private LinearLayout buildCountRow(String str, EditText editText) {
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setBaselineAligned(true);
        linearLayout.setPadding(0, dpToPx(this.context, 6.0f), dpToPx(this.context, 4.0f), dpToPx(this.context, 6.0f));
        MaterialTextView materialTextView = new MaterialTextView(this.context);
        materialTextView.setText(str);
        materialTextView.setTextColor(LABEL_COLOR);
        materialTextView.setTextSize(2, 14.0f);
        materialTextView.setTypeface(Typeface.create("sans-serif-medium", 0));
        materialTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(materialTextView);
        editText.setLayoutParams(new LinearLayout.LayoutParams(dpToPx(this.context, 96.0f), -2));
        linearLayout.addView(editText);
        return linearLayout;
    }

    private CharSequence buildFamilyLabel(FamilyDataBean familyDataBean, String str) {
        String familyId = familyDataBean.getFamilyId();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (familyId != null) {
            spannableStringBuilder.append((CharSequence) familyId);
            spannableStringBuilder.setSpan(new StyleSpan(1), 0, familyId.length(), 33);
        }
        if (str != null && !str.trim().isEmpty()) {
            spannableStringBuilder.append((CharSequence) "  —  ").append((CharSequence) str.trim());
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateRow(FamilyAnswer familyAnswer, EditText editText, MaterialTextView materialTextView) {
        if (familyAnswer.searchedContainers != null && familyAnswer.positiveContainers != null && familyAnswer.positiveContainers.intValue() > familyAnswer.searchedContainers.intValue()) {
            materialTextView.setText(UtilBean.getMyLabel(LabelConstants.POSITIVE_CONTAINERS_CANNOT_EXCEED_SEARCHED));
            materialTextView.setVisibility(0);
            editText.setBackgroundTintList(ColorStateList.valueOf(ERROR_COLOR));
            return;
        }
        clearFieldError(editText, materialTextView);
    }

    private void clearFieldError(EditText editText, MaterialTextView materialTextView) {
        materialTextView.setText("");
        materialTextView.setVisibility(4);
        editText.setBackgroundTintList(null);
    }

    private void updateSelectionSummary() {
        if (this.selectionSummaryView == null) {
            return;
        }
        Integer numResolveSelectionLimit = resolveSelectionLimit();
        if (numResolveSelectionLimit == null) {
            this.selectionSummaryView.setVisibility(8);
            return;
        }
        this.selectionSummaryView.setVisibility(0);
        this.selectionSummaryView.setText(UtilBean.getMyLabel(LabelConstants.SELECT_FAMILIES_FOR_POSITIVE_HOUSES) + " (" + this.answerMap.size() + "/" + numResolveSelectionLimit + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnswer() {
        updateSelectionSummary();
        if (this.answerMap.isEmpty()) {
            this.queFormBean.setAnswer(null);
            if (this.isMandatory) {
                this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.SELECT_AT_LEAST_ONE_FAMILY));
                return;
            }
            return;
        }
        int iIntValue = 0;
        for (FamilyAnswer familyAnswer : this.answerMap.values()) {
            if (familyAnswer.searchedContainers == null || familyAnswer.positiveContainers == null) {
                this.queFormBean.setAnswer(null);
                this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.ENTER_CONTAINER_COUNTS_FOR_SELECTED_FAMILIES));
                return;
            } else {
                if (familyAnswer.positiveContainers.intValue() > familyAnswer.searchedContainers.intValue()) {
                    this.queFormBean.setAnswer(null);
                    this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.POSITIVE_CONTAINERS_CANNOT_EXCEED_SEARCHED));
                    return;
                }
                iIntValue += familyAnswer.searchedContainers.intValue();
            }
        }
        Integer numResolveSelectionLimit = resolveSelectionLimit();
        if (numResolveSelectionLimit != null && this.answerMap.size() != numResolveSelectionLimit.intValue()) {
            this.queFormBean.setAnswer(null);
            this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.SELECT_FAMILIES_EQUAL_TO_POSITIVE_HOUSES) + " (" + this.answerMap.size() + "/" + numResolveSelectionLimit + ")");
            return;
        }
        Integer numResolveTotalContainerCount = resolveTotalContainerCount();
        if (numResolveTotalContainerCount != null && iIntValue > numResolveTotalContainerCount.intValue()) {
            this.queFormBean.setAnswer(null);
            this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.TOTAL_CONTAINERS_SEARCHED_EXCEEDS_CHECKED) + " (" + iIntValue + "/" + numResolveTotalContainerCount + ")");
            return;
        }
        String json = new Gson().toJson(new ArrayList(this.answerMap.values()));
        this.queFormBean.setAnswer(json);
        Log.i(getClass().getSimpleName(), "VBDS larva answer JSON: " + json);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Integer parseCount(CharSequence charSequence) {
        if (charSequence != null && !TextUtils.isEmpty(charSequence.toString().trim())) {
            try {
                return Integer.valueOf(charSequence.toString().trim());
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    private static int dpToPx(Context context, float f) {
        return Math.round(f * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class CountSection {
        final LinearLayout container;
        final MaterialTextView errorView;
        final EditText positiveField;
        final EditText searchedField;

        CountSection(LinearLayout linearLayout, EditText editText, EditText editText2, MaterialTextView materialTextView) {
            this.container = linearLayout;
            this.searchedField = editText;
            this.positiveField = editText2;
            this.errorView = materialTextView;
        }
    }

    private static abstract class SimpleTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private SimpleTextWatcher() {
        }

        /* synthetic */ SimpleTextWatcher(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private static class FamilyAnswer {
        final String familyId;
        Integer positiveContainers;
        Integer searchedContainers;

        FamilyAnswer(String str) {
            this.familyId = str;
        }
    }
}
