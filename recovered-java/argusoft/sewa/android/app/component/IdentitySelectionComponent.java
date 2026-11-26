package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.SingleSelectComponent;
import com.argusoft.sewa.android.app.constants.FhsConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.listeners.IdentityCheckBoxListener;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.IdentityCardUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public class IdentitySelectionComponent extends LinearLayout {
    private CheckBox aadhaarConsentCheckbox;
    private final Context context;
    private String idNumberAnswer;
    private TextInputLayout idNumberEditText;
    private String idNumberRp;
    private String idTypeAnswer;
    private SingleSelectComponent idTypeComponent;
    private String idTypeRp;
    private boolean isListenerEnabled;
    private String isQuestionMandatory;
    private LinearLayout mainLayoutRef;
    private String memberType;
    private final QueFormBean queFormBean;
    private SingleSelectComponent relationSingleSelectComponent;
    private String relationWithIdHolderAnswer;
    private String relationWithIdHolderRp;

    public IdentitySelectionComponent(Context context, QueFormBean queFormBean) {
        super(context);
        this.isListenerEnabled = false;
        this.context = context;
        this.queFormBean = queFormBean;
        setBasicData();
        setMainLayout();
    }

    public void resetComponent() {
        removeAllViews();
        setBasicData();
        setMainLayout();
    }

    private void setBasicData() {
        String datamap = this.queFormBean.getDatamap();
        this.isQuestionMandatory = this.queFormBean.getIsmandatory().equalsIgnoreCase("T") ? "T" : "F";
        if (datamap == null || datamap.isEmpty()) {
            return;
        }
        String[] strArrSplit = datamap.split(GlobalTypes.KEY_VALUE_SEPARATOR);
        if (strArrSplit.length == 4) {
            this.relationWithIdHolderRp = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[0]);
            this.idTypeRp = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[1]);
            this.idNumberRp = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[2]);
            this.memberType = SharedStructureData.relatedPropertyHashTable.get(strArrSplit[3]);
        }
    }

    private void setMainLayout() {
        String str;
        String str2;
        String str3;
        LinearLayout linearLayout = MyStaticComponents.getLinearLayout(this.context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        this.mainLayoutRef = linearLayout;
        if (this.isQuestionMandatory.equalsIgnoreCase("F") && this.relationSingleSelectComponent == null && (str = this.relationWithIdHolderRp) != null && !str.isEmpty() && (str2 = this.idTypeRp) != null && !str2.isEmpty() && (str3 = this.idNumberRp) != null && !str3.isEmpty()) {
            linearLayout.addView(MyStaticComponents.generateInstructionView(this.context, UtilBean.formatKey(this.idTypeRp) + " of " + UtilBean.formatKey(this.relationWithIdHolderRp) + " was collected during the previous visit for this child."));
            this.relationWithIdHolderRp = null;
            this.idTypeRp = null;
            this.idNumberRp = null;
        }
        if (this.queFormBean.getIsmandatory() != null && this.queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
            linearLayout.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.ID_HOLDER_RELATION_LABEL));
        } else {
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ID_HOLDER_RELATION_LABEL));
        }
        if (this.relationSingleSelectComponent == null) {
            String str4 = this.memberType;
            if (str4 != null && str4.equalsIgnoreCase("C")) {
                this.relationSingleSelectComponent = new SingleSelectComponent(this.context, FhsConstants.getIdHolderRelationForChildOptions(), null);
            } else {
                String str5 = this.memberType;
                if (str5 != null && str5.equalsIgnoreCase("M")) {
                    this.relationSingleSelectComponent = new SingleSelectComponent(this.context, FhsConstants.getIdHolderRelationForMotherOptions(), null);
                } else {
                    this.relationSingleSelectComponent = new SingleSelectComponent(this.context, FhsConstants.getIdHolderRelationForOtherOptions(), null);
                }
            }
            this.relationSingleSelectComponent.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.argusoft.sewa.android.app.component.IdentitySelectionComponent.1
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    IdentitySelectionComponent identitySelectionComponent = IdentitySelectionComponent.this;
                    identitySelectionComponent.relationWithIdHolderAnswer = identitySelectionComponent.relationSingleSelectComponent.getAnswerString();
                    IdentitySelectionComponent.this.setAnswer();
                }
            });
        }
        linearLayout.addView(this.relationSingleSelectComponent);
        if (this.queFormBean.getIsmandatory() != null && this.queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
            linearLayout.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.ID_TYPE_LABEL));
        } else {
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ID_TYPE_LABEL));
        }
        if (this.idTypeComponent == null) {
            SingleSelectComponent singleSelectComponent = new SingleSelectComponent(this.context, FhsConstants.getIdTypeOptions(), null);
            this.idTypeComponent = singleSelectComponent;
            singleSelectComponent.setOnItemSelectedListener(new AnonymousClass2());
        }
        linearLayout.addView(this.idTypeComponent);
        if (this.queFormBean.getIsmandatory() != null && this.queFormBean.getIsmandatory().equalsIgnoreCase("T")) {
            linearLayout.addView(MyStaticComponents.generateMandatoryQuestionView(null, null, this.context, LabelConstants.ID_NUMBER_LABEL));
        } else {
            linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.ID_NUMBER_LABEL));
        }
        if (this.idNumberEditText == null) {
            this.idNumberEditText = MyStaticComponents.getEditText(this.context, LabelConstants.ID_NUMBER_LABEL, -1, 20, 1);
            String str6 = this.idNumberRp;
            if (str6 != null && str6.trim().length() > 0) {
                this.idNumberAnswer = this.idNumberRp;
            }
            this.idNumberEditText.getEditText().addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.IdentitySelectionComponent.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    IdentitySelectionComponent identitySelectionComponent = IdentitySelectionComponent.this;
                    identitySelectionComponent.idNumberAnswer = identitySelectionComponent.idNumberEditText.getEditText().getText().toString();
                    IdentitySelectionComponent.this.validateIdNumber();
                }
            });
        }
        linearLayout.addView(this.idNumberEditText);
        addView(linearLayout);
    }

    /* renamed from: com.argusoft.sewa.android.app.component.IdentitySelectionComponent$2, reason: invalid class name */
    class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        AnonymousClass2() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (IdentitySelectionComponent.this.idNumberEditText != null && IdentitySelectionComponent.this.isListenerEnabled) {
                IdentitySelectionComponent.this.idNumberEditText.getEditText().getText().clear();
            }
            IdentitySelectionComponent.this.isListenerEnabled = true;
            IdentitySelectionComponent identitySelectionComponent = IdentitySelectionComponent.this;
            identitySelectionComponent.idTypeAnswer = identitySelectionComponent.idTypeComponent.getAnswerString();
            if (IdentitySelectionComponent.this.idTypeAnswer == null || !IdentitySelectionComponent.this.idTypeAnswer.equalsIgnoreCase(FhsConstants.AADHAR)) {
                if (IdentitySelectionComponent.this.aadhaarConsentCheckbox != null && IdentitySelectionComponent.this.aadhaarConsentCheckbox.getParent() != null) {
                    IdentitySelectionComponent.this.mainLayoutRef.removeView(IdentitySelectionComponent.this.aadhaarConsentCheckbox);
                }
            } else {
                if (IdentitySelectionComponent.this.aadhaarConsentCheckbox == null) {
                    IdentityCheckBoxListener identityCheckBoxListener = new IdentityCheckBoxListener(IdentitySelectionComponent.this.queFormBean, IdentitySelectionComponent.this.idNumberEditText, new Runnable() { // from class: com.argusoft.sewa.android.app.component.IdentitySelectionComponent$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m558x6b15459e();
                        }
                    });
                    IdentitySelectionComponent identitySelectionComponent2 = IdentitySelectionComponent.this;
                    identitySelectionComponent2.aadhaarConsentCheckbox = MyStaticComponents.getCheckBox(identitySelectionComponent2.context, "Check the box to confirm that you have taken the consent of the beneficiary for collecting Aadhaar Number", 99887, false);
                    IdentitySelectionComponent.this.aadhaarConsentCheckbox.setOnCheckedChangeListener(identityCheckBoxListener);
                    IdentitySelectionComponent.this.aadhaarConsentCheckbox.setTextColor(ContextCompat.getColorStateList(IdentitySelectionComponent.this.context, R.color.checkbox_selector));
                }
                if (IdentitySelectionComponent.this.aadhaarConsentCheckbox.getParent() == null) {
                    IdentitySelectionComponent.this.mainLayoutRef.addView(IdentitySelectionComponent.this.aadhaarConsentCheckbox);
                }
            }
            IdentitySelectionComponent.this.setAnswer();
        }

        /* renamed from: lambda$onItemSelected$0$com-argusoft-sewa-android-app-component-IdentitySelectionComponent$2, reason: not valid java name */
        /* synthetic */ void m558x6b15459e() {
            IdentitySelectionComponent.this.setAnswer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateIdNumber() {
        String str = this.idTypeAnswer;
        if (str != null && !str.equalsIgnoreCase("-1") && !IdentityCardUtil.validateIdNumber(this.idTypeAnswer, this.idNumberAnswer)) {
            this.idNumberAnswer = null;
        }
        setAnswer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnswer() {
        String str;
        CheckBox checkBox;
        String str2 = this.isQuestionMandatory;
        if (str2 != null && str2.equalsIgnoreCase("T")) {
            String str3 = this.relationWithIdHolderAnswer;
            if (str3 == null || str3.equalsIgnoreCase("-1")) {
                this.queFormBean.setAnswer(null);
                this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.ID_HOLDER_RELATION_LABEL));
                return;
            }
            String str4 = this.idTypeAnswer;
            if (str4 == null || str4.equalsIgnoreCase("-1")) {
                this.queFormBean.setAnswer(null);
                this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.ID_TYPE_LABEL));
                return;
            }
            String str5 = this.idNumberAnswer;
            if (str5 == null || str5.trim().isEmpty()) {
                this.queFormBean.setAnswer(null);
                this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_VALID_ID_NUMBER));
                return;
            }
            if (this.idTypeAnswer.equalsIgnoreCase(FhsConstants.AADHAR) && ((checkBox = this.aadhaarConsentCheckbox) == null || !checkBox.isChecked())) {
                this.queFormBean.setAnswer(null);
                this.queFormBean.setMandatorymessage("Please confirm Aadhaar consent");
                return;
            }
            if (!this.relationWithIdHolderAnswer.equalsIgnoreCase("-1") && !this.idTypeAnswer.equalsIgnoreCase("-1")) {
                this.queFormBean.setAnswer(this.relationWithIdHolderAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idTypeAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idNumberAnswer);
                return;
            }
            this.queFormBean.setAnswer(null);
            return;
        }
        String str6 = this.idTypeAnswer;
        if ((str6 == null || str6.equalsIgnoreCase("-1")) && this.idNumberAnswer == null && this.relationWithIdHolderAnswer != null) {
            this.queFormBean.setAnswer(this.relationWithIdHolderAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idTypeAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idNumberAnswer);
            return;
        }
        String str7 = this.idNumberAnswer;
        if ((str7 == null || str7.trim().isEmpty()) && (str = this.idTypeAnswer) != null && !str.equalsIgnoreCase("-1")) {
            this.queFormBean.setIsmandatory("T");
            this.queFormBean.setMandatorymessage(UtilBean.getMyLabel(LabelConstants.PLEASE_ENTER_VALID_ID_NUMBER));
            return;
        }
        String str8 = this.idTypeAnswer;
        if ((str8 == null || str8.equalsIgnoreCase("-1")) && this.idNumberAnswer != null) {
            this.queFormBean.setIsmandatory("T");
            this.queFormBean.setMandatorymessage(UtilBean.getMyLabel("Please enter valid ID type"));
            return;
        }
        String str9 = this.idTypeAnswer;
        if ((str9 != null || !str9.equalsIgnoreCase("-1")) && this.idNumberAnswer != null) {
            this.queFormBean.setAnswer(this.relationWithIdHolderAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idTypeAnswer + GlobalTypes.MORBIDITY_SEPARATOR_HASH + this.idNumberAnswer);
            return;
        }
        this.queFormBean.setIsmandatory("F");
        this.queFormBean.setAnswer(null);
    }
}
