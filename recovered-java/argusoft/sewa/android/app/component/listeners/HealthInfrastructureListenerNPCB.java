package com.argusoft.sewa.android.app.component.listeners;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.component.MyProcessDialog;
import com.argusoft.sewa.android.app.component.MyStaticComponents;
import com.argusoft.sewa.android.app.constants.FormulaConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.constants.RelatedPropertyNameConstants;
import com.argusoft.sewa.android.app.databean.ValidationTagBean;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.model.HealthInfrastructureBean;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HealthInfrastructureListenerNPCB implements AdapterView.OnItemSelectedListener {
    private AutoCompleteTextView autoCompleteTextView;
    private Context context;
    private String formType;
    private Map<Long, String> infraTypeMap;
    private List<HealthInfrastructureBean> infrastructureBeans = new ArrayList();
    private LinearLayout linearLayout;
    private MaterialTextView noInfraTextView;
    private MyProcessDialog processDialog;
    private QueFormBean queFormBean;
    private MaterialTextView searchInfraTextView;
    private Long selectedInfraTypeId;
    private Spinner typeSpinner;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public HealthInfrastructureListenerNPCB(Context context, QueFormBean queFormBean, LinearLayout linearLayout, Spinner spinner, Map<Long, String> map, String str) {
        this.context = context;
        this.queFormBean = queFormBean;
        this.linearLayout = linearLayout;
        this.typeSpinner = spinner;
        this.infraTypeMap = map;
        this.formType = str;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        String strCheckValidation = null;
        this.queFormBean.setAnswer(null);
        this.linearLayout.removeAllViews();
        this.linearLayout.addView(MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_HEALTH_INFRASTRUCTURE_TYPE));
        this.linearLayout.addView(this.typeSpinner);
        if (this.typeSpinner.getSelectedItem().equals(UtilBean.getMyLabel("-Select-")) || this.typeSpinner.getSelectedItem().equals("-Select-")) {
            return;
        }
        Iterator<Map.Entry<Long, String>> it = this.infraTypeMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<Long, String> next = it.next();
            if (next.getValue().equals(this.typeSpinner.getSelectedItem())) {
                this.selectedInfraTypeId = next.getKey();
                Log.i(getClass().getSimpleName(), "Selected Health Infrastructure Type : " + next.getKey() + " : : " + next.getValue());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE, next.getValue());
                SharedStructureData.relatedPropertyHashTable.put(RelatedPropertyNameConstants.HEALTH_INFRASTRUCTURE_TYPE_ID, next.getKey().toString());
                break;
            }
        }
        if (this.queFormBean.getValidations() != null) {
            for (ValidationTagBean validationTagBean : this.queFormBean.getValidations()) {
                if (validationTagBean.getMethod().contains(GlobalTypes.KEY_VALUE_SEPARATOR)) {
                    if (validationTagBean.getMethod().split(GlobalTypes.KEY_VALUE_SEPARATOR)[0].equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HEALTH_INFRA)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(validationTagBean);
                        strCheckValidation = DynamicUtils.checkValidation(this.selectedInfraTypeId.toString(), 0, arrayList);
                    }
                } else if (validationTagBean.getMethod().equalsIgnoreCase(FormulaConstants.VALIDATION_CHECK_SERVICE_DATE_FOR_HEALTH_INFRA)) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(validationTagBean);
                    strCheckValidation = DynamicUtils.checkValidation(this.selectedInfraTypeId.toString(), 0, arrayList2);
                }
            }
        }
        if (strCheckValidation != null) {
            SewaUtil.generateToast(SharedStructureData.context, strCheckValidation);
        } else {
            setSearchTypeView();
        }
    }

    private void setSearchTypeView() {
        this.queFormBean.setAnswer(null);
        if (this.searchInfraTextView == null) {
            this.searchInfraTextView = MyStaticComponents.generateQuestionView(null, null, this.context, LabelConstants.SELECT_HEALTH_INFRASTRUCTURE);
        }
        MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.MSG_PROCESSING);
        this.processDialog = myProcessDialog;
        myProcessDialog.show();
        this.infrastructureBeans = SharedStructureData.healthInfrastructureService.retrieveHealthInfraBySearch("", this.selectedInfraTypeId, this.queFormBean.getDatamap());
        this.processDialog.dismiss();
        if (this.infrastructureBeans.isEmpty()) {
            MaterialTextView materialTextViewGenerateInstructionView = MyStaticComponents.generateInstructionView(this.context, LabelConstants.NO_HEALTH_INFRASTRUCTURE_AVAILABLE);
            this.noInfraTextView = materialTextViewGenerateInstructionView;
            this.linearLayout.addView(materialTextViewGenerateInstructionView);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<HealthInfrastructureBean> it = this.infrastructureBeans.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        this.autoCompleteTextView = new AutoCompleteTextView(this.context);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.context, R.layout.spinner_item_dropdown, arrayList);
        this.autoCompleteTextView.setThreshold(1);
        this.autoCompleteTextView.setAdapter(arrayAdapter);
        this.autoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String str = (String) adapterView.getItemAtPosition(i);
                for (HealthInfrastructureBean healthInfrastructureBean : HealthInfrastructureListenerNPCB.this.infrastructureBeans) {
                    if (healthInfrastructureBean.getName().equals(str)) {
                        HealthInfrastructureListenerNPCB.this.queFormBean.setAnswer(healthInfrastructureBean.getActualId());
                        SharedStructureData.selectedHealthInfra = healthInfrastructureBean;
                        Log.i(getClass().getSimpleName(), "Selected Health Infrastructure : " + healthInfrastructureBean.getActualId() + " : : " + healthInfrastructureBean.getName());
                        return;
                    }
                }
            }
        });
        this.autoCompleteTextView.addTextChangedListener(new TextWatcher() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                HealthInfrastructureListenerNPCB.this.queFormBean.setAnswer(null);
            }
        });
        this.autoCompleteTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HealthInfrastructureListenerNPCB.this.autoCompleteTextView.showDropDown();
            }
        });
        this.autoCompleteTextView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    HealthInfrastructureListenerNPCB.this.autoCompleteTextView.showDropDown();
                }
            }
        });
        this.autoCompleteTextView.setHint(UtilBean.getMyLabel(LabelConstants.SEARCH_HEALTH_INFRASTRUCTURE));
        this.autoCompleteTextView.setBackground(null);
        this.autoCompleteTextView.setTextSize(16.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 20, 0, 20);
        this.autoCompleteTextView.setLayoutParams(layoutParams);
        TextInputLayout textInputLayout = new TextInputLayout(this.context);
        textInputLayout.setEndIconMode(2);
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.listeners.HealthInfrastructureListenerNPCB.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HealthInfrastructureListenerNPCB.this.autoCompleteTextView.setText((CharSequence) null);
                HealthInfrastructureListenerNPCB.this.autoCompleteTextView.requestFocus();
                HealthInfrastructureListenerNPCB.this.autoCompleteTextView.showDropDown();
            }
        });
        textInputLayout.setHintEnabled(false);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 10, 0, 50);
        textInputLayout.setLayoutParams(layoutParams2);
        textInputLayout.addView(this.autoCompleteTextView);
        this.linearLayout.addView(this.searchInfraTextView);
        this.linearLayout.addView(textInputLayout);
    }
}
